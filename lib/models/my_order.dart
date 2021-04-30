class MyOrder {
  String title;
  String image;
  double rating;
  String category;
  String place;
  String address;
  List<ItemOrder> order;

  MyOrder({
    this.title,
    this.image,
    this.rating,
    this.category,
    this.place,
    this.address,
    this.order,
  });
}

class ItemOrder {
  String title;
  int count;
  double price;
  ItemOrder({this.title, this.count, this.price});
}

//TODO maakt een provider voor de (my order list) array
List<MyOrder> my_order_list = [
  MyOrder(
    title: 'King Burgers',
    image: 'image',
    rating: 4.2,
    category: 'fastfood',
    place: 'Western Food',
    address: 'No 03, 4th Lane, Newyork',
    order: [
      ItemOrder(title: 'beef burger', count: 1, price: 16.0),
      ItemOrder(title: 'kids burger', count: 1, price: 7.0),
      ItemOrder(title: 'big king burger', count: 1, price: 18.0),
      ItemOrder(title: 'frieds', count: 1, price: 6.0),
      ItemOrder(title: 'beef burger', count: 1, price: 16.0),
      ItemOrder(title: 'kids burger', count: 1, price: 7.0),
      ItemOrder(title: 'big king burger', count: 1, price: 18.0),
      ItemOrder(title: 'frieds', count: 1, price: 6.0),
      ItemOrder(title: 'beef burger', count: 1, price: 16.0),
      ItemOrder(title: 'kids burger', count: 1, price: 7.0),
      ItemOrder(title: 'big king burger', count: 1, price: 18.0),
      // ItemOrder(title: 'frieds', count: 1, price: 6.0),
    ],
  ),
];
