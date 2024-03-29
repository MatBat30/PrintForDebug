/// Classe PrintForDebug
///
/// Cette classe est utilisée pour faciliter le débogage en imprimant des informations
/// dans la console. Elle offre deux fonctions statiques :
///
/// 1. printMap: Permet d'imprimer le contenu d'un Map. Chaque paire clé-valeur
///    du Map est imprimée dans un format lisible, aidant à comprendre rapidement
///    les valeurs que contient le Map.
///
///    Utilisation:
///    - PrintForDebug::printMap({{"clé", "valeur"}, {"autreClé", "123"}});
///
/// 2. printString: Permet d'imprimer une chaîne de caractères simple.
///    C'est un wrapper autour du print standard pour une intégration cohérente
///    dans la classe PrintForDebug.
///
///    Utilisation:
///    - PrintForDebug::printString("Message à imprimer");
///
/// 3. printListFor: Permet d'imprimer les éléments d'une liste jusqu'à un indice spécifié.
///    Chaque élément est imprimé avec son indice dans la liste.
///
///    Utilisation:
///    - PrintForDebug::printListFor({"1", "2", "3", "a", "b"}, 2);
///
/// 4. printList: Permet d'imprimer une liste entière en une seule fois.
///    La liste est imprimée dans son format de liste complet.
///
///    Utilisation:
///    - PrintForDebug::printList({"1", "2", "3", "a", "b"});
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString

#include <iostream>
#include <map>
#include <vector>
#include <string>

class PrintForDebug {
public:
    static void printMap(const std::map<std::string, std::string>& debugValues) {
        for (const auto& pair : debugValues) {
            std::cout << pair.first << " : " << pair.second << std::endl;
        }
    }

    static void printString(const std::string& debugPhrases) {
        std::cout << debugPhrases << std::endl;
    }

    static void printListFor(const std::vector<std::string>& debugList, int index) {
        for (int i = 0; i <= index; ++i) {
            std::cout << i << " : " << debugList[i] << std::endl;
        }
    }

    static void printList(const std::vector<std::string>& debugList) {
        for (const auto& element : debugList) {
            std::cout << element << std::endl;
        }
    }
};
