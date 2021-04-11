# Strut pour YunoHost

[![Niveau d'integration](https://dash.yunohost.org/integration/strut.svg)](https://dash.yunohost.org/appci/app/strut)  
[![Installer Strut avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=strut)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Strut rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter*

## Vue d'ensemble
Strut est un éditeur WEB de présentations fonctionnant en HTML/JS. Tout se passe en local. Il fonctinne grâce à [impress.js](http://bartaz.github.com/impress.js/#/bored).

**Version incluse :** 20171224-1

## Captures d'écran

![](https://f.cloud.github.com/assets/1009003/515405/f1003c6a-be74-11e2-84b9-14776c652afb.png)

## Démo

* [Démo officielle](http://strut.io/editor/index.html)

## Configuration

S'il y a une configuration possible, sentez vous libre d'y contribuer.

## Documentation

 * S'il y a une documentation spéficique, sentez vous libre d'y contribuer.

## Caractéristiques spécifiques à YunoHost

#### Support multi-utilisateurs

#### Architectures supportées

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/strut.svg)](https://ci-apps.yunohost.org/ci/apps/strut/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/strut.svg)](https://ci-apps-arm.yunohost.org/ci/apps/strut/)

## Limitations

Pas d'import/export possible depuis ou vers des fichiers OpenDocument ou pptx.

## Information supplémentaires

* Ce package ne contient pas les sources exactes de [la version originale de Strut](https://github.com/tantaman/Strut)

Strut, à l'origine, inclut Google Analytics et est lié à Imgur pour téléverser des images. Ces pisteurs ou services externes ne sont pas acceptés par l'équipe de YunoHost.
Ils sont donc supprimés par rapport aux sources. 
Une pull request pour les supprimer de leur côté a été validée et mergée mais finalement supprimée sans explication. De plus, les développeurs de Strut ne fournissent pas le logiciel compilé.
Pour compiler le logiciel, cela nécessite grunt, ce qui ne peut pas être supprimé facilement.
Pour éviter de devoir générer cette application HTML/JS, ce package créé une version compilée de Strut avec le patch qui supprime les dépendances à Google Analytics et Imgur.
Voici la version compilée https://github.com/tantaman/Strut/commits/6761b141ee7aa622916e2d23cced84ee95618cce. Ce n'est pas la version la plus récente.

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/strut_ynh/issues
 * Site web de Strut : http://strut.io
 * Dépôt de Strut : https://github.com/MohannadNaj/Strut
 * Site web de YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/strut_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/strut_ynh/tree/testing --debug
ou
sudo yunohost app upgrade strut -u https://github.com/YunoHost-Apps/strut_ynh/tree/testing --debug
```
