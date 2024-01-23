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
///    PrintForDebug::printMap({{"clé", "valeur"}, {"autreClé", "123"}});
///
/// 2. printString: Permet d'imprimer une chaîne de caractères simple.
///    C'est un wrapper autour du print standard pour une intégration cohérente
///    dans la classe PrintForDebug.
///
///    Utilisation:
///    PrintForDebug::printString("Message à imprimer");
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString


#include <iostream>
#include <map>
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
};
