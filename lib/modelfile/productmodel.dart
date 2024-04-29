class ProductList {
  List<Produ>? data;

  ProductList(this.data);

  ProductList.fromJson(List<dynamic> json) {
    data = json.map((productJson) => Produ.fromJson(productJson)).toList();
  }
}

class Produ 
{
 
 int? id;
  int? catId;
  String? productName;
  String? slug;
  String? brand;
  String? sku;
  int? qty;
  String? price;
  String? discountedPrice;
  String? categories;
  int? status;
  String? mainImage;
  int? showcaseHomepage;
  int  quantity =0;


  Produ(
    {
      this.id,
      this.catId,
      this.productName,
      this.slug,
      this.brand,
      this.sku,
      this.qty,
      this.price,
      this.discountedPrice,
      this.categories,
      this.status,
      this.mainImage,
      this.showcaseHomepage,
      required this.quantity
   
    }
  );

    Produ.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    catId = json['cat_id'];
    productName = json['product_name'];
    slug = json['slug'];
    brand = json['brand'];
    sku = json['sku'];
    qty = json['qty'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    categories = json['categories'];
    status = json['status'];
    mainImage = json['main_image'];
    showcaseHomepage = json['showcase_homepage'];
 
  }

    Map<dynamic, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['cat_id'] = this.catId;
    data['product_name'] = this.productName;
    data['slug'] = this.slug;
    data['brand'] = this.brand;
    data['sku'] = this.sku;
    data['qty'] = this.qty;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    data['categories'] = this.categories;
    data['status'] = this.status;
    data['main_image'] = this.mainImage;
    data['showcase_homepage'] = this.showcaseHomepage;
    return data;
  }

}
