import 'package:flutter/material.dart';
import 'package:my_portfolio/app/constants/custom_sized_box.dart';
import 'package:my_portfolio/app/constants/responsive.dart';
import 'package:my_portfolio/app/constants/theme.dart';
import 'package:my_portfolio/app/constants/validators.dart';

import '../../common_widgets/bottom_bar.dart';
import '../../common_widgets/nav/nav_drawer.dart';
import '../../common_widgets/nav/navbar.dart';
import '../../common_widgets/textfield/custom_text_area.dart';
import '../../common_widgets/textfield/custom_text_form_field.dart';
import 'widgets/success_widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  bool formSubmitted = false;
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      endDrawer: const NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Contact me',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),

            /// Form
            Container(
              color: AppColors.blueAccent,
              constraints: const BoxConstraints(maxWidth: 1150),
              padding: const EdgeInsets.all(30),
              child: formSubmitted
                  ? SuccessWidget(nameController: nameController)
                  : Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Screen.isMobile(context)
                              ? Column(
                                  children: [
                                    CustomTextFormField(
                                        controller: nameController,
                                        hint: 'e.g. Viresh Dev',
                                        label: 'Name',
                                        icon: Icons.person,
                                        isRequired: true,
                                        validator: isValidName),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    CustomTextFormField(
                                        controller: emailController,
                                        hint: 'e.g. xyz@gmail.com',
                                        label: 'Email',
                                        icon: Icons.email,
                                        isRequired: true,
                                        validator: isValidEmail),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                          controller: nameController,
                                          hint: 'e.g. Viresh Dev',
                                          label: 'Name',
                                          icon: Icons.person,
                                          isRequired: true,
                                          validator: isValidName),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: CustomTextFormField(
                                          controller: emailController,
                                          hint: 'e.g. xyz@gmail.com',
                                          label: 'Email',
                                          icon: Icons.email,
                                          isRequired: true,
                                          validator: isValidEmail),
                                    ),
                                  ],
                                ),
                          const SBH30(),
                          Screen.isMobile(context)
                              ? Column(
                                  children: [
                                    CustomTextFormField(
                                      controller: phoneController,
                                      hint: 'e.g. +91 xxx xxx xxxx',
                                      label: 'Mobile',
                                      icon: Icons.phone,
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    CustomTextFormField(
                                      controller: addressController,
                                      hint: 'e.g. New Delhi',
                                      label: 'Place',
                                      icon: Icons.home,
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                        controller: phoneController,
                                        hint: 'e.g. +91 xxx xxx xxxx',
                                        label: 'Mobile',
                                        icon: Icons.phone,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Expanded(
                                      child: CustomTextFormField(
                                        controller: addressController,
                                        hint: 'e.g. New Delhi',
                                        label: 'Place',
                                        icon: Icons.home,
                                      ),
                                    ),
                                  ],
                                ),
                          const SBH30(),
                          Screen.isMobile(context)
                              ? Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    CustomTextArea(
                                        controller: messageController,
                                        hint: 'Type here...',
                                        label: 'Message',
                                        isRequired: true,
                                        icon: Icons.message,
                                        validator: isValidText),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Container(
                                      height: 52.0,
                                      padding: const EdgeInsets.only(bottom: 1),
                                      child: FilledButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            _formKey.currentState!.save();
                                            setState(() {
                                              formSubmitted = true;
                                            });
                                          }
                                        },
                                        style: FilledButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4))),
                                        child: const Text(
                                          'Send Message',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: CustomTextArea(
                                          controller: messageController,
                                          hint: 'Type here...',
                                          label: 'Message',
                                          isRequired: true,
                                          icon: Icons.message,
                                          validator: isValidText),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),

                                    /// SUbmit Button
                                    Expanded(
                                      child: Container(
                                        height: 52.0,
                                        padding:
                                            const EdgeInsets.only(bottom: 1),
                                        child: FilledButton(
                                          onPressed: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              _formKey.currentState!.save();
                                              setState(() {
                                                formSubmitted = true;
                                              });
                                            }
                                          },
                                          style: FilledButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          4))),
                                          child: const Text(
                                            'Send Message',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                          /// Requires Info
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Field marked as '),
                              Text(
                                '*',
                                style: TextStyle(color: AppColors.red),
                              ),
                              Text(' are required!')
                            ],
                          )
                        ],
                      ),
                    ),
            ),
            const SizedBox(
              height: 50,
            ),

            /// Bottom Bar
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
