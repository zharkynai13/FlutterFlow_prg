import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'lp60fuom': {
      'ru': 'KoreaCars',
      'en': '',
    },
    'dgsx7ks4': {
      'ru': 'Поиск...',
      'en': '',
    },
    'a7pfhgzd': {
      'ru': 'Option 1',
      'en': '',
    },
    '0cncw7ps': {
      'ru': 'Please select mark',
      'en': '',
    },
    'wx1vxng5': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'xz9dzp1e': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Profile
  {
    'rbrxj7pr': {
      'ru': 'Your Name',
      'en': '',
    },
    'axkuk93h': {
      'ru': 'Email Address',
      'en': '',
    },
    '9nqtcm92': {
      'ru': 'Phone number',
      'en': '',
    },
    'w7kj42yx': {
      'ru': 'Save Changes',
      'en': '',
    },
    'n4zkx3zf': {
      'ru': ' Profile',
      'en': '',
    },
    '901mwr74': {
      'ru': 'profile',
      'en': '',
    },
  },
  // Settings
  {
    '1o7nw4nz': {
      'ru': 'Settings Page',
      'en': '',
    },
    'kr4t3rln': {
      'ru':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'en': '',
    },
    'ntrfdx5q': {
      'ru': 'Push Notifications',
      'en': '',
    },
    '2x57bwll': {
      'ru':
          'Receive Push notifications from our application on a semi regular basis.',
      'en': '',
    },
    'kto8pl7w': {
      'ru': 'Email Notifications',
      'en': '',
    },
    'cmv6nrmh': {
      'ru':
          'Receive email notifications from our marketing team about new features.',
      'en': '',
    },
    'z6uh5m50': {
      'ru': 'Location Services',
      'en': '',
    },
    'ktzphfxs': {
      'ru':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'en': '',
    },
    '7tajfhlm': {
      'ru': 'Change Changes',
      'en': '',
    },
    'v1x2k57r': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Addcars
  {
    'myoz0puy': {
      'ru': 'Добавить',
      'en': '',
    },
    'fsw1s466': {
      'ru': 'mark',
      'en': '',
    },
    'hzme34ra': {
      'ru': 'Audi',
      'en': '',
    },
    'k9v1p708': {
      'ru': 'toyota',
      'en': '',
    },
    '0wygr2oz': {
      'ru': 'BMW',
      'en': '',
    },
    '265rwxas': {
      'ru': 'Kia',
      'en': '',
    },
    'k0q0m1kt': {
      'ru': 'Hyndai',
      'en': '',
    },
    '2tu5rv5b': {
      'ru': 'chevrolet',
      'en': '',
    },
    'z4z268lt': {
      'ru': 'Марка машины',
      'en': '',
    },
    'xirq4qh1': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'iooabzqe': {
      'ru': 'Option 1',
      'en': '',
    },
    'jt9baxkf': {
      'ru': 'Модель',
      'en': '',
    },
    'adfal4cj': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'qoij8t7z': {
      'ru': 'Option 1',
      'en': '',
    },
    'x07rsh2r': {
      'ru': 'Тип кузова',
      'en': '',
    },
    '6ie8xil4': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'oo5l182y': {
      'ru': 'Option 1',
      'en': '',
    },
    'bc1v0zeo': {
      'ru': 'Двигатель',
      'en': '',
    },
    'gf29s2zj': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'dh71yfhr': {
      'ru': 'Год выпуска',
      'en': '',
    },
    'vfxlwi1y': {
      'ru': '',
      'en': '',
    },
    'w6uqdy69': {
      'ru': 'Option 1',
      'en': '',
    },
    'drmgwxg5': {
      'ru': 'Привод',
      'en': '',
    },
    '9qfdndqt': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'pgepg6jl': {
      'ru': 'Option 1',
      'en': '',
    },
    '5ihjhrfj': {
      'ru': 'Коробка передач',
      'en': '',
    },
    'usk5plpi': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'nh7cs1ap': {
      'ru': 'Option 1',
      'en': '',
    },
    'oyupab56': {
      'ru': 'Руль',
      'en': '',
    },
    '511tx6vs': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'fl3ulzth': {
      'ru': 'Option 1',
      'en': '',
    },
    '1fykn9z7': {
      'ru': 'Цвет',
      'en': '',
    },
    'zy52yza6': {
      'ru': 'Search for an item...',
      'en': '',
    },
    '0usskobf': {
      'ru': 'Option 1',
      'en': '',
    },
    'qg7p7ng3': {
      'ru': 'Комплектация',
      'en': '',
    },
    '44w3edr0': {
      'ru': 'Search for an item...',
      'en': '',
    },
    'rx5qrcns': {
      'ru': 'Состояние*',
      'en': '',
    },
    'ftb5b4ss': {
      'ru': 'цена*',
      'en': '',
    },
    '8iymkx4k': {
      'ru': 'Номер для связи*',
      'en': '',
    },
    '3dhqglhn': {
      'ru': 'WhatsApp номер*',
      'en': '',
    },
    'ztbizn6z': {
      'ru': 'Описание*',
      'en': 'Description*',
    },
    'kjd1uqta': {
      'ru': '\n',
      'en': '',
    },
    'pgsm1grc': {
      'ru': 'Изображение*',
      'en': 'Image*',
    },
    'ccbfjnaj': {
      'ru': 'Сохронить',
      'en': 'Save',
    },
    'u4oxwyhj': {
      'ru': 'добааить',
      'en': 'add',
    },
  },
  // favorite
  {
    '3xa7n5y6': {
      'ru': 'нравится',
      'en': '',
    },
  },
  // card
  {
    '1hqeir5k': {
      'ru': 'Год выпуска',
      'en': '',
    },
    '1ljfaxwg': {
      'ru': 'Двигатель',
      'en': '',
    },
    'e7ft7ydm': {
      'ru': 'Таможня',
      'en': '',
    },
    'ixstfu1y': {
      'ru': 'Состояние',
      'en': '',
    },
    'ei4tq0e5': {
      'ru': 'Руль',
      'en': '',
    },
    'ozxk0dtj': {
      'ru': 'Коробка',
      'en': '',
    },
    'uqhs15lm': {
      'ru': 'Цвет',
      'en': '',
    },
    '58y6o1s4': {
      'ru': 'Кузов',
      'en': '',
    },
    'cvfq0np7': {
      'ru': 'Пробег',
      'en': '',
    },
    '7yyo3utl': {
      'ru': 'Описание',
      'en': '',
    },
    'hlos9tf7': {
      'ru': 'Vim',
      'en': '',
    },
    '2ur5wnik': {
      'ru': 'Jhon Legand',
      'en': '',
    },
    '4p3c9tmu': {
      'ru': 'написать',
      'en': '',
    },
    'gla6qfc1': {
      'ru': 'Home',
      'en': '',
    },
  },
  // LogInPage
  {
    's4tevlcr': {
      'ru': 'Koreacars',
      'en': '',
    },
    'rwkgxpa8': {
      'ru': 'Create an account',
      'en': '',
    },
    'mwrat9gj': {
      'ru': 'Let\'s get started by filling out the form below.',
      'en': '',
    },
    'ehj6b2aw': {
      'ru': 'Email',
      'en': '',
    },
    'b6o96omq': {
      'ru': 'Password',
      'en': '',
    },
    'l2u9zgjf': {
      'ru': 'Confirm Password',
      'en': '',
    },
    'fzbyx6yj': {
      'ru': 'Create Account',
      'en': '',
    },
    '0powqo0w': {
      'ru': 'Already have an account? ',
      'en': '',
    },
    '7gda9z13': {
      'ru': 'Sign In here',
      'en': '',
    },
    'yusrwqvh': {
      'ru': 'Home',
      'en': '',
    },
  },
  // ProfilePage
  {
    'em909xi2': {
      'ru': '+996700610815',
      'en': '',
    },
    '8wdvqphs': {
      'ru': 'Active Posts',
      'en': '',
    },
    '1oq03t4r': {
      'ru': 'View All',
      'en': '',
    },
    '91bubrtv': {
      'ru': 'Post Title 1',
      'en': '',
    },
    'yytyv2ow': {
      'ru':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en': '',
    },
    'pmo1c7er': {
      'ru': 'Post Title 2',
      'en': '',
    },
    'er2ka7hd': {
      'ru':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en': '',
    },
    '5q39m2jy': {
      'ru': 'Post Title 3',
      'en': '',
    },
    'hjhv5fea': {
      'ru':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
      'en': '',
    },
    'msrjmnqe': {
      'ru': 'Settings',
      'en': '',
    },
    'rtmr3ly1': {
      'ru': 'Edit Profile',
      'en': '',
    },
    '1ruqy7te': {
      'ru': 'Notification Settings',
      'en': '',
    },
    'ma1e3dt7': {
      'ru': 'Privacy Settings',
      'en': '',
    },
    'nvfhlzim': {
      'ru': 'Help & Support',
      'en': '',
    },
    'tjfrcuyn': {
      'ru': 'Profile',
      'en': '',
    },
    '74jl424e': {
      'ru': 'profile',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '5ov1ciyu': {
      'ru': '',
      'en': '',
    },
    '667xr7gl': {
      'ru': '',
      'en': '',
    },
    'umh4demn': {
      'ru': '',
      'en': '',
    },
    'ybjs11mc': {
      'ru': '',
      'en': '',
    },
    '3j47xiqj': {
      'ru': '',
      'en': '',
    },
    'waoqchr3': {
      'ru': '',
      'en': '',
    },
    'ui9gciad': {
      'ru': '',
      'en': '',
    },
    '20w6a2ct': {
      'ru': '',
      'en': '',
    },
    '0i677yaz': {
      'ru': '',
      'en': '',
    },
    '7im256iu': {
      'ru': '',
      'en': '',
    },
    'u88ev6o8': {
      'ru': '',
      'en': '',
    },
    '60s0x9wk': {
      'ru': '',
      'en': '',
    },
    '67noj1x0': {
      'ru': '',
      'en': '',
    },
    '1kfn57sb': {
      'ru': '',
      'en': '',
    },
    '7zgyrmhk': {
      'ru': '',
      'en': '',
    },
    'nls8sgby': {
      'ru': '',
      'en': '',
    },
    'zpwnf5ro': {
      'ru': '',
      'en': '',
    },
    'p8sldwko': {
      'ru': '',
      'en': '',
    },
    'ek7on88p': {
      'ru': '',
      'en': '',
    },
    'f3d2am98': {
      'ru': '',
      'en': '',
    },
    'n5smbtue': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
