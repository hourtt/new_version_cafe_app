// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cafe/pages/accountWidget/chooseLanguages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';
import 'localeProvider.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  bool _isCheckedKhmer = false;
  bool _isCheckedEnglish = false;
  bool _isCheckedChinese = false;
  bool _isCheckedKorean = false;

  @override
  Widget build(BuildContext context) {
    var localeProvider = Provider.of<LocaleProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 51, 104, 165),
              Color.fromARGB(255, 61, 149, 145)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    _isCheckedKhmer = true;
                    _isCheckedEnglish = false;
                    _isCheckedChinese = false;
                    _isCheckedKorean = false;
                    localeProvider.setLocale(Locale('km'));
                    Navigator.pop(context);
                  });
                },
                child: chooseLanguage(
                  '',
                  language: "ភាសាខ្មែរ",
                  flag: "images/flag/kh.png",
                  isChecked: _isCheckedKhmer,
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    _isCheckedEnglish = true;
                    _isCheckedKhmer = false;
                    _isCheckedChinese = false;
                    _isCheckedKorean = false;
                    localeProvider.setLocale(Locale('en'));
                    Navigator.pop(context);
                  });
                },
                child: chooseLanguage(
                  '',
                  language: 'English',
                  flag: "images/flag/eng.png",
                  isChecked: _isCheckedEnglish,
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    _isCheckedChinese = true;
                    _isCheckedKhmer = false;
                    _isCheckedEnglish = false;
                    _isCheckedKorean = false;
                    localeProvider.setLocale(Locale('zh'));
                    Navigator.pop(context);
                  });
                },
                child: chooseLanguage(
                  '',
                  language: "中文",
                  flag: "images/flag/china.png",
                  isChecked: _isCheckedChinese,
                ),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  setState(() {
                    _isCheckedKorean = true;
                    _isCheckedKhmer = false;
                    _isCheckedEnglish = false;
                    _isCheckedChinese = false;
                    localeProvider.setLocale(Locale('ko'));
                    Navigator.pop(context);
                  });
                },
                child: chooseLanguage(
                  '',
                  language: "한국인",
                  flag: "images/flag/ko.png",
                  isChecked: _isCheckedKorean,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
