class Pro {
  int? id;
  int? catId;
  String? productName;
  String? brand;
  int? qty;
  String? price;
  String? discountedPrice;
  String? categories;
  String? mainImage;

  Pro(
      {this.id,
      this.catId,
      this.productName,
  
      this.brand,
 
      this.qty,
      this.price,
      this.discountedPrice,
      this.categories,
      
      this.mainImage});

  Pro.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    catId = json['cat_id'];
    productName = json['product_name'];

    brand = json['brand'];

    qty = json['qty'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    categories = json['categories'];
 
    mainImage = json['main_image'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cat_id'] = this.catId;
    data['product_name'] = this.productName;
   
    data['brand'] = this.brand;
 
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    data['categories'] = this.categories;
   
    data['main_image'] = this.mainImage;
    return data;
  }
}