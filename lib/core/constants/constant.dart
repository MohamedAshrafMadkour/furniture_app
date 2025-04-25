import 'package:furniture_app/core/assets/app_image.dart';
import 'package:furniture_app/feature/home/data/model/category_model.dart';

const kRegards =
    'Feel your personal expression by choosing the latest design of furniture';

final categoryList = const [
  CategoryModel(images: Assets.imagesEntree, title: 'Sofa'),
  CategoryModel(images: Assets.imagesChair, title: 'Chair'),
  CategoryModel(images: Assets.imagesBed, title: 'Bed'),
  CategoryModel(images: Assets.imagesSmallLamb, title: 'Lamp'),
  CategoryModel(images: Assets.imagesCabinet, title: 'Cabinet'),
];

const kDesc =
    'Three-seat sofas are best for living room and family room spaces. It is about 90 inches wide in the seating area, 38 inches deep, and 34 inches high.';
