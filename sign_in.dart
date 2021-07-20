import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';

// ignore: use_key_in_widget_constructors
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            margin: EdgeInsets.only(top: 30),
            // decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: 70,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'Xin Chào',
                                    style: MyTheme.heading,
                                  ),
                                  const Text(
                                    'Đăng nhập tại đây',
                                    style: MyTheme.heading,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 100,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.person),
                                  labelText: 'Nhập vào email',
                                  labelStyle: MyTheme.heading4,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(width: 5),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                ),
                              ),
                              SizedBox(height: 20),
                              const TextField(
                                decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.lock),
                                    labelText: 'Mật khẩu',
                                    labelStyle: MyTheme.heading4,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 5),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30)))),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ignore: avoid_unnecessary_containers
                            Center(
                              child: Container(
                                width: 150,
                                height: 40,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Colors.green,
                                ),
                                child: const Center(
                                    child: Text(
                                  'Đăng nhập',
                                  style: MyTheme.heading3,
                                )),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 150),
                        Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(
                                Icons.chevron_right,
                                size: 30,
                                color: Colors.green,
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text("Chưa có tài khoản?",
                                        style: MyTheme.heading6),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Đăng ký',
                                      style: MyTheme.heading7,
                                    )
                                  ],
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
