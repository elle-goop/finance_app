```dart
Container(
          color: Palette.greyLight,
          child: SizedBox.fromSize(
            size: Size(viewportSize.width, viewportSize.width*ratio),
            child: Sparkline(
              data: expenses,
              lineColor: Palette.mainBlue,
              sharpCorners: true,
            ),
          ),
        ),
```

```dart
///////////////////////////////////////////////
//////// Cards Carousel START
///////////////////////////////////////////////

      Padding(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: SizedBox.fromSize(
          size: Size(viewportSize.width, viewportSize.width/2.1),
          child: PageView(
            controller: pageController,
            onPageChanged: (value) => setState((){
              currentCard = value;
              }),
            children: cards.map((card) {
              return Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: PlasticCard(card: card,),
              );
            }).toList(),
          ),
        )
      ),
///////////////////////////////////////////////
//////// Cards Carousel END
///////////////////////////////////////////////
```

```dart
child: PageView.builder(
  onPageChanged: (value) {
    setState(() {currentCard = value;});
  },
  controller: pageController,
  itemBuilder: (context, index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double size = 1.0;
        if(pageController.position.haveDimensions) {
          size = pageController.page - index;
          size = (1 - (size.abs() * .5)).clamp(0.0, 1.0);
        }
        return new Center(
        child: new SizedBox(
          height: Curves.easeOut.transform(size) * 300,
          width: Curves.easeOut.transform(size) * 250,
          child: child,
        ),
      );
      },
    );
  },
),
```
```dart
```
```dart
```
```dart
```
```dart
```

```dart
Expanded(
  child: ListView(
    children: <Widget>[

      SizedBox.fromSize(
        size: Size.fromHeight(222),
        child: Container(
          color: Colors.purple,
        ),
      ),

      SizedBox.fromSize(
        size: Size.fromHeight(222),
        child: Container(
          color: Colors.green,
        ),
      ),


    ],
  )
),
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```
```dart
```