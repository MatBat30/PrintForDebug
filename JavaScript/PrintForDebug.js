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
///    - PrintForDebug.printMap({ 'clé': 'valeur', 'autreClé': 123 });
///
/// 2. printString: Permet d'imprimer une chaîne de caractères simple.
///    C'est un wrapper autour du print standard pour une intégration cohérente
///    dans la classe PrintForDebug.
///
///    Utilisation:
///    - PrintForDebug.printString('Message à imprimer');

/// 3. printListFor: Permet d'imprimer les éléments d'une liste jusqu'à un indice spécifié.
///    Chaque élément est imprimé avec son indice dans la liste.
///
///    Utilisation:
///    - PrintForDebug.printListFor([1, 2, 3, 'a', 'b'], 2);
///
/// 4. printList: Permet d'imprimer une liste entière en une seule fois.
///    La liste est imprimée dans son format de liste complet.
///
///    Utilisation:
///    - PrintForDebug.printList([1, 2, 3, 'a', 'b']);
///
/// 5. printAlert: Permet d'imprimer une alerte dans la console.
///    La phrase est imprimée en rouge.
///
///    Utilisation:
///    - PrintForDebug.printAlert('Alerte importante');
///
/// 6. printWarning: Permet d'imprimer un avertissement dans la console.
///    La phrase est imprimée en jaune.
///
///    Utilisation:
///    - PrintForDebug.printWarning('Avertissement');
///
/// 7. printInfo: Permet d'imprimer une information dans la console.
///    La phrase est imprimée en bleu.
///
///    Utilisation:
///    - PrintForDebug.printInfo('Information');
///
/// 8. printValidate: Permet d'imprimer une validation dans la console.
///    La phrase est imprimée en vert.
///
///    Utilisation:
///    - PrintForDebug.printValidate('Validation');
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString
///    et utiliser la fonction de recherche de l'IDE pour trouver tous les appels
///
/// *   Tips:
// ///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
// ///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString
// ///    et utiliser la fonction de recherche de l'IDE pour trouver tous les appels
class PrintForDebug {
    static printMap(debugValues) {
        for (const [key, value] of Object.entries(debugValues)) {
            console.log(`${key} : ${value}`);
        }
    }

    static printString(debugPhrases) {
        console.log(debugPhrases);
    }

    static printListFor(debugList, index) {
        for (let i = 0; i <= index; i++) {
            console.log(`${i} : ${debugList[i]}`);
        }
    }

    static printList(debugList) {
        console.log(debugList);
    }

    static printAlert(debugPhrases) {
        console.log("\x1b[31m", "Alert: ${debugPhrases}", "\x1b[0m")
    }

    static printWarning(WarningPhrases) {
        console.log("\x1b[33m", "Alert: ${debugPhrases}", "\x1b[0m")
    }

    static printInfo(InfoPhrases) {
        console.log("\x1b[34m", "Alert: ${debugPhrases}", "\x1b[0m")
    }

    static printValidate(ValidatePhrases) {
        console.log("\x1b[32m", "Alert: ${debugPhrases}", "\x1b[0m")
    }

}
