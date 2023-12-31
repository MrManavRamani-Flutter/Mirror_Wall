import 'package:mirror_wall/modules/models/web_list_model.dart';

class Global {
  static List<Map<String, dynamic>> webList = [
    {
      'id': 1,
      'title': 'Educational Websites',
      'img': 'assets/img/education_logo_1.png',
      'cat1': [
        WebListModel(subTitle: 'Wikipedia', link: 'https://www.wikipedia.org'),
        WebListModel(subTitle: 'W3Schools', link: 'https://www.w3schools.com'),
        WebListModel(
            subTitle: 'JavaTPoint', link: 'https://www.javatpoint.com'),
        WebListModel(
            subTitle: 'TutorialsPoint',
            link: 'https://www.tutorialspoint.com/index.htm'),
        WebListModel(subTitle: 'DevDocs', link: 'https://devdocs.io'),
        WebListModel(
            subTitle: 'Codecademy', link: 'https://www.codecademy.com'),
        WebListModel(
            subTitle: 'freeCodeCamp', link: 'https://www.freecodecamp.org'),
        WebListModel(subTitle: 'Udemy', link: 'https://www.udemy.com'),
        WebListModel(subTitle: 'Edabit', link: 'https://edabit.com'),
        WebListModel(
            subTitle: 'MDN Web Docs',
            link:
                'https://skillcrush.com/blog/64-online-resources-to-learn-to-code-for-free'),
      ],
    },
    {
      'id': 2,
      'title': 'OTTs Websites',
      'img': 'assets/img/ott_logo_2.png',
      'cat1': [
        WebListModel(subTitle: 'Netflix', link: 'https://www.netflix.com/in'),
        WebListModel(
            subTitle: 'Amazon Prime Video',
            link:
                'https://www.primevideo.com/offers/nonprimehomepage/ref=atv_hom_pri_c_9zZ8D2_hom'),
        WebListModel(subTitle: 'HOICHOI', link: 'https://www.hoichoi.tv'),
        WebListModel(
            subTitle: 'ALT BALAJI', link: 'https://altt.co.in/media/3125'),
        WebListModel(subTitle: 'SUNNXT', link: 'https://www.sunnxt.com'),
        WebListModel(subTitle: 'ZEE5', link: 'https://www.zee5.com'),
        WebListModel(subTitle: 'SONYLIV', link: 'https://www.sonyliv.com'),
        WebListModel(
            subTitle: 'Disney+ Hotstar',
            link: 'https://www.hotstar.com/in/paywall'),
      ],
    },
  ];
}
