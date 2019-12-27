class ProductList {
  List<Product> product;

  ProductList({this.product});

  ProductList.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = new List<Product>();
      json['product'].forEach((v) {
        product.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String headerText;
  String url;
  String imageUrl;
  Null productName;
  String categoryName;
  List<SubProduct> subProduct;

  Product(
      {this.headerText,
      this.url,
      this.imageUrl,
      this.productName,
      this.categoryName,
      this.subProduct});

  Product.fromJson(Map<String, dynamic> json) {
    headerText = json['headerText'];
    url = json['url'];
    imageUrl = json['imageUrl'];
    productName = json['ProductName'];
    categoryName = json['categoryName'];
    if (json['subProduct'] != null) {
      subProduct = new List<SubProduct>();
      json['subProduct'].forEach((v) {
        subProduct.add(new SubProduct.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headerText'] = this.headerText;
    data['url'] = this.url;
    data['imageUrl'] = this.imageUrl;
    data['ProductName'] = this.productName;
    data['categoryName'] = this.categoryName;
    if (this.subProduct != null) {
      data['subProduct'] = this.subProduct.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubProduct {
  String imageUrl;
  String productName;

  SubProduct({this.imageUrl, this.productName});

  SubProduct.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    productName = json['ProductName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['ProductName'] = this.productName;
    return data;
  }
}