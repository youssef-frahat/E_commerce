class BannersModel {
  final int id;
  final String image;
  final dynamic category;
  final dynamic product;

  BannersModel({
    required this.id,
    required this.image,
    this.category,
    this.product,
  });

  factory BannersModel.fromJson(Map<String, dynamic> json) {
    return BannersModel(
      id: json['id'],
      image: json['image'],
      category: json['category'],
      product: json['product'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'category': category,
      'product': product,
    };
  }
}