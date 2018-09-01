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
  "muukii",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/81c3f3ba-6fb7-40a1-b065-e9f504b0dd94.jpg",
  "muukii0803",
);
const speaker21 = Speaker(
  "21",
  "Yusuke Kita",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/c6c4bf20-19b6-4176-8a0a-fff3efa8702b.png",
  "kitasuke",
);
const speaker22 = Speaker(
  "22",
  "にわタコ",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/d2e4a086-aec2-4274-b34d-5771d27afae1.jpg",
  "niwatako",
);
const speaker23 = Speaker(
  "23",
  "malt03",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/6bb009f9-1abc-489d-8b43-1937b33227e4.jpg",
  "malt03",
);
const speaker24 = Speaker(
  "24",
  "kobakei",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/3b12161c-1bbb-4054-b440-9c443229c520.jpg",
  "kobakei122",
);
const speaker25 = Speaker(
  "25",
  "家庭の医学",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/78b189be-f473-44ca-81b1-2b69e8f0c6aa.jpg",
  "kateinoigakukun",
);
const speaker26 = Speaker(
  "26",
  "Kyohei Ito",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/9f7a89fe-60bc-4e4e-813b-5a44a863060f.jpg",
  "KyoheiG3",
);
const speaker27 = Speaker(
  "27",
  "酒井篤",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/fd667335-1677-4d1d-aa6d-0a90ebb8bd3b.jpg",
  "_atsushisakai",
);
const speaker28 = Speaker(
  "28",
  "cokaholic",
  "https://fortee.jp/files/iosdc-japan-2018/speaker/1d38d33a-3817-4d28-8d6e-83cebda1039f.jpg",
  "TK_u_nya",
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
var session21 = Session(
  "21",
  "安定したチャットを実現するためのアプリとAPI設計",
  "SNS系のアプリのほとんどはチャット機能を持っています。\nしかし、チャット機能の実装はUXを求め始めると難しく、複雑になっていきます。\n「順番が狂う」「送信完了までメッセージが表示されない」「受信されない」「重い」など\nデータが蓄積されていくチャットのような機能はどのように実装すべきなのかをお話しします。",
  DateTime(2018, 8, 31, 13, 30, 0),
  DateTime(2018, 8, 31, 14, 00, 0),
  speaker20,
  roomA,
  duration3,
  langJA,
);
var session22 = Session(
  "22",
  "Swift Compilerの最適化入門 - AllocBoxToStack編",
  "varとletはSwiftコードを書く上で頻繁に使い、それぞれの特徴を理解してコードを書くことが重要です。しかし、実は適切な使い方をしていなくてもSwift Compilerがあるべき姿に最適化しています。このトークでは、Swift Compilerの最も重要な役割のひとつであるSIL(Swift Intermediate Language)を見ながらどのような最適化が行われているか紹介します。",
  DateTime(2018, 8, 31, 13, 30, 0),
  DateTime(2018, 8, 31, 14, 00, 0),
  speaker21,
  roomB,
  duration3,
  langJA,
);
var session23 = Session(
  "23",
  "スマホアプリエンジニアだから知ってほしいブロックチェーンと分散型アプリケーション",
  "数年以内に、皆さんのうちの何割かは、WebやクラウドのAPIを叩くのではなく、ブロックチェーンを叩くアプリケーションを開発するようになるでしょう。そして皆さんのうちほぼ全員が、そのようなアプリケーションを利用するようになるでしょう。\n分散型アプリケーションクライアントとしてのiOSアプリの未来を、実際にブロックチェーンサイドとクライアントサイドでプログラムを見ながらご紹介します。",
  DateTime(2018, 8, 31, 13, 30, 0),
  DateTime(2018, 8, 31, 14, 00, 0),
  speaker22,
  roomC,
  duration3,
  langJA,
);
var session24 = Session(
  "24",
  "macOSでもっとアプリを作ろう",
  "趣味でmacOSのネイティブアプリを作ったときの知見を共有します。\nmacOSのネイティブアプリを作る「意味」「楽しみ」「つらみ」「つらみ」あと「つらみ」の話です。\nみんながもっと作ってくれれば、エコシステムやドキュメントが充実して、この世界はもっと幸せになるはずです。\n是非聴きに来て、macOSでアプリを作って、できればライブラリも作って、一緒に世界を幸せにしましょう！",
  DateTime(2018, 8, 31, 13, 30, 0),
  DateTime(2018, 8, 31, 14, 00, 0),
  speaker23,
  roomD,
  duration3,
  langJA,
);
var session25 = Session(
  "25",
  "iOSアプリ内で不正なSSL証明書を検知する",
  "「HTTPS化していればセキュリティ対策は十分」などと思っていませんか？\nHTTPS化していても、無線LANやネットワーク機器にセキュリティ対策がなされていないと、中間者攻撃によって通信が盗聴・改ざんされるリスクがあります。これを防ぐ方法として、不正なSSL証明書を検知するピン留めという手法があります。\n本発表ではピン留めを実装する手順、またSSL証明書の更新の際に気をつけることを紹介します。",
  DateTime(2018, 8, 31, 14, 20, 0),
  DateTime(2018, 8, 31, 14, 50, 0),
  speaker24,
  roomA,
  duration3,
  langJA,
);
var session26 = Session(
  "26",
  "コンパイラから紐解くSwift method dispatch",
  "Swiftには実行するメソッドを効率的に決定する機構があります。\nしかし、静的型付け言語であるにも関わらず動的に決定せざるを得ないパターンや、finalやprivateなどの修飾子がパフォーマンスに影響するパターンなど、実際にはどのような動きをしているのでしょうか。\nこのトークではSwiftコンパイラの中からその疑問を紐解いていきます。",
  DateTime(2018, 8, 31, 14, 20, 0),
  DateTime(2018, 8, 31, 14, 50, 0),
  speaker25,
  roomB,
  duration3,
  langJA,
);
var session27 = Session(
  "27",
  "grpc-swiftを使ってiOSアプリでも快適なgRPC通信を行う",
  "Swiftで記述されたiOSアプリでも、grpc-swiftを利用してgRPC通信をある程度手軽に利用可能になります。\ngRPCを利用すると、通常の通信を行うよりも通信速度は速く通信量も少なく済み、更には双方向での通信を行うことができます。\n今回は、gRPCの概要、grpc-swiftの導入方法、実際にプロジェクトで利用する際の応用的なことや、grpc-swiftにコントリビュートしたときの経験談などをお話させていただきます。",
  DateTime(2018, 8, 31, 14, 20, 0),
  DateTime(2018, 8, 31, 14, 50, 0),
  speaker26,
  roomC,
  duration3,
  langJA,
);
var session28 = Session(
  "28",
  "海外展開を目指すアプリでセキュアで速い画像と動画の閲覧を実現した話",
  "「家族アルバム みてね」は、徐々に国外にユーザーを拡大しています。常に海外での快適な利用が実現されることを意識して開発していますが、その中でもメディアを高速に配信し・閲覧できることは、最重要課題でした。どのように課題を認識・改善したかの知見をお話ししたいと思います。\n\nアジェンダ\n1. 認識（NewRelicによる計測）\n2. 設計（AWSも含むシステム全体）\n3. アプリ実装について\n4. 成果とさらなる課題",
  DateTime(2018, 8, 31, 14, 20, 0),
  DateTime(2018, 8, 31, 14, 35, 0),
  speaker27,
  roomD,
  duration2,
  langJA,
);
var session29 = Session(
  "29",
  "とある端末の触覚技術 -フィードバック",
  "iPhoneの画面上で3DTouchを行うと、ブルッと端末が震えるフィードバックを返してくれます。\nフィードバックが返ってくると、なんとなく気持ち良いですよね笑\nその気持ち良いフィードバックは、iPhoneに搭載されている「Taptic Engine」によって実現されています。\nこのトークでは「Taptic Engine」とはどういった技術で、nどのような場面で使用すれば良いのかという話をします。",
  DateTime(2018, 8, 31, 14, 40, 0),
  DateTime(2018, 8, 31, 14, 55, 0),
  speaker28,
  roomD,
  duration2,
  langJA,
);
