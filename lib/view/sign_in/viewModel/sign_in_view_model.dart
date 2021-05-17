import 'package:mobx/mobx.dart';
part 'sign_in_view_model.g.dart';

class SignInViewModel = _SignInViewModelBase with _$SignInViewModel;

abstract class _SignInViewModelBase with Store {
  @observable
  String login = "Giriş Yap";
  String register = "Kayıt Ol";
  // Url
  String loginSvgUrl = "asset/svg/signIn.svg";
  //
  String textSifre = "Şifre";
  String textEmail = "Email";
  //
  String forgetPassword = "Şifremi Unuttum ?";
  String bottomText = "Eğer mevcut bir hesabın yoksa ";
}
