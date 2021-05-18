import 'package:flutter/material.dart';
import 'package:mobx_denemeleri/view/sign_in/viewModel/sign_in_view_model.dart';


class LoginButton extends StatelessWidget {
  const LoginButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _viewModel=SignInViewModel();
    return RaisedButton(
      onPressed: () {},
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Text(_viewModel.login,style: Theme.of(context)
            .textTheme
            .title
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
       shape: _viewModel.shape,
    );
  }
}
