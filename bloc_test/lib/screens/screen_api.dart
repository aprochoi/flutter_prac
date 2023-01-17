import 'package:flutter/material.dart';
import '../widget/step_widget.dart';


class AddrSearchZipCode extends StatefulWidget {
  const AddrSearchZipCode({Key? key}) : super(key: key);

  @override
  State<AddrSearchZipCode> createState() => _AddrSearchZipCodeState();
}

class _AddrSearchZipCodeState extends State<AddrSearchZipCode> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController zipCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('우편번호 검색'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const StepWidget(number: '1', msg: '5자리 새 우편번호를 입력하세요'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('우편번호'),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: TextFormField(
                          controller: zipCode,
                          autovalidateMode: AutovalidateMode.always,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if(value == null || value.isEmpty || value.length != 5) {
                              return '5자리 숫자만 입력 가능합니다.';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(width: 30,),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                            onPressed: () {
                              var zip = zipCode.text;
                              if(_formKey.currentState!.validate()) {
                                print('우편번호는 $zip 입니다.');
                                FocusManager.instance.primaryFocus?.unfocus();
                              }
                            },
                            child: const Text('검색')),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
