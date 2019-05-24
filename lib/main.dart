import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final String image =
      'https://lh3.googleusercontent.com/Dsmyq3u-WH9bk_BkEaRhBzV_m4B9i0yduSmeq-e35WTWgM44h3Zff_MckpMlDKM3WL9lY9c0CWTZPuyViGVsoHchZZ0PhHKuYqg_uG-K4dJ8I1k_2YL1w629YHpv1JlYEygXEtiD34demLYcv7FTtPHxYnubXG3Tr9A6fN-K0Mr6yAox7T99XW7uM1ken7ZC5hmuUPemY5Oxe8V2D9VHW4c3JgvKzWtXU64DlRWfJbO-o6kTj1XYmTv3ry1kRGJW3tCJffBy36l2JO8H0C573y7h8nSbz94AjPMZ2r_pMY2aMojU9f-qxcZu5jaY0EPJSZHGeAXOA1zRR1IqB63yHeLGb2Jbaimhmq_Wmq9hliXD4nIhvJhPp2KcJ-9CRXIsPfM26JcfVrxHtro3yRrIFKaszi8NE1jW3K2nZqPBtLAa9PzXXoMRvOHd0ti8Om3gXKP7dImBTv3-r5jvliVooQtc29ev6DQbsWHm53FwRVZ_B5eusMgvmiiZY4MmSppY7aPdXq4Nze2_bm60ue-bbRAPSlt7f2yIhgZ3PB6tt3YpjYgRrWtjNbifOEpH3KdMNzZV9I2Vinb9cdH01MXo6Jmk-iXk7eLYLVRbsx1u_zItf2VOxoXqOksrkm5Ek5YFWP6mvXNGoKZcwf3yvbjr3wM2-CkAaMi0=w473-h969-no';
  String image1 =
      'https://images.pexels.com/photos/2300641/pexels-photo-2300641.jpeg?cs=srgb&dl=attractive-beautiful-beauty-2300641.jpg&fm=jpg';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            // child: Image.network(
            //   image1,
            //   alignment: Alignment.center,
            // ),
            child: BarakaImage(),
            height: screenHeight,
            bottom: 0,
            left: -30,
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 50,
            child: SizedBox(
              height: screenHeight / 2,
              width: screenWidth,
              child: Container(
                // color: Color.fromRGBO(250, 250, 250, 0.3),// can not have color and decoration
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 0.3),
                    border: Border.all(
                        color: Color.fromRGBO(250, 250, 250, 0.3), width: 2.0),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w100),
                    ),
                    Form(
                      child: Column(
                        children: <Widget>[
                          new FormItem('Email'),
                          new FormItem('Password'),
                        ],
                      ),
                    ),
                    new CustomButton(),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.white,
        elevation: 3.0,
        color: Color.fromRGBO(0, 0, 20, 1.0),
        child: MaterialButton(
          minWidth: 200.0,
          child: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () async {},
        ),
      ),
    );
  }
}

class BarakaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/baraka.jpg');
    //Image image = Image(image: assetImage);
    return Image(image: assetImage);
  }
}

class FormItem extends StatelessWidget {
  final String hintText;
  FormItem(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
        child: TextFormField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: hintText,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}
