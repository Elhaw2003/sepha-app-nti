import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sepha_app_nti/core/utilities/app_texts.dart';
import 'package:sepha_app_nti/features/home/presentation/controller/sepha/sepha_cubit.dart';
import 'package:sepha_app_nti/features/home/presentation/view/widgets/add_counter_and_rest_widget.dart';
import 'package:sepha_app_nti/features/home/presentation/view/widgets/counter_widget_box.dart';
import 'package:sepha_app_nti/features/home/presentation/view/widgets/item_widget.dart';
import '../../../../../core/widgets/custom_button_text_widget.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<SephaCubit>(context);
    return BlocBuilder<SephaCubit, SephaState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              ItemWidget(text: cubit.elzekr),
              const SizedBox(height: 20,),
              CounterWidgetBox(text: cubit.counter.toString(),),
              const SizedBox(height: 15,),
              const AddCounterAndRestWidget(),
              const SizedBox(height: 20,),
               CustomButtonTextWidget(
                text: AppTexts.ast,
                 onPressed: (){
                  cubit.changeElzekr(AppTexts.ast);
                 },
              ),
              const SizedBox(height: 15,),
               CustomButtonTextWidget(
                 text: AppTexts.sp,
                 onPressed: (){
                   cubit.changeElzekr(AppTexts.sp);
                 },
               ),
              const SizedBox(height: 15,),
               CustomButtonTextWidget(
                 text: AppTexts.alh,
                 onPressed: (){
                   cubit.changeElzekr(AppTexts.alh);
                 },
               ),
              const SizedBox(height: 15,),
               CustomButtonTextWidget(
                 text: AppTexts.alk,
                 onPressed: (){
                   cubit.changeElzekr(AppTexts.alk);
                 },
               ),
              const SizedBox(height: 15,),
              CustomButtonTextWidget(
                text: AppTexts.la,
                onPressed: (){
                  cubit.changeElzekr(AppTexts.la);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
