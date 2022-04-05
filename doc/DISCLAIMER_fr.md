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
