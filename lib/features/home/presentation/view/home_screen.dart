import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepha_app_nti/core/utilities/app_text_styles.dart';
import 'package:sepha_app_nti/core/utilities/app_texts.dart';
import 'package:sepha_app_nti/features/home/presentation/controller/sepha/sepha_cubit.dart';
import 'package:sepha_app_nti/features/home/presentation/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SephaCubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          centerTitle: true,
          title: Text(AppTexts.sep, style: AppTextStyle.blackS20W800,),
        ),
        body: const HomeBody(),
      ),
    );
  }
}
