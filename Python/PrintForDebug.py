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
#    - PrintForDebug.print_map({'clé': 'valeur', 'autreClé': 123})
#
# 2. printString : Permet d'imprimer une chaîne de caractères simple.
#    C'est un enrobage (wrapper) autour de la fonction print standard pour une intégration cohérente
#    dans la classe PrintForDebug.
#
#    Utilisation :
#    - PrintForDebug.print_string('Message à imprimer')
#
# 3. printListFor: Permet d'imprimer les éléments d'une liste jusqu'à un indice spécifié.
#    Chaque élément est imprimé avec son indice dans la liste.
#
#    Utilisation:
#    - PrintForDebug.print_list_for([1, 2, 3, 'a', 'b'], 2)
#
# 4. printList: Permet d'imprimer une liste entière en une seule fois.
#    La liste est imprimée dans son format de liste complet.
#
#     Utilisation:
#    - PrintForDebug.print_list([1, 2, 3, 'a', 'b'])
#
# * Tips:
#    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
#    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString
#    et utiliser la fonction de recherche de l'IDE pour trouver tous les appels
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

    @staticmethod
    def print_list_for(debug_list, index):
        for i in range(index + 1):
            print(f"{i} : {debug_list[i]}")

    @staticmethod
    def print_list(debug_list):
        print(debug_list)
