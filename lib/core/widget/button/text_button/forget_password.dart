import 'package:flutter/material.dart';
import 'package:mobx_denemeleri/view/sign_in/viewModel/sign_in_view_model.dart';

TextButton forgetPassword(BuildContext context) {
  final _viewModel=SignInViewModel();
  return TextButton(
    onPressed: () {},
    child: GestureDetector(
      onTap: () {},
      child: Text(
        _viewModel.forgetPassword,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    ),
  );
}
