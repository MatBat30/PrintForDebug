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
///    <PrintForDebug.printMap debugValues={{ 'clé': 'valeur', 'autreClé': 123 }} />
///
/// 2. printString: Permet d'imprimer une chaîne de caractères simple.
///    C'est un wrapper autour du print standard pour une intégration cohérente
///    dans la classe PrintForDebug.
///
///    Utilisation:
///    <PrintForDebug.printString debugPhrase='Message à imprimer' />
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString






import React from 'react';
import { View, Text } from 'react-native';

class PrintForDebug {
    static printMap(debugValues) {
        for (const [key, value] of Object.entries(debugValues)) {
            console.log(`${key} : ${value}`);
        }
    }

    static printString(debugPhrases) {
        console.log(debugPhrases);
    }
}

// Example usage in a React Native component
const DebugComponent = () => {
    PrintForDebug.printMap({'key': 'value', 'anotherKey': 123});
    PrintForDebug.printString('Message to print');

    return (
        <View>
            <Text>Check the console for debug output.</Text>
        </View>
    );
}

export default DebugComponent;
