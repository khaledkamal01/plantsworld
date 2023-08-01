class RatingProduct {
  final String image;
  final String name;
  final int rating;
  final String date;
  final String comment;

  RatingProduct(
      {required this.image, required this.name,
        required this.rating, required this.date,required this.comment});
}
class ImageInRating{
  final String image;
  ImageInRating({required this.image});
}