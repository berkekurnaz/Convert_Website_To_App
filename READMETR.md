# Website'yi Uygulamaya Dönüştür

Bu depoda websitenizi mobil bir uygulama dönüştürmeye yarayan hazır bir proje bulunmaktadır. Gerekli ayarlamaları kendi isteklerinize göre yaparak sizde hızlıca websitenizi mobil uygulamaya dönüştürebilirsiniz.

## Nasıl Çalışır
Proje dizininin `lib` klasörü altındaki `data` klasörünün içerisinde bulunan `WebsiteData.dart` dosyasında bulunan url adresine göre `Home` ekranında bir web view çalıştırırır. <br/>
Açılması istenen url `SplashScreen` ekranında yüklenir, eğer bu aşamada internet bağlantısı yoksa `MyConnectionError` ekranına kullanıcıyı yönlendirir. <br/>
Her sahnenin arkaplan rengi, yazı rengi, yazıları ve yazı fontları kullanıcı tarafından `WebsiteData.dart` dosyası içinde belirtilebilir.

## Kurulum Ve Yapılandırma
1-) Flutter Kurulu Değil İse Kurun <br/>
2-) Projeyi Bilgisayarınıza İndirin. <br/>
3-) lib -> data -> WebsiteData.dart dosyasını kendinize göre düzenleyin. <br/>
4-) `flutter build apk` komutu ile uygulamayı build edin. <br/>
5-) Uygulamayı gerçek bir cihazda test edin. <br/>

## Dökümantasyon
Burada projeye ait özelleştirebileceğiniz seçenekler açıklanmıştır.
#### Uygulama İçerisinde AppBar İsterseniz
`WebsiteData.dart` dosyasında `appBarIsExist` özelliğini `true` yapın.
#### Uygulama İçerisindeki Fontlar Listesi
Aşağıdaki Listede Bulunan Font İsimlerini Projenizde Kullanabilirsiniz.
- Montserrat
- Comfortaa
- Abel
- Nunito
- Roboto
#### Uygulama İsmini Değiştirme
pubspec.yaml dosyası içerisinde en üstte bulunan name kısmındaki değeri kendi uygulama isminizle değiştirin. Ardından ise android -> app -> src -> main içerisindeki AndroidManifest.xml dosyasındaki application etiketi arasındaki android:label içerisine uygulama isminizi yazın.
#### Uygulamaya İkon Ekleme
android -> app -> src -> main -> res altında bulunan klasörlerin içerisindeki `ic_launcher.png` dosyasını kendi ikonunuz ile değiştirin. Kendi ikonunuzun ismi `ic_launcher.png` olmalıdır.
#### Uygulamayı İmzalama ve Release Modda Build Alma
Resmi Dökümana Ulaşmak İçin [Tıklayın](https://flutter.dev/docs/deployment/android)
#### Uygulamayı Google Play Store'de Yayınlama
Uygulamayı imzaladıktan sonra release modda build alırsanız google play developer console üzerinden uygulamayı yayınlayabilirsiniz.

## Geliştiriciler
Berke Kurnaz <br/>
www.berkekurnaz.com

## İletişim
kurnaz.berke1907@gmail.com

## Örnek Resimler
![image1](https://i.resimyukle.xyz/x0K92c.png)
![image2](https://i.resimyukle.xyz/HdTGKO.png)
![image3](https://i.resimyukle.xyz/7xLKbP.png)

