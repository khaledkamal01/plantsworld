class DiseaseDetails {
  final String image;
  final String name;
  final String description;
  List<Status> status;
  List<Treatment> treatment;

  DiseaseDetails(
      {required this.image,
      required this.description,
      required this.status,
      required this.treatment,required this .name});
}

class Status {
  final String status;
  final List images;

  Status({required this.status, required this.images});
}

class Treatment {
  final String image;
  final String name;
  final double price;

  Treatment({required this.image, required this.name, required this.price});
}
