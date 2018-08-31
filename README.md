# ![](android/app/src/main/res/mipmap-mdpi/ic_launcher.png) iOSDC 2018 Flutter App

The unofficial conference app for iOSDC 2018 Tokyo

[0]: https://travis-ci.com/konifar/iosdc2018-flutter.svg?token=rzzprAjeKHUugKX3Lx7N&branch=master
[1]: https://travis-ci.com/konifar/iosdc2018-flutter

[iOSDC 2018](https://iosdc.jp/2018/) is a conference tailored for developers on 8/31 - 9/2 2018.

This app is built using [Flutter](https://flutter.io/) and [Firebase](https://firebase.google.com) for both iOS and Android.

# Features
## iOS
<img src="art/ios_sessions.png" width="200" /> <img src="art/ios_session_detail.png" width="200" /> <img src="art/ios_map.png" width="200" /> <img src="art/ios_gif.gif" width="200" />

## Android
<img src="art/android_sessions.jpg" width="200" /> <img src="art/android_session_detail.jpg" width="200" /> <img src="art/android_map.jpg" width="200" /> <img src="art/android_gif.gif" width="200" />

- View all the conference schedule and details of each session
- Add favorite sessions to My Schedule.
- Check the place map.

# Getting started
1. Install Flutter. See https://flutter.io/setup/
2. Setting up the IntelliJ. See https://flutter.io/ide-setup/
3. Fork and clone this repository.
4. Move to `iosdc2018-flutter` directory.
5. Run `flutter run` command.

# Structure
The main classes are under `lib` directory.

directory | description
:--: | :--
api | Classes to load all the sessions data via API.
i18n | Classes to localize (currently English and Japanese are supported.)
models | Model classes which are parsed from API json.
repository | Classes to call API and cache data.
ui | Classes to show each pages. 

# Contributing
This project is under development.

I'm always welcome your contribution! Feel free to report Issue or send Pull Request! 

# License
```
Copyright 2018 Yusuke Konishi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
