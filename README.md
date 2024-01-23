# Classe PrintForDebug

Cette classe est utilisée pour faciliter le débogage en imprimant des informations dans la console. Elle offre deux fonctions statiques :

## 1. `printMap`
Permet d'imprimer le contenu d'un Map. Chaque paire clé-valeur du Map est imprimée dans un format lisible, aidant à comprendre rapidement les valeurs que contient le Map.

### Utilisation
- Pour Dart: `PrintForDebug.printMap({'clé': 'valeur', 'autreClé': 123});`
- Pour Python: `PrintForDebug.print_map({'clé': 'valeur', 'autreClé': 123})`
- Pour C++: `PrintForDebug::printMap({{"clé", "valeur"}, {"autreClé", "123"}});`
- Pour JavaScript/React Native: Utiliser dans le contexte de composants React (Voir exemple ci-dessous).

## 2. `printString`
Permet d'imprimer une chaîne de caractères simple. C'est un wrapper autour du print standard pour une intégration cohérente dans la classe PrintForDebug.

### Utilisation
- Pour Dart: `PrintForDebug.printString('Message à imprimer');`
- Pour Python: `PrintForDebug.print_string('Message à imprimer')`
- Pour C++: `PrintForDebug::printString("Message à imprimer");`
- Pour JavaScript/React Native: Utiliser dans le contexte de composants React (Voir exemple ci-dessous).

## Conseils
Pour faciliter le retrait des prints lors du déploiement, ajouter : `// TODO: supprimer le print` avant chaque appel à `PrintForDebug.printMap` ou `PrintForDebug.printString`.

## Exemple pour JavaScript/React Native
```jsx
import React, { useEffect } from 'react';
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

const DebugComponent = () => {
    useEffect(() => {
        PrintForDebug.printMap({ 'clé': 'valeur', 'autreClé': 123 });
        PrintForDebug.printString('Message à imprimer');
    }, []);

    return (
        <View>
            <Text>Check the console for debug output.</Text>
        </View>
    );
}

export default DebugComponent;
