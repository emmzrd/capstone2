import 'package:flutter/material.dart';
import 'package:capstone2_jobhub2/components/constants.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  String category = 'Architect';
  String subCategory = 'Software Architect';
  String location = 'USA';
  String salary = '2000-4000';
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Filters',
          style: TextStyle(
            fontSize: 20,
            fontFamily: kFontSofiaPro,
            fontWeight: FontWeight.w600,
            color: kColor1A1D1EBlack,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kColorFBFBFBblack,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Category', style: kFiltersTextStyle),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: (Colors.white)),
              child: DropdownButton<String>(
                isExpanded: true,
                value: category,
                elevation: 16,
                style: const TextStyle(
                    color: kColor6A6A6AGrey,
                    fontSize: 14,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w400),
                underline: Container(
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    category = newValue!;
                  });
                },
                items: <String>['Architect', 'Engineer', 'Security']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('Sub Category', style: kFiltersTextStyle),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: (Colors.white),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                value: subCategory,
                elevation: 16,
                style: const TextStyle(
                    color: kColor6A6A6AGrey,
                    fontSize: 14,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w400),
                underline: Container(
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    subCategory = newValue!;
                  });
                },
                items: <String>[
                  'Software Architect',
                  'Software Engineer',
                  'Information Security'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text('Location', style: kFiltersTextStyle),
                SizedBox(
                  width: 140,
                ),
                Text('Salary', style: kFiltersTextStyle),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: (Colors.white),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: kColor6A6A6AGrey,
                      ),
                      DropdownButton<String>(
                        value: location,
                        elevation: 16,
                        style: const TextStyle(
                            color: kColor6A6A6AGrey,
                            fontSize: 14,
                            fontFamily: kFontPoppins,
                            fontWeight: FontWeight.w400),
                        underline: Container(
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            location = newValue!;
                          });
                        },
                        items: <String>['USA', 'Canada', 'UK']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: (Colors.white),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: kColor6A6A6AGrey,
                      ),
                      DropdownButton<String>(
                        value: salary,
                        elevation: 16,
                        style: const TextStyle(
                            color: kColor6A6A6AGrey,
                            fontSize: 14,
                            fontFamily: kFontPoppins,
                            fontWeight: FontWeight.w400),
                        underline: Container(
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            salary = newValue!;
                          });
                        },
                        items: <String>[
                          '2000-4000',
                          '4000-6000',
                          '6000-8000',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('Job Type', style: kFiltersTextStyle),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
            ),



            ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                'Apply Filters',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: kFontPoppins,
                    fontWeight: FontWeight.w500),
              ),
              style: ElevatedButton.styleFrom(
                  primary: kColor4CA6A8CyanGreen,
                  minimumSize: Size(335, 54),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ],
        ),
      ),
    );
  }
}
