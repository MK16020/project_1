class Product {
  final String image, title, brand, description;
  final int price, size, id;

  Product({
    required this.id,
    required this.image,
    required this.brand,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Darling Blouse // White",
    price: 234,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
    image: "assets/images/image1.jpeg",
  ),
  Product(
    id: 2,
    title: "Monaco Dress // Aperol",
    price: 1029,
    brand: "CAITLIN CRISP",
    size: 8,
    description: dummyText,
    image: "assets/images/image2.jpg",
  ),
  Product(
    id: 3,
    title: "Delilah Bodice // Tweed",
    price: 234,
    brand: "CAITLIN CRISP",
    size: 10,
    description: dummyText,
    image: "assets/images/image3.png",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 383,
    brand: "CAITLIN CRISP",
    size: 11,
    description: dummyText,
    image: "assets/images/image4.webp",
  ),
  Product(
    id: 5,
    title: "Newport Short // Marigold Broderie",
    price: 1200,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
    image: "assets/images/image5.webp",
  ),
  Product(
    id: 6,
    title: "Marsden 2.0 Crop // Black",
    price: 294,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
    image: "assets/images/image6.webp",
  ),
  Product(
    id: 7,
    title: "Marsden 2.0 Crop // Black",
    price: 487,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
    image: "assets/images/image7.webp",
  ),
  Product(
    id: 8,
    title: "Marsden 2.0 Crop // Black",
    price: 500,
    brand: "CAITLIN CRISP",
    size: 12,
    description: dummyText,
    image: "assets/images/image8.webp",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
