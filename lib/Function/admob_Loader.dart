// Notice
/*
[1] terminal commnad
flutter pub add google_mobile_ads

[2] App ID = ca-app-pub-8087572867617685~8829685701
android/app/src/main/AndroidManifest.xml add
<meta-data
  android:name="com.google.android.gms.ads.APPLICATION_ID"
  android:value="[YOUR ANDROID APP ID]"/>
*/

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

const Map<String, String> UNIT_ID = kReleaseMode
    ? {
        'ios': '[YOUR iOS AD UNIT ID]',
        //My App unit Id :  ca-app-pub-8087572867617685/8245293978
        'android': 'ca-app-pub-8087572867617685~8829685701',
      }
    : {
        'ios': 'ca-app-pub-3940256099942544/2934735716',
        'android': 'ca-app-pub-3940256099942544/6300978111',
      };

class ADmobLoader extends StatelessWidget {
  static final _inst = ADmobLoader.constructor();
  factory ADmobLoader() => _inst;
  ADmobLoader.constructor() {
    WidgetsFlutterBinding.ensureInitialized();
    MobileAds.instance.initialize();
  }

  BannerAd? _banner;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  void Load(context) {
    TargetPlatform os = Theme.of(context).platform;
    _banner = BannerAd(
      listener: BannerAdListener(
        onAdFailedToLoad: (Ad ad, LoadAdError error) {},
        onAdLoaded: (_) {},
      ),
      size: AdSize.banner,
      adUnitId: UNIT_ID[os == TargetPlatform.iOS ? 'ios' : 'android']!,
      request: AdRequest(),
    )..load();
  }

  Widget ShowAD() {
    return Container(
      height: 50,
      color: Colors.blue,
      child: AdWidget(
        ad: _banner!,
      ),
    );
  }
}
