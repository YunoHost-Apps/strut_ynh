#!/bin/bash

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

# Read the value of a key in a ynh manifest file
#
# usage: ynh_read_manifest manifest key
# | arg: -m, --manifest= - Path of the manifest to read
# | arg: -k, --key= - Name of the key to find
ynh_read_manifest () {
	# Declare an array to define the options of this helper.
        declare -Ar args_array=( [m]=manifest= [k]=manifest_key= )
        local manifest
        local manifest_key
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	if [ ! -e "$manifest" ]; then
		# If the manifest isn't found, try the common place for backup and restore script.
		manifest="../settings/manifest.json"
	fi

	jq ".$manifest_key" "$manifest" --raw-output
}

# Read the upstream version from the manifest
# The version number in the manifest is defined by <upstreamversion>~ynh<packageversion>
# For example : 4.3-2~ynh3
# This include the number before ~ynh
# In the last example it return 4.3-2
#
# usage: ynh_app_upstream_version [-m manifest]
# | arg: -m, --manifest= - Path of the manifest to read
ynh_app_upstream_version () {
    declare -Ar args_array=( [m]=manifest= )
    local manifest
    # Manage arguments with getopts
    ynh_handle_getopts_args "$@"

    manifest="${manifest:-../manifest.json}"
    version_key=$(ynh_read_manifest --manifest="$manifest" --manifest_key="version")
    echo "${version_key/~ynh*/}"
}

# Checks the app version to upgrade with the existing app version and returns:
# - UPGRADE_APP if the upstream app version has changed
# - UPGRADE_PACKAGE if only the YunoHost package has changed
#
## It stops the current script without error if the package is up-to-date
#
# This helper should be used to avoid an upgrade of an app, or the upstream part
# of it, when it's not needed
#
# To force an upgrade, even if the package is up to date,
# you have to set the variable YNH_FORCE_UPGRADE before.
# example: sudo YNH_FORCE_UPGRADE=1 yunohost app upgrade MyApp
#
# usage: ynh_check_app_version_changed
ynh_check_app_version_changed () {
  local force_upgrade=${YNH_FORCE_UPGRADE:-0}
  local package_check=${PACKAGE_CHECK_EXEC:-0}

  # By default, upstream app version has changed
  local return_value="UPGRADE_APP"

  local current_version=$(ynh_read_manifest --manifest="/etc/yunohost/apps/$YNH_APP_INSTANCE_NAME/manifest.json" --manifest_key="version" || echo 1.0)
  local current_upstream_version="$(ynh_app_upstream_version --manifest="/etc/yunohost/apps/$YNH_APP_INSTANCE_NAME/manifest.json")"
  local update_version=$(ynh_read_manifest --manifest="../manifest.json" --manifest_key="version" || echo 1.0)
  local update_upstream_version="$(ynh_app_upstream_version)"

  if [ "$current_version" == "$update_version" ] ; then
      # Complete versions are the same
      if [ "$force_upgrade" != "0" ]
      then
        echo "Upgrade forced by YNH_FORCE_UPGRADE." >&2
        unset YNH_FORCE_UPGRADE
      elif [ "$package_check" != "0" ]
      then
        echo "Upgrade forced for package check." >&2
      else
        ynh_die "Up-to-date, nothing to do" 0
      fi
  elif [ "$current_upstream_version" == "$update_upstream_version" ] ; then
    # Upstream versions are the same, only YunoHost package versions differ
    return_value="UPGRADE_PACKAGE"
  fi
  echo $return_value
}
