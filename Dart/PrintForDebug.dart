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
/// 5. printError: Permet d'imprimer un message d'erreur dans la console.
///   Le message est imprimé en rouge pour le distinguer des autres messages.
///
///    Utilisation:
///   - PrintForDebug.printError('No file selected.');
///
/// 6. printWarning: Permet d'imprimer un message d'avertissement dans la console.
///   Le message est imprimé en jaune pour le distinguer des autres messages.
///
///   Utilisation:
///   - PrintForDebug.printError('Low disk space.');
///
/// 7. printInfo: Permet d'imprimer un message d'information dans la console.
///    Le message est imprimé en bleu pour le distinguer des autres messages.
///
///    Utilisation:
///    - PrintForDebug.printInfo('User logged in.');
///
/// 8. printSuccess: Permet d'imprimer un message de succès dans la console.
///    Le message est imprimé en vert pour le distinguer des autres messages.
///
///    Utilisation:
///    - PrintForDebug.printSuccess('operation success.');
///
/// *  Tips:
///    Pour faciliter le retrait des prints lors du deployments ajouter : // TODO: supprimer le print
///    avant chaque appel à PrintForDebug.printMap ou PrintForDebug.printString
///    et utiliser la fonction de recherche de l'IDE pour trouver tous les appels
part of collecte_chimie;

class PrintForDebug {
  static void printMap(Map<String, dynamic> debugValues) {
    if (kDebugMode) {
      debugValues.forEach((key, value) {
        print('$key : $value');
      });
    }
  }

  static void printString(String debugPhrases) {
    if (kDebugMode) {
      print(debugPhrases);
    }
  }

  static void printListFor(List<dynamic> debugList, int index) {
    if (kDebugMode) {
      for (var i = 0; i <= index; i++) {
        print('$index : ${debugList[i]}');
      }
    }
  }

  static void printList(List<dynamic> debugList) {
    if (kDebugMode) {
      print(debugList);
    }
  }

  static void printError(String error) {
    final String ANSI_RED = "\u001B[31m";
    final String ANSI_RESET = "\u001B[0m";
    if (kDebugMode) {
      print(ANSI_RED + "ERROR: " + error + ANSI_RESET);
    }
  }

  static void printWarning(String warning) {
    final String ANSI_YELLOW = "\u001B[33m";
    final String ANSI_RESET = "\u001B[0m";
    if (kDebugMode) {
      print(ANSI_YELLOW + "WARNING: " + warning + ANSI_RESET);
    }
  }

  static void printInfo(String info) {
    final String ANSI_BLUE = "\u001B[34m";
    final String ANSI_RESET = "\u001B[0m";
    if (kDebugMode) {
      print(ANSI_BLUE + "INFO: " + info + ANSI_RESET);
    }
  }

  static void printSuccess(String success) {
    final String ANSI_GREEN = "\u001B[32m";
    final String ANSI_RESET = "\u001B[0m";
    if (kDebugMode) {
      print(ANSI_GREEN + "SUCCESS: " + success + ANSI_RESET);
    }
  }
}
