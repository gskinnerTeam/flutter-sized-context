# ✥ Sized Context

With this extension package you can easily access the MediaQuery sizing info directly on the build context:

```dart
Size width = context.pixels;
```

It also provides additional convenience methods like landscape state, diagonal screen size and inch-based measurements:

```dart
bool isLandscape = context.isLandscape; //Instead of: MediaQuery.of(context).orientation == Orientation.landscape
bool isTablet = context.diagonalInches >= 7; //Get physical device size in inches 
bool useSingleColumn = context.width < 400; //Access .width and .height directly, no need to go throug .size
```

## 🎖 Installation
```yaml
dependencies:
  sized_context: "^0.0.1"
```

### ⚡ Import

```dart
import 'package:media_query_context/media_query_context.dart';
```

## 🎮 Usage

```dart
bool isLandscape = context.isLandscape;
//PIXELS
Size size = context.sizePixels;
double width = context.width;
double height = context.height;
double diagonalPx = context.diagonal;
//INCHES
Size sizeInInches = context.sizeInches;
double widthInInches = context.widthInches;
double heightInInches = context.heightInches;
double diagonalInInches = context.diagonalInches;
```

For convenience you can also access the MediaQueryData object directly, to get any other methods or properties:

```dart
EdgeInsets padding = context.mq.padding;
Size safeSize = context.mq.removePadding();
```

## 🐛 Bugs/Requests

If you encounter any problems feel open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it. Pull request are also welcome.

## 👏 Inspiration

- Thanks to reddit user *der_kobold* for the inspiration!

## ⭐ License

MIT License
