class ProductInfo {
  int id;
  String title;
  String shortDescription;
  String description;
  String mainPicture;
  int weight;
  int price;
  int likes;
  int teig;
  bool isLiked;

  ProductInfo(
      {this.id = 0,
      this.title = '',
      this.shortDescription = '',
      this.description = '',
      this.mainPicture = '',
      this.weight = 0,
      this.price = 0,
      this.likes = 0,
      this.teig = 1,
      this.isLiked = false});
}

List<ProductInfo> productList = [
  ProductInfo(
    id: 1,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: true,
  ),
  ProductInfo(
    id: 2,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 3,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),

// ------------------------
  ProductInfo(
    id: 4,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: false,
  ),
  ProductInfo(
    id: 5,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 6,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),

// ------------------------
  ProductInfo(
    id: 7,
    title: 'Маргарита',
    shortDescription: 'Пицца соус, сыр Моцарелла, специи.',
    description:
        'Пицца Маргарита – классическое итальянское блюдо. Томатный соус, базилик и сливочный вкус сыра Моцарелла порадует каждого.',
    mainPicture: 'assets/images/Margarita_700x700.jpg',
    weight: 480,
    price: 299,
    likes: 100,
    teig: 1,
    isLiked: false,
  ),
  ProductInfo(
    id: 8,
    title: 'С ветчиной и грибами',
    shortDescription:
        'Пицца соус, сыр Моцарелла, Ветчина, грибы шампиньоны, укроп.',
    description:
        'Знакомый каждому нежный вкус Ветчины, оттененный шампиньонами и дополненный сливочным сыром Моцарелла. Все  это в Пицце с ветчиной грибами.',
    mainPicture: 'assets/images/Pizza_s_vetchinoi_i_gribami_700x700.jpg',
    weight: 540,
    price: 350,
    likes: 120,
    teig: 2,
    isLiked: false,
  ),
  ProductInfo(
    id: 9,
    title: 'Охотничья',
    shortDescription:
        'Пицца соус, чеснок, сыр Моцарелла, огурцы маринованные, колбаски Охотничьи полукопченые, болгарский перец, укроп.',
    description:
        'Пикантное сочетание маринованных огурчиков и полукопчёных Охотничьих колбасок, приправленных чесноком, подарит вам настоящие острые впечатления.',
    mainPicture: 'assets/images/_Ohotnichia_700x700.jpg',
    weight: 550,
    price: 370,
    likes: 78,
    teig: 2,
    isLiked: false,
  ),
];

List<ProductInfo> allItems = [];

bool getIsLiked(id) {
  int item = productList.indexWhere((el) => el.id == id);
  if (item == -1) return false;
  return productList[item].isLiked;
}

int getLikes(id) {
  int item = productList.indexWhere((el) => el.id == id);
  if (item == -1) return 0;
  return productList[item].likes;
}
