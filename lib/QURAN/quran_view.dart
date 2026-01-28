import 'package:flutter/material.dart';
import 'package:islami/QURAN/quran_details_veiw.dart';
import 'package:islami/QURAN/widget/sura_card.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/color_pallete.dart';
import 'package:islami/models/sura_data.dart';

class QuranView extends StatefulWidget {
  static const String routName = "/QURAN_VEIW";
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {

  List<SuraData> suralist = [];

  List<String> arabicAuranSuras = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس",
  ];

  List<String> englishQuranSurahs = [
    "Al-Fatiha",
    "Al-Baqarah",
    "Aal-E-Imran",
    "An-Nisa'",
    "Al-Ma'idah",
    "Al-An'am",
    "Al-A'raf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Isra",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiya",
    "Al-Hajj",
    "Al-Mu'minun",
    "An-Nur",
    "Al-Furqan",
    "Ash-Shu'ara",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankabut",
    "Ar-Rum",
    "Luqman",
    "As-Sajda",
    "Al-Ahzab",
    "Saba",
    "Fatir",
    "Ya-Sin",
    "As-Saffat",
    "Sad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqi'a",
    "Al-Hadid",
    "Al-Mujadila",
    "Al-Hashr",
    "Al-Mumtahina",
    "As-Saff",
    "Al-Jumu'a",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nuh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddathir",
    "Al-Qiyamah",
    "Al-Insan",
    "Al-Mursalat",
    "An-Naba'",
    "An-Nazi'at",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Buruj",
    "At-Tariq",
    "Al-A'la",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duha",
    "Ash-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyina",
    "Az-Zalzalah",
    "Al-Adiyat",
    "Al-Qari'a",
    "At-Takathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Ma'un",
    "Al-Kawthar",
    "Al-Kafirun",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Nas",
  ];

  List<String> ayaNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '5',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '6',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6',
  ];

  List<int>filterList = List.generate(114, (index) => index);


  @override
  void initState() {
    super.initState();
    suralist = List.generate(
      arabicAuranSuras.length,
      (index) => SuraData(
        suraNumber: "${index + 1}",
        suraNameAr: arabicAuranSuras[index],
        suraNameEn: englishQuranSurahs[index],
        suraVersesCount: ayaNumber[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.quranBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery
                .of(context)
                .size
                .height,
          ),
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                child: Assets.images.imgHeader.image(),
              ),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: TextField(
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white, fontFamily: 'Janna',),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  onChanged: (newText) {
                    searchBYNewText(newText);
                  },

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPallete.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorPallete.primaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Sura Name",
                    labelStyle: Theme
                        .of(context)
                        .textTheme
                        .titleMedium,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Assets.icons.quranInactiveIc.svg(
                        colorFilter: ColorFilter.mode(
                          ColorPallete.primaryColor,
                          BlendMode.srcIn,
                        ),
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Text(
                  "Most Recently",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium,
                ),
              ),
              SizedBox(
                height: 160,
                child: ListView.separated(
                  padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: ColorPallete.primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        spacing: 10,

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                suralist[index].suraNameEn,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: Colors.black),
                              ),
                              Text(
                                suralist[index].suraNameAr,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: Colors.black),
                              ),
                              Text(
                                suralist[index].suraVersesCount,
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                          Assets.images.imgListQuran.image(),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: 114,
                ),
              ),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Text(
                  "Suras List",
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium,
                ),
              ),

              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  int suraIndex = filterList[index];
                  return SuraCard(suraData: suralist[suraIndex], onTap: () {
                    Navigator.of(context).pushNamed(
                        QuranDetailsVeiw.routName,
                        arguments: suralist[suraIndex]);
                  },);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    thickness: 2,
                    indent: 40,
                    endIndent: 40,
                    height: 40,
                  );
                },
                itemCount: filterList.length,
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }

  void searchBYNewText(String newText) {
    List<int>filterSearchList = [];
    for (int i = 0; i < englishQuranSurahs.length; i++) {
      if (englishQuranSurahs[i].toLowerCase().contains(newText.toLowerCase())) {
        filterSearchList.add(i);
      }
    }
    for (int i = 0; i < arabicAuranSuras.length; i++) {
      if (arabicAuranSuras[i].toLowerCase().contains(newText.toLowerCase())) {
        filterSearchList.add(i);
      }
    }
    filterList = filterSearchList;
    setState(() {

    });
  }
}
