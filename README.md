# ✥ Sized Context

With this extension package you can easily access the MediaQuery sizing info directly on the build context:

```dart
Size size = context.sizePx;
```

It also provides additional convenience methods like landscape state, diagonal screen size, inch-based measurements, screen type, width & height percentage, and ratio multipliers for textSize & imageSize:

```dart
bool isLandscape = context.isLandscape; //Instead of: MediaQuery.of(context).orientation == Orientation.landscape
bool isTablet = context.diagonalInches >= 7; //Get physical device size in inches 
bool useSingleColumn = context.widthPx < 400; //Access .width and .height directly, no need to go through .size
bool isDesktop = context.screenType == ScreenType.Desktop; //Design layouts if Mobile, Tablet or Desktop size
double sidePadding = context.widthPercent(11.0); //Use percentages of width or height for sizing
double textScaled = content.textSizeMultiplier * 3.2; //Scale text sizes from ratio of height/100
```

## 🎖 Installation
```yaml
dependencies:
  sized_context: ^0.2.0
```

### ⚡ Import

```dart
import 'package:sized_context/sized_context.dart';
```

## 🎮 Usage

```dart
bool isLandscape = context.isLandscape;
//PIXELS
Size size = context.sizePx;
double width = context.widthPx;
double height = context.heightPx;
double diagonalPx = context.diagonalPx;
//INCHES
Size sizeInInches = context.sizeInches;
double widthInInches = context.widthInches;
double heightInInches = context.heightInches;
double diagonalInInches = context.diagonalInches;
//RESPONSIVE HELPERS
ScreenType screenType = context.screenType;
double widthPercent = context.widthPercent(10);
double heightPercent = context.heightPercent(25);
double textSize = context.textSizeMultiplier * 3.0;
double imageSize = context.imageSizeMultiplier * 20.0;
double heightMultiplier = context.heightMultiplier;
double widthMultiplier = context.widthMultiplier;
```

For convenience you can also access the MediaQueryData object directly, to get any other methods or properties:

```dart
EdgeInsets padding = context.mq.padding;
Size safeSize = context.mq.removePadding();
```

## 🐛 Bugs/Requests

If you encounter any problems please open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it. Pull request are welcome.

## 👏 Thanks

- Thanks to reddit user *der_kobold* for the idea to turn this into an extension!

## ⭐ License

MIT License
