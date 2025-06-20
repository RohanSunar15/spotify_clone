import 'package:flutter/material.dart';
import 'package:spotify_clone/features/auth/presentation/pages/login_phone_number_page/data/data_countrycode.dart';


class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {

  String selectedCountry = '' ;


  void _onItemSelected(String country) {
    setState(() {
      selectedCountry = country;
    });
  }

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      backgroundColor: const Color(0xff1a1a1a),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 39,bottom: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 34,
                    ),
                  ),
                ),
                const SizedBox(width: 80,),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Choose your country',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17

                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff2d2a2a),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        bottomLeft: Radius.circular(6)
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(11.8),
                    child: Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xff2d2a2a),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                          bottomRight: Radius.circular(6)
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  countries.length,
                      (index) => GestureDetector(
                    onTap: () => () {
                      setState(() {
                        countries.add('New Country ${countries.length + 1}');
                        countrycode.add('+${countries.length + 1}');
                      });
                    },
                    child:  Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 10.0,vertical: 19.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(countries[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15
                          ),
                          ),

                          Text(countrycode[index],
                            style: const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

