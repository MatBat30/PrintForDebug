# Classe PrintForDebug
#
# Cette classe est utilisée pour faciliter le débogage en imprimant des informations
# dans la console. Elle offre deux méthodes statiques :
#
# 1. printMap : Permet d'imprimer le contenu d'un dictionnaire (Map). Chaque paire clé-valeur
#    du dictionnaire est imprimée dans un format lisible, aidant à comprendre rapidement
#    les valeurs qu'il contient.
#
#    Utilisation :
#   PrintForDebug.print_map({'clé': 'valeur', 'autreClé': 123})
#
# 2. printString : Permet d'imprimer une chaîne de caractères simple.
#    C'est un enrobage (wrapper) autour de la fonction print standard pour une intégration cohérente
#    dans la classe PrintForDebug.
#
#    Utilisation :
#    PrintForDebug.print_string('Message à imprimer')
#
# *  Astuce :
#    Pour faciliter la suppression des impressions (prints) lors du déploiement, ajoutez : # TODO: supprimer l'impression
#    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString


class PrintForDebug:
    @staticmethod
    def print_map(debug_values):
        for key, value in debug_values.items():
            print(f"{key} : {value}")

    @staticmethod
    def print_string(debug_phrases):
        print(debug_phrases)
