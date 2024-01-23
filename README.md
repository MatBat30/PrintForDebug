# Classe PrintForDebug

Cette classe est utilisée pour faciliter le débogage en imprimant des informations dans la console. Elle offre quatre fonctions statiques :

## 1. `printMap`
Permet d'imprimer le contenu d'un Map. Chaque paire clé-valeur du Map est imprimée dans un format lisible, aidant à comprendre rapidement les valeurs que contient le Map.

### Utilisation
- Pour Dart: `PrintForDebug.printMap({'clé': 'valeur', 'autreClé': 123});`
- Pour Python: `PrintForDebug.print_map({'clé': 'valeur', 'autreClé': 123})`
- Pour C++: `PrintForDebug::printMap({{"clé", "valeur"}, {"autreClé", "123"}});`
- Pour JavaScript: `PrintForDebug.printMap({ 'clé': 'valeur', 'autreClé': 123 });`
- Pour React Native:`<PrintMap debugValues={{ 'clé': 'valeur', 'autreClé': 123 }} />`

## 2. `printString`
Permet d'imprimer une chaîne de caractères simple. C'est un wrapper autour du print standard pour une intégration cohérente dans la classe PrintForDebug.

### Utilisation
- Pour Dart: `PrintForDebug.printString('Message à imprimer');`
- Pour Python: `PrintForDebug.print_string('Message à imprimer')`
- Pour C++: `PrintForDebug::printString("Message à imprimer");`
- Pour JavaScript:`PrintForDebug.printString('Message à imprimer');`
- Pour React Native: `<PrintString debugPhrase='Message à imprimer' />`

## 3. `printListFor`
Permet d'imprimer les éléments d'une liste jusqu'à un indice spécifié. Chaque élément est imprimé avec son indice dans la liste.

### Utilisation
- Pour Dart: `PrintForDebug.printListFor([1, 2, 3, 'a', 'b'], 2);`
- Pour Python: `PrintForDebug.print_list_for([1, 2, 3, 'a', 'b'], 2)`
- Pour C++: `PrintForDebug::printListFor({"1", "2", "3", "a", "b"}, 2);`
- Pour JavaScript: `PrintForDebug.printListFor([1, 2, 3, 'a', 'b'], 2);`
- Pour React Native: `<PrintListFor debugList={[1, 2, 3, 'a', 'b']} index={2} />`

## 4. `printList`
Permet d'imprimer une liste entière en une seule fois. La liste est imprimée dans son format de liste complet.

### Utilisation
- Pour Dart: `PrintForDebug.printList([1, 2, 3, 'a', 'b']);`
- Pour Python: `PrintForDebug.print_list([1, 2, 3, 'a', 'b'])`
- Pour C++: `PrintForDebug::printList({"1", "2", "3", "a", "b"});`
- Pour JavaScript: `PrintForDebug.printList([1, 2, 3, 'a', 'b']);`
- Pour React Native: `<PrintList debugList={[1, 2, 3, 'a', 'b']} />`

## Conseils
Pour faciliter le retrait des prints lors du déploiement, ajouter : `// TODO: supprimer le print` avant chaque appel à `PrintForDebug.printMap`, `PrintForDebug.printString`, `PrintForDebug.printListFor`, ou `PrintForDebug.printList`.
