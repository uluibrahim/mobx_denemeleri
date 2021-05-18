import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobx_denemeleri/view/sign_in/viewModel/sign_in_view_model.dart';

import 'package:mobx_denemeleri/core/widget/button/raisedButton/logo_button.dart';
import 'package:mobx_denemeleri/core/widget/button/raisedButton/login_button.dart';
import 'package:mobx_denemeleri/core/widget/divider/grey_divider.dart';
import 'package:mobx_denemeleri/core/widget/button/text_button/forget_password.dart';
import 'package:mobx_denemeleri/core/widget/gesture_detector/register_gesture_detector.dart';
import 'package:mobx_denemeleri/core/widget/text_form_field/text_form_field.dart';

class SignInView extends StatelessWidget {
  final _viewModel = SignInViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: buildColumn(context),
        ),
      ),
    );
  }

  Column buildColumn(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Expanded(
          flex: 1,
          child: Align(
            child: Text(
              _viewModel.login,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: SvgPicture.asset(_viewModel.loginSvgUrl),
        ),
        Expanded(flex: 5, child: buildFormColumn(context)),
        Spacer(),
        Expanded(flex: 1, child: buildRowDividerStil(context)),
        Expanded(flex: 4, child: buildRowButton()),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: LoginButton(),
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Spacer(flex: 1),
              Expanded(
                flex: 1,
                child: forgetPassword(context),
              ),
              Expanded(
                flex: 1,
                child: buildTextBottom(context),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }

  Column buildFormColumn(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: buildSignInFormField(context, _viewModel.textEmail,
              _viewModel.textEmail, _viewModel.textInputTypeEmail, false),
        ),
        Expanded(
          flex: 2,
          child: buildSignInFormField(context, _viewModel.textPassword,
              _viewModel.textPassword, _viewModel.textInputTypePassword, true),
        ),
      ],
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField();
  }

  Row buildRowDividerStil(BuildContext context) {
    return Row(
      children: [
        Expanded(child: greyDivider(context)),
        Text(_viewModel.or),
        Expanded(child: greyDivider(context)),
      ],
    );
  }

  Row buildRowButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildLogoButton(_viewModel.googleIcon),
        buildLogoButton(_viewModel.twitterIcon),
      ],
    );
  }

  Row buildTextBottom(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(_viewModel.bottomText),
        buildGestureDetectorRegister(context, _viewModel.register),
      ],
    );
  }
}
