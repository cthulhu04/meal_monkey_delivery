class Menus {
  int id;
  String title;
  String food;
  String description;
  double price;
  double rating;
  String image;
  bool favorite;
  List sizeOfPortion;
  List<String> ingredient;
  String country;
  String category;
  bool promotions;

  Menus({
    this.id,
    this.title,
    this.food,
    this.description,
    this.price,
    this.rating,
    this.image,
    this.favorite = false,
    this.sizeOfPortion,
    this.ingredient,
    this.country,
    this.category,
    this.promotions,
  });

  static Menus fromJson(Map<String, dynamic> json) => Menus(
        title: json['title'],
      );
}
