import 'package:iosdc2018flutter/model/duration_type.dart';
import 'package:iosdc2018flutter/model/language.dart';
import 'package:iosdc2018flutter/model/room.dart';
import 'package:iosdc2018flutter/model/session.dart';
import 'package:iosdc2018flutter/model/speaker.dart';

// -------------------- Room --------------------
const roomA = Room("1", "Track A");
const roomB = Room("2", "Track B");
const roomC = Room("3", "Track C");
const roomD = Room("4", "Track D");
const roomE = Room("5", "Track E");
const roomF = Room("6", "Track F");

// -------------------- Language --------------------
const langJA = Language("1", "JA");
const langEN = Language("2", "EN");

// -------------------- Duration --------------------
const duration1 = DurationType("1", "キーセッション");
const duration2 = DurationType("2", "レギュラートーク（15分）");
const duration3 = DurationType("3", "レギュラートーク（30分）");
const duration4 = DurationType("4", "LT（5分）");

// -------------------- Speaker --------------------
const speaker1 = Speaker(
  "1",
  "長谷川智希",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/707b297d-ff6b-4710-bf34-6a56b11012c8.jpg",
  "tomzoh",
);
const speaker2 = Speaker(
  "2",
  "KBOY@筋肉エンジニア",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/951ea767-53c4-4e80-b771-2ead1080e954.jpg",
  "kboy_silvergym",
);
const speaker3 = Speaker(
  "3",
  "Ryo Usami",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/ca965dae-c6c2-4346-96d6-57933607fc2e.jpg",
  "usa619_",
);
const speaker4 = Speaker(
  "4",
  "Kimi",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/223cd44a-7c1d-435d-9803-3b78af69d407.jpg",
  "KimiNg7",
);
const speaker5 = Speaker(
  "5",
  "Noritaka Kamiya",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/e165b4c1-4644-4566-a2f1-fbc0a45034bf.jpeg",
  "nolili",
);
const speaker6 = Speaker(
  "6",
  "Atsuya Sato",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/e3775381-b1a9-4a9f-b10b-82e86274c373.jpg",
  "n_atmark",
);
const speaker7 = Speaker(
  "7",
  "Koichi Tanaka",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/5cf34ead-e967-479a-a363-23aea2ac6952.jpg",
  "tikidunpon",
);
const speaker8 = Speaker(
  "8",
  "Masayuki Iwai",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/1056ef15-a4e5-4cda-91fb-4d939f4f7c40.png",
  "myb",
);
const speaker9 = Speaker(
  "9",
  "多和田 侑",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/339f21f1-ca23-4038-b4e6-88a2aba8e3c3.jpg",
  "yuta24",
);
const speaker10 = Speaker(
  "10",
  "Kazuya Ueoka",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/5d65d6e6-14b1-4f09-9404-2d5d03fa1a19.png",
  "fromkk",
);
const speaker11 = Speaker(
  "11",
  "rockname",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/c7278a10-c49c-433f-bc0b-f7a83e6dc434.jpg",
  "_rockname",
);
const speaker12 = Speaker(
  "12",
  "ダンボー田中",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/5f9852dc-18b1-4269-b037-d09b5f1c3045.jpg",
  "ktanaka117",
);
const speaker13 = Speaker(
  "13",
  "Ray Fix",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/7054c967-9903-424b-84a8-f14d12e3e20b.jpg",
  "rayfix",
);
const speaker14 = Speaker(
  "14",
  "bannzai",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/a122c43f-cf15-4b7e-b1aa-115466f29892.jpg",
  "_bannzai_",
);
const speaker15 = Speaker(
  "15",
  "nakajijapan",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/ded6d4b5-34d0-49f6-8ca6-52c3fe44a2fc.png",
  "nakajijapan",
);
const speaker16 = Speaker(
  "16",
  "FromAtom",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/53e47a25-0f33-4361-b596-8e6244e1b1f9.jpg",
  "FromAtom",
);
const speaker17 = Speaker(
  "17",
  "tarunon",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/3d77e1cd-d5da-469b-8f97-fb3b46bf943c.jpg",
  "tarunon",
);
const speaker18 = Speaker(
  "18",
  "Yusuke Hosonuma",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/c16a074b-5227-402d-8ba1-f469f6be3b06.jpg",
  "tobi462",
);
const speaker19 = Speaker(
  "19",
  "西谷圭介",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/a671c733-f784-4e63-847d-6688a7521f62.jpeg",
  "Keisuke69",
);
const speaker20 = Speaker(
  "20",
  "",
  "",
  "",
);
const speaker21 = Speaker(
  "21",
  "",
  "",
  "",
);
const speaker22 = Speaker(
  "22",
  "",
  "",
  "",
);
const speaker23 = Speaker(
  "23",
  "",
  "",
  "",
);

// -------------------- Session --------------------
List<Session> sessions() {
  return [
    session1,
    session2,
    session3,
    session4,
    session5,
    session6,
    session7,
    session8,
    session9,
    session10,
    session11,
    session12,
    session13,
    session14,
    session15,
    session16,
    session17,
    session18,
    session19,
    session20,
  ];
}

// 8/30 (Thu)
var session1 = Session(
  "1",
  "OPENING",
  "",
  DateTime(2018, 8, 30, 18, 0, 0),
  DateTime(2018, 8, 30, 18, 15, 0),
  speaker1,
  roomA,
  duration1,
  langJA,
);
var session2 = Session(
  "2",
  "ARKitのための3D算数",
  "GraffityというARKitを使ったアプリを作っています。ARKitやSceneKitは用意されたAPIを使えば色々なことが簡単にできてしまいますが、高度なことをしようとすると、空間ベクトル、座標変換などの算数(数学)の知識が必要になることに気づくでしょう。本トークでは、ARKitを使いこなすために自分が勉強した3Dプログラミングと基本的な算数(数学)について分かりやすく説明します。",
  DateTime(2018, 8, 30, 18, 20, 0),
  DateTime(2018, 8, 30, 18, 35, 0),
  speaker2,
  roomA,
  duration2,
  langJA,
);
var session3 = Session(
  "3",
  "標準アプリから学ぶ、HIGが教えてくれないiOSデザインのこと",
  "Apple Human Interface Guideline (HIG) では、iOS App をデザインする上での考え方を学ぶことができます。それ以外にも Apple がデザインをした標準アプリから知れることが数多くあります。このトークでは、Large Title や 新しいモーダルビューなど HIG を読むだけでは分からない具体的な UI の考え方についてご紹介します。",
  DateTime(2018, 8, 30, 18, 20, 0),
  DateTime(2018, 8, 30, 18, 35, 0),
  speaker3,
  roomB,
  duration2,
  langJA,
);
var session4 = Session(
  "4",
  "Working in a multi-cultural environment with a global app",
  "There are many difficulties and fun when providing on code base of iOS app to serve for many countries with different features, and communicating with colleagues in different locales...",
  DateTime(2018, 8, 30, 18, 40, 0),
  DateTime(2018, 8, 30, 18, 55, 0),
  speaker4,
  roomA,
  duration2,
  langJA,
);
var session5 = Session(
  "5",
  "キラリと光るテクニック、アプリをデモするときの心構え",
  "ついにきた、あなたが心血を注いで開発したアプリのお披露目の日、プレスも来てハンズオンもある。\nこのデモでビジネスの結果が変わる！重大な1日。\nそんな日に向けて、どんな準備をしておけばいいでしょうか？わずかの準備の差が、印象を大きく変えるのです。\niPhoneを使ったメディアアートの展示会で裏方を長年務めてきたスピーカーが、そのテクニックを語ります。",
  DateTime(2018, 8, 30, 18, 40, 0),
  DateTime(2018, 8, 30, 18, 55, 0),
  speaker5,
  roomB,
  duration2,
  langJA,
);
var session6 = Session(
  "6",
  "オープンソースMDMのmicromdmを用いて、個人でデバイス管理をやってみる",
  "企業におけるデバイス管理手法の一つに、MDMを用いる方法があります。\nしかし、有料のMDMソリューションサービスを個人で触るハードルは高く、MDMを試すことができてない人も多いのではないでしょうか。\nこのトークでは、オープンソースMDMのmicromdmを用いたMDMサービスの立ち上げ方やMDMCertを用いたMDM Push証明書の取得法、API経由でのMDMコマンドの発布について紹介していきます。",
  DateTime(2018, 8, 30, 19, 10, 0),
  DateTime(2018, 8, 30, 19, 25, 0),
  speaker6,
  roomA,
  duration2,
  langJA,
);
var session7 = Session(
  "7",
  "iOSエンジニアの為のgrpc-swift入門",
  "gRPCはGoogleが開発したハイパフォーマンスなRPC（Remote Procedure Call）プロトコルです。\nFirebase SDKにも組み込まれていて、間接的に使った方も多いと思います。\nトークでは、アプリからの通信の選択肢として、RESTやGraphQLに加えてgRPCも選べるように、\ngRPC自体の解説、grpc-swiftの開発状況や現状の課題をデモを交えお伝えします。",
  DateTime(2018, 8, 30, 19, 10, 0),
  DateTime(2018, 8, 30, 19, 25, 0),
  speaker7,
  roomB,
  duration2,
  langJA,
);
var session8 = Session(
  "8",
  "Code PushとReact Nativeで緊急OTAリリース！了解！",
  "Visual Studio App Centerに統合されたCode Push。\nCode PushとReact Nativeを使うと、Over the Airでアプリの変更点を即座にユーザーの手元に届けることができます。\n実際にCode Pushを使用してみて得られた知見を紹介します。",
  DateTime(2018, 8, 30, 19, 30, 0),
  DateTime(2018, 8, 30, 19, 45, 0),
  speaker8,
  roomA,
  duration2,
  langJA,
);
var session9 = Session(
  "9",
  "再利用可能なUI Componentsを利用したアプリ開発",
  "iOSアプリ開発とUIは切っても切り離せない関係ですが、UIの実装には時間がかかります。ですが、Atomic Designの考え方を取り入れ、デザイナーと認識合わせをすれば再利用可能な UI Components を定義することができ、開発速度を上げることができます。\nこのトークでは、UI Componentsを定義する上でデザイナーと認識合わせしたこと、実装する上で工夫したことを紹介します。",
  DateTime(2018, 8, 30, 19, 30, 0),
  DateTime(2018, 8, 30, 19, 45, 0),
  speaker9,
  roomB,
  duration2,
  langJA,
);
var session10 = Session(
  "10",
  "ツールとして利用するUIテスト",
  "Xcode 9よりXCTestにスクリーンショット撮影機能が実装されました。XCTestはテストコードから地域や言語を指定する事が可能で、xcodebuildで複数のシミュレーターでテストが実行可能なので、様々な画面サイズと条件のスクリーンを集める事が出来るのです。デザイン崩れ等はUIテストでも判別が難しい物の一つですが、半自動的にデザイン崩れを解消する事が可能になったので発表したいと思います。",
  DateTime(2018, 8, 30, 20, 0, 0),
  DateTime(2018, 8, 30, 20, 15, 0),
  speaker10,
  roomA,
  duration2,
  langJA,
);
var session11 = Session(
  "11",
  "Playground駆動開発のすすめ",
  "ほとんどのiOSエンジニアは、デザイナーさんからデザインを受け取り、その仕様通りに実装すると思います。\nが、それでもやはりデザイン調整は入ります。\nその度にSwiftの長いコンパイルを待ってUI調整を確認するのは、さぞツライ作業です。\n\nそこで、デザイン調整の工程をPlaygroundでやってしまおうというわけです\n...それが「Playground駆動開発」です！",
  DateTime(2018, 8, 30, 20, 20, 0),
  DateTime(2018, 8, 30, 20, 35, 0),
  speaker11,
  roomB,
  duration2,
  langJA,
);
var session12 = Session(
  "12",
  "設計時空のリファクタリング〜複数アーキテクチャを抱えたアプリのリファクタリング事例〜",
  "長く続くアプリ開発において、複数のアーキテクチャが積層のように負債となってしまうことは、割と多くの現場で起きているのではないでしょうか。\nより良い開発をしていくためには負債の返済という、痛みを伴う対応を迫られるときがいつかきます。\nこのトークでは自分が直近で直面した負債の返済について話をします。\nどう返済していったのか、チームとどうやって足並みをそろえたのか、様々な反省をお伝えします。",
  DateTime(2018, 8, 30, 20, 20, 0),
  DateTime(2018, 8, 30, 20, 35, 0),
  speaker12,
  roomA,
  duration2,
  langJA,
);
var session13 = Session(
  "13",
  "アルゴリズムを通じてよりよいアプリを",
  "アルゴリズムはコーディング面接以外にも使います。適切なアルゴリズムとデータ構造を使用して、アポイントスケジューラまたはコレクションビューの画像コラージュを実装しているかどうかは、優れたユーザーエクスペリエンスの鍵です。 この講演では、WWDC2018でSwiftでアルゴリズムを使用する際の主要なポイントをいくつか見直します。また、SwiftらしいSwiftで、アプリでアルゴリズムを効果的に適用する方法についても説明します。",
  DateTime(2018, 8, 30),
  DateTime(2018, 8, 30),
  speaker13,
  roomB,
  duration2,
  langJA,
);

// 8/31 (Fri)
var session14 = Session(
  "14",
  "OPENING",
  "",
  DateTime(2018, 8, 31, 10, 0, 0),
  DateTime(2018, 8, 31, 10, 40, 0),
  speaker1,
  roomA,
  duration1,
  langJA,
);
var session15 = Session(
  "15",
  "~~ †††† 漆黒の魔法 Objecitve-C Runtime API †††† ~~",
  "やめて！Objective-Cの黒魔術でRuntime APIで色々されたら、闇のコードと繋がっているiOSアプリエンジニアの精神まで燃え尽きちゃう。お願い、機能してXcode。あなたがここで倒れちゃうとマネージャーや社長との約束はどうなっちゃうの。ライフはまだ残っている。ここを耐えれば納期に間に合うんだから。次回「城n(ry\n\nObjective-Cの黒魔術を用いて闇のコードを紹介していきます。",
  DateTime(2018, 8, 31, 10, 50, 0),
  DateTime(2018, 8, 31, 11, 5, 0),
  speaker14,
  roomA,
  duration2,
  langJA,
);
var session16 = Session(
  "16",
  "Markdownをリアルタイムに解析する",
  "Markdownを解析する時にGitHubで探せば簡単にライブラリを何個も見つけることができます。しかし、をそれをリアルタイムとなるとなかなかみつけることができません。私は端末間で同期できるメモアプリを作成し、機能の一つに入力しながらMarkdown形式に色付けをする機能を実装しました。本トークではリアルタイムに文章を解析し、リッチな表現をどのようにして行っているのかを解説します。",
  DateTime(2018, 8, 31, 10, 50, 0),
  DateTime(2018, 8, 31, 11, 5, 0),
  speaker15,
  roomB,
  duration2,
  langJA,
);
var session17 = Session(
  "17",
  "複数のライブ映像を同期再生するのが大変だったので知見をお伝えします",
  "ライブ配信サービスが流行っている中、WWDC2017で `EXT-X-PROGRAM-DATE-TIME` タグのサポートが発表されました。\nこれにより、複数のAVPlayerに表示されるライブ映像を同期することが可能になりました。\n\nこのトークでは、\n・複数のライブ映像をズレなく同期再生するノウハウ\n・ハマりどころ\n・設計のコツ\nを実際にプロダクション環境で運用した経験をもとにお話します。",
  DateTime(2018, 8, 31, 10, 50, 0),
  DateTime(2018, 8, 31, 11, 5, 0),
  speaker16,
  roomC,
  duration2,
  langJA,
);
var session18 = Session(
  "18",
  "MicroViewControllerで無限にスケールするiOS開発",
  "`MicroViewController`という仕組みを導入したことで我々はメンバーの誰もが経験したことのない開発速度とスケーラビリティを手に入れました。\n「10人規模で画面の開発が可能」「全てのVCとVMは500行未満」「手軽に値レベルで実現可能なMock」「50のVCで構成される一画面」\n`MicroViewController`を取り入れた画面設計について、我々のベストプラクティスを紹介します。",
  DateTime(2018, 8, 31, 11, 20, 0),
  DateTime(2018, 8, 31, 11, 50, 0),
  speaker17,
  roomA,
  duration3,
  langJA,
);
var session19 = Session(
  "19",
  "Swift 4.2 はどのような進化をしているのか",
  "Xcode 10 から Swift 4.2 に変更となりますが、変更点のチェックはお済みでしょうか？\nCfPを出す現時点で Swift 4.2 には 18個の Proposal が実装されています。\n本トークでは時間の許す限りで、すべての Proposal についてその解説を努めていきたいと思います。",
  DateTime(2018, 8, 31, 11, 20, 0),
  DateTime(2018, 8, 31, 11, 50, 0),
  speaker18,
  roomB,
  duration3,
  langJA,
);
var session20 = Session(
  "20",
  "リアルタイム革命",
  "チャットに代表されるリアルタイムなアプリケーションを皆さんはどのように開発していますか？リアルタイムな双方向通信をサポートするソリューションを利用したり、Socket.ioなどを用いてWebSocketで自前で構築するなどあると思います。本セッションでは新たなクエリ言語として注目されるGraphQLのSubscriptionを用いる方法をGraphQLのマネージドサービスであるAWS AppSyncとあわせてご紹介します。",
  DateTime(2018, 8, 31, 11, 20, 0),
  DateTime(2018, 8, 31, 11, 50, 0),
  speaker19,
  roomC,
  duration3,
  langJA,
);
