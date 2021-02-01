import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Module3/bloc/bloc_user.dart';
import 'package:flutter_app/Module3/data/data.dart';

class MainUser extends StatefulWidget {
  @override
  _MainUserState createState() => _MainUserState();
}

class _MainUserState extends State<MainUser> {
  UserBloc userBloc;

  TextStyle get basicTextStyle => TextStyle(
        color: Colors.white,
        fontSize: 18,
      );

  @override
  void initState() {
    userBloc = UserBloc()..init();
    super.initState();
  }

  @override
  void dispose() {
    userBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black87,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SafeArea(
            child: SingleChildScrollView(
                child: StreamBuilder<Result>(
              stream: userBloc.userBlocStream,
              builder: (BuildContext builder, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data.results[0].picture.thumbnail);
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff00dbde),
                              const Color(0xfffc00ff)
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [
                              0.0,
                              1.0,
                            ],
                          ),
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                              bottom: -40,
                              width: 120.0,
                              height: 120.0,
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    snapshot.data.results[0].picture.large,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                                // fit: BoxFit.cover,
                                fadeInDuration: Duration(microseconds: 200),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${snapshot.data.results[0].name.first} '
                            '${snapshot.data.results[0].name.last}',
                            style: basicTextStyle,
                          ),
                          // SizedBox(height: 10,),
                          Text(
                            '${snapshot.data.results[0].location.state} ,'
                            '${snapshot.data.results[0].location.country} ',
                            style: basicTextStyle,
                          )
                        ],
                      )
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Container(
                    child: Text('Error'),
                  );
                }
                return Text('Loading');
              },
            )),
          )
        ],
      ),
    );
  }
}
