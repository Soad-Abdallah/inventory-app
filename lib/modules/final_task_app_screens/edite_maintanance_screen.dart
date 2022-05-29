import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fristapp/layout/final_task_app/cubit/cubit.dart';
import 'package:fristapp/layout/final_task_app/cubit/states.dart';
import 'package:fristapp/shared/component/component.dart';
import 'package:fristapp/shared/styles/icon_broken.dart';
import 'package:intl/intl.dart';

class EditeMiantanenceScreen extends StatelessWidget {
  
  late final int index;
  EditeMiantanenceScreen(
    {
      required this.index,
    }
  ){}

  var TypeOfMaintenanceController = TextEditingController();
  var StartMaintenanceDateController = TextEditingController();
  var EndMaintenanceDateController = TextEditingController();
  var MaintenanceWorkerDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FinalTaskCubit, TaskStates>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(

          ),
          body: Column(
            children: [
                  defultFormField(
                      controller: TextEditingController(),
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'name must not be empty';
                        }
                        return null;
                      },
                      lable: 'type of maintenance',
                      prefix: IconBroken.User,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    defultFormField(
                      controller: StartMaintenanceDateController,
                      type: TextInputType.datetime,
                      onTap: (){
                        showDatePicker(
                              context: context, 
                              initialDate: DateTime.now(), 
                              firstDate: DateTime.now(), 
                              lastDate: DateTime.parse('2022-09-30'),
                              ).then((value)
                              {
                                StartMaintenanceDateController.text = DateFormat.yMMMd().format(value!);
                                print(DateFormat.yMMMd().format(value));
                              });},
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return 'birthDey must not be empty';
                                }
                                return null;
                              },
                              lable: 'start maintenance date',
                              prefix: IconBroken.Calendar,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    defultFormField(
                      controller: EndMaintenanceDateController,
                      type: TextInputType.datetime,
                      onTap: (){
                        showDatePicker(
                              context: context, 
                              initialDate: DateTime.now(), 
                              firstDate: DateTime.now(), 
                              lastDate: DateTime.parse('2022-09-30'),
                              ).then((value)
                              {
                                EndMaintenanceDateController.text = DateFormat.yMMMd().format(value!);
                                print(DateFormat.yMMMd().format(value));
                              });},
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return 'birthDey must not be empty';
                                }
                                return null;
                              },
                              lable: 'End maintenance date',
                              prefix: IconBroken.Calendar,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    defultFormField(
                      controller: MaintenanceWorkerDateController,
                      type: TextInputType.name,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'name must not be empty';
                        }
                       return null;
                      },
                      lable: 'Done By',
                      prefix: IconBroken.User,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
            ]
          ),
          
    );
    },
    );
  }
}