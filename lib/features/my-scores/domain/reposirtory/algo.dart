
// @lazySingleton
class MyAlgorithm {
  Future<Map<String, dynamic>> gnacOrientationAlgo({
    required Map<String, dynamic> userData,
    required Map<String, dynamic> data,
  }) async {
    Map<String, dynamic> myData = data[userData["Série"]];
    // For each University
    myData.forEach((key, university) {
      // print("key: " + key);
      // For each Institution
      university.forEach((key, institution) {
        // print("key: " + key);
        // For each Sector
        institution.forEach((key, sector) {
          // print("key: " + key);
          int n = 0;
          double sum = 0;
          // For each UE
          sector["Matières"].forEach((ue) {
            // print("Matière: " + ue);
            sum += userData["Matières"][ue]["Note"] *
                userData["Matières"][ue]["Coefficient"];
            n += userData["Matières"][ue]["Coefficient"] as int;
          });
          sector["Moyenne"] = (sum / n).toStringAsFixed(2);
        });
      });
    });
    return myData;
  }
}
