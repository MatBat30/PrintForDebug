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
///    - PrintForDebug.printMap({'clé': 'valeur', 'autreClé': 123});
///
/// 2. printString: Permet d'imprimer une chaîne de caractères simple.
///    C'est un wrapper autour du print standard pour une intégration cohérente
///    dans la classe PrintForDebug.
///
///    Utilisation:
///    - PrintForDebug.printString('Message à imprimer');
///
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
/// 5. printAlert: Permet d'imprimer une alerte en rouge.
///    La chaîne de caractères est imprimée en rouge.
///
///    Utilisation:
///    - PrintForDebug.printAlert('Alerte importante');
///
/// 6. printWarning: Permet d'imprimer un avertissement en jaune.
///    La chaîne de caractères est imprimée en jaune.
///
///    Utilisation:
///    - PrintForDebug.printWarning('Avertissement');
///
/// 7. printInfo: Permet d'imprimer une information en bleu.
///    La chaîne de caractères est imprimée en bleu.
///
///    Utilisation:
///    - PrintForDebug.printInfo('Information');
///
/// 8. printValidate: Permet d'imprimer une validation en vert.
///    La chaîne de caractères est imprimée en vert.
///
///    Utilisation:
///    - PrintForDebug.printValidate('Validation');
///
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString
///    et utiliser la fonction de recherche de l'IDE pour trouver tous les appels


class PrintForDebug {
if (kDebugMode)
    {
   static void printMap(Map<String, dynamic> debugValues) {
    debugValues.forEach((key, value) {
      print('$key : $value');
    });
    }
  }

  static void printString(String debugPhrases) {
    print(debugPhrases);
  }

  static void printListFor(List<dynamic> debugList, int index) {
  if (kDebugMode)
    {
    for (var i = 0; i <= index; i++) {
      print('$index : ${debugList[i]}');
    }
    }
  }

  static void printList(List<dynamic> debugList) {
      if (kDebugMode)
      {
      print(debugList);
      }
  }

    static void printAlert(String debugPhrases) {
    if (kDebugMode)
    {
    print("\033[31m" + 'Alerte : $debugPhrases' + "\033[0m")

    }
    }

    static void printWarning(String debugPhrases) {
    if (kDebugMode)
    {
    print("\033[33m" + 'Warning : $debugPhrases' + "\033[0m")

    }
    }

    static void printInfo(String debugPhrases) {
    if (kDebugMode)
    {
    print("\03[34m" + 'Info : $debugPhrases' + "\033[0m")

    }
    }

    static void printValidate(String debugPhrases) {
    if (kDebugMode)
    {
    print("\033[32m" + 'Validate : $debugPhrases' + "\033[0m")

    }
    }

}
