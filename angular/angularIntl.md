1. ajouter "i18n" a la fin de chaque balise dont on veux traduire
2. ajout le fichier de localize avec la commande "ng add @angular/localize"
3. generer le fichier xmlf et le placer dans src/locale ave la commande "ng xi18n --output-path src\locale"
4. creer un fichier dans le meme repertoire avec l'extention de la languer + xmlf "exemple: messages.en.xlf"
5. copier les contenu qui se trouve dans le premier fichier generer (src/locale/messages.xlf) et le coller dans le fichier creer (src/locale/messages.en.xlf)
6. ajouter une balise pour la traduire. exemple dans le fichier messages.en.xmlf, en essous de la balise source (<source>Bonjour</source>) rajouter une nouvelle balise ( <target>Hello</target>) et le faire sur chaque mot generé
7. ensuite, aller dans le fichier angular.json et ajouter le code ci apres, apres "production"
"production-en": {
              "fileReplacements": [
                {
                  "replace": "src/environments/environment.ts",
                  "with": "src/environments/environment.prod.ts"
                }
              ],
              "optimization": true,
              "outputHashing": "all",
              "sourceMap": false,
              "extractCss": true,
              "namedChunks": false,
              "aot": true,
              "extractLicenses": true,
              "vendorChunk": false,
              "buildOptimizer": true,
              "outputPath": "dist/",
              "i18nFile": "src/locale/messages.en.xlf",
              "i18nFormat": "xlf",
              "i18nLocale": "hi",
              "i18nMissingTranslation": "error"
            },
            "en": {
              "aot": true,
              "outputPath": "dist/",
              "i18nFile": "src/locale/messages.en.xlf",
              "i18nFormat": "xlf",
              "i18nLocale": "en",
              "i18nMissingTranslation": "error"
           
               
            }

8. ensuite ajouter ce code en dessous de serve, configuration apres la proprieté production "en":{
              "browserTarget": "avenir:build:en"
            }
9. puis ajouter ce code apres serve  "extract-i18n": {
          "builder": "@angular-devkit/build-angular:extract-i18n",
          "options": {
            "browserTarget": "avenir:build"
          }
        },

10. finalement executer ng serve --configuration=en

finish!!!!


1. An unhandled exception occurred: NGCC failed.
R/ rm /home/ezechiel/Documents/ok/avenir/node_modules/@angular/compiler-cli/ngcc/__ngcc_lock_file__ 


