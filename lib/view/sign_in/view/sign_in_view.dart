import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobx_denemeleri/view/sign_in/viewModel/sign_in_view_model.dart';

class SignInView extends StatelessWidget {
  final _viewModel = SignInViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
          child: Container(
        height: MediaQuery.of(context).size.height,
        child: buildColumn(context),
      )),
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
        Expanded(flex: 5, child: buildFormColumn()),
        Spacer(),
        Expanded(flex: 1, child: Text("")),
        Expanded(flex: 4, child: Text("")),
        Expanded(flex: 2, child: Text("")),
        Expanded(flex: 3, child: Text("")),
        Spacer(),
      ],
    );
  }

  Column buildFormColumn() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: buildTextFormField(),
        ),
        Expanded(
          flex: 2,
          child: buildTextFormField(),
        ),
      ],
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField();
  }

  Row tarz(BuildContext context) {
    return Row(
      children: [
        Expanded(child: buildDivider(context)),
        Text("ya da"),
        Expanded(child: buildDivider(context)),
      ],
    );
  }

  Divider buildDivider(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.grey,
      indent: MediaQuery.of(context).size.width * 0.04,
      endIndent: MediaQuery.of(context).size.width * 0.04,
    );
  }
}
