class CatImage {
  CatImage(
    this.url,
  );

  String url;

  factory CatImage.fromJson(Map<String, dynamic> json) => CatImage(
        json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
