
class SpinnerDTO {

  final int id;
  final String title;

  SpinnerDTO(this.id, this.title);

  factory SpinnerDTO.fromJson(Map<String, dynamic> json) => SpinnerDTO( json["id"],json["name"]);
}