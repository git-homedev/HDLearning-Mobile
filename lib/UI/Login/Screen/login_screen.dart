import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hd_learning_app/Common/app_theme.dart';
import 'package:hd_learning_app/UI/Learning/Screen/learning_screen.dart';
import 'package:hd_learning_app/UI/Login/Controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController controler = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset(
                  "assets/images/login image1.png",
                  width: 340,
                  height: 264,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                width: 400,
                height: 387,
                decoration: const BoxDecoration(
                  color: AppTheme.primaryColor_500,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        "LOGIN AKUN",
                        style: GoogleFonts.nunito(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.whiteColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextFormField(
                              onChanged: controler.setEmail,
                              validator: controler.validateEmail,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: AppTheme.netralColor_900,
                                ),
                                filled: true,
                                fillColor: AppTheme.whiteColor,
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: AppTheme.netralColor_400),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: "Email",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Obx(() {
                              return TextFormField(
                                onChanged: controler.setPassword,
                                validator: controler.validatePassword,
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: !controler.liatpassword.value,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: AppTheme.netralColor_900,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      controler.liatpassword.toggle();
                                    },
                                    child: Icon(
                                      controler.liatpassword.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: AppTheme.netralColor_900,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: AppTheme.whiteColor,
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppTheme.netralColor_400),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: "Password",
                                ),
                              );
                            }),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 350,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppTheme.primaryColor_800,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {
                                if (Form.of(context).validate()) {
                                  Get.off(LearningScreen());
                                }
                              },
                              child: Text(
                                "Masuk",
                                style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: AppTheme.whiteColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // test aja
                    SizedBox(
                      width: 231,
                      height: 35,
                      child: Text(
                        "Belum punya akun? Silahkan hubungi admin untuk melakukan registrasi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.whiteColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
