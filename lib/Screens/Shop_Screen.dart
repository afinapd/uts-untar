import 'package:flutter/material.dart';
import 'package:uts/Theme/Colors.dart';
import 'package:uts/Data/search.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appFooterColor,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: Container(
                width: double.infinity - 30,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textFieldBackground),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search shop',
                      hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: white.withOpacity(0.5)),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: white.withOpacity(0.8),
                      )),
                  style: TextStyle(color: white.withOpacity(0.4)),
                  cursorColor: white.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: Container(
                width: double.infinity - 30,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textFieldBackground),
                child: Center(
                  child: Text(
                    'Videos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
                ),
              ),
            ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: GridView.builder(
                  controller: ScrollController(),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
                  itemBuilder: (_, index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(searchShop[index]),
                            fit: BoxFit.cover)),
                  ),
                  itemCount: searchShop.length,
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
}
