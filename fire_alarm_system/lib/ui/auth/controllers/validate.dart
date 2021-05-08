import 'package:flutter/material.dart';

void validate(GlobalKey<FormState> formKey) async {
  final FormState form = formKey.currentState;
  if (formKey.currentState.validate()) {
    form.save();
  }
}

