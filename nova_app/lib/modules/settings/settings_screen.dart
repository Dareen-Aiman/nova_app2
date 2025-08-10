import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_app/models/app_category.dart';
import 'package:nova_app/shared/network/style/app_colors.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _value =false;
  String? _gender ;
  RangeValues _values = const RangeValues(50, 200);
  final bool? _checkBoxValue =false;

  final List<AppCategory> _categories = <AppCategory>[
    AppCategory(title: 'T-shirt',isChecked: false),
    AppCategory(title: 'Jackets',isChecked:false ),
    AppCategory(title: 'Bags',isChecked:false ),
    AppCategory(title: 'shoes',isChecked:false ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
        children: [
          Text(
            'Notifications',
            style: GoogleFonts.nunitoSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              // color: const Color(0xFF3E3E3E),
            ),
          ),
          SwitchListTile(
            contentPadding: EdgeInsetsDirectional.zero,
            activeColor: AppColors.primaryColor,
              // activeTrackColor: ,
              // inactiveThumbColor: ,
              // inactiveTrackColor: ,
             title: Text(
                'Notifications',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              subtitle: Text(
                'Turn Notifications On/Off',
                style: GoogleFonts.nunitoSans(
                  fontSize: 14,
                ),
              ),
              value: _value,
              onChanged: (bool value) {
                _value = value;
              }),
          Text(
            'Gender',
            style: GoogleFonts.nunitoSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              // color: const Color(0xFF3E3E3E),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                     title:Text(
                       'Male',
                       style: GoogleFonts.nunitoSans(),
                     ),
                    value: 'M',
                    groupValue: _gender,
                    onChanged: (String? value){
                      setState(() {
                        _gender = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    title:Text(
                      'Female',
                      style: GoogleFonts.nunitoSans(),
                    ),
                    value: 'F',
                    groupValue: _gender,
                    onChanged: (String? value){
                      setState(() {
                        _gender = value;
                      });
                    }),
              ),
            ],
          ),
          Text(
        'Price Range',
        style: GoogleFonts.nunitoSans(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          // color: const Color(0xFF3E3E3E),
        ),),
          RangeSlider(
              min: 10,
              max: 1000,
              values:_values,
              divisions: 10,
              labels: RangeLabels(_values.start.toString(), _values.end.toString()),
              onChanged: (RangeValues values){
                setState(() {
                  _values = values;
                });
          }),
          Text(
            'Categories',
            style: GoogleFonts.nunitoSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              // color: const Color(0xFF3E3E3E),
            ),),

           for(AppCategory category in _categories)
           CheckboxListTile(
             contentPadding: EdgeInsetsDirectional.zero,
               title: Text(category.title),
               value: category.isChecked,
               onChanged: (bool? value){
                 setState(() {
                   if(value != null){
                     category.isChecked = value;

                   }
                 });
           }),

        ],
      ),
    );
  }
}
