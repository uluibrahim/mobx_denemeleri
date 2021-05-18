import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

part 'sign_in_view_model.g.dart';

class SignInViewModel = _SignInViewModelBase with _$SignInViewModel;

abstract class _SignInViewModelBase with Store {
  @observable
  String login = "Giriş Yap";
  String register = "Kayıt Ol";
  // Url
  String loginSvgUrl = "asset/svg/signIn.svg";
  //
  String textPassword = "Şifre";
  String textEmail = "Email";
  //
  String forgetPassword = "Şifremi Unuttum ?";
  String bottomText = "Eğer mevcut bir hesabın yoksa ";
  String or="ya da";
  // ICON
  IconData googleIcon = MaterialCommunityIcons.google;
  IconData twitterIcon = MaterialCommunityIcons.twitter;
  // SHAPE
  OutlineInputBorder shape =
      OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(80)));

  // form text ınput type
  TextInputType textInputTypeEmail= TextInputType.emailAddress;
  TextInputType textInputTypePassword= TextInputType.visiblePassword;
}
