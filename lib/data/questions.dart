import 'package:quizappv3/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel("Flutter nedir?", {
    "Bir programlama dili": false,
    "Bir oyun motoru": false,
    "Bir mobil uygulama geliştirme çerçevesi": true,
    "Bir tarayıcı": false,
  }),
  QuestionModel("Flutter hangi programlama dili kullanılarak geliştirilir?", {
    "Python": false,
    "JavaScript": false,
    "Dart": true,
    "C++": false,
  }),
  QuestionModel("Flutter uygulamaları hangi platformlarda çalışabilir?", {
    "Yalnızca iOS": false,
    "Yalnızca Android": false,
    "Hem iOS hem Android": true,
    "Sadece web tarayıcılarında": false,
  }),
  QuestionModel("Flutter'da bir uygulama arayüzünü nasıl oluşturursunuz?", {
    "HTML kullanarak": false,
    "Java kullanarak": false,
    "Dart kullanarak": true,
    "XML kullanarak": false,
  }),
  QuestionModel("Flutter'da 'widget' kavramı neyi ifade eder?", {
    "İşlemcinin hızını": false,
    "Kullanıcı arayüzünü": true,
    "Ses efektlerini": false,
    "Ana ekranı": false,
  }),
  QuestionModel("Flutter'da 'Hot Reload' ne işe yarar?", {
    "Uygulamanın soğuk başlatılmasını hızlandırır": false,
    "Kod değişikliklerini anında görselleştirmenizi sağlar": true,
    "Uygulamanın güvenliğini artırır": false,
    "Ekran parlaklığını ayarlar": false,
  }),
  QuestionModel("Flutter'da 'stateless' ve 'stateful' widget arasındaki fark nedir?", {
    "İkincisi sadece iOS'ta çalışır": false,
    "İkincisi metin girişi widget'ları içerir": false,
    "İkincisi durum (state) tutar ve günceller": true,
    "Bir fark yok": false,
  }),
  QuestionModel("Flutter'da hangi veritabanı kullanabilirsiniz?", {
    "SQLite": true,
    "MySQL": false,
    "MongoDB": false,
    "Oracle": false,
  }),
  QuestionModel("Flutter'da 'pubspec.yaml' dosyası ne işe yarar?", {
    "İnternet tarayıcısını açar": false,
    "Paket bağımlılıklarını tanımlar": true,
    "Ekranın rengini ayarlar": false,
    "Ses efektlerini kontrol eder": false,
  }),
  QuestionModel("Flutter uygulamanızı hangi platformlarda dağıtarak yayınlayabilirsiniz?", {
    "Sadece Android": false,
    "Sadece iOS": false,
    "Hem Android hem iOS": true,
    "Yalnızca Windows": false,
  }),
];
