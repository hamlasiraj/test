import 'package:flutter/material.dart';
import 'package:portfolio/Core/Constant/strings.dart';
import '../../Controller/responsive.dart';

class RightAbout extends StatelessWidget {
  const RightAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: Responsive.isDesktop(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        const Text(
          "I'm Siraj",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Text("Software Developer",
            style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w600)),
        const SizedBox(height: 15),
        SizedBox(
          width: 400,
          child: Text(AppStrings.abouMe,
              textAlign: Responsive.isDesktop(context)
                  ? TextAlign.start
                  : TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 15),
        Responsive.isDesktop(context)
            ? const Row(
                children: [
                  /*-----------------------------------------------*/
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Age:',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(AppStrings.age,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text('Phone:',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text(AppStrings.phone,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 20),

                  /*-----------------------------------------------*/
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Email:',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(AppStrings.email,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text('Place: ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text(AppStrings.place,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  )
                ],
              )
            : const Column(
                children: [
                  /*-----------------------------------------------*/
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age:',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('18',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Phone:',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text('+213 783907209',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),

                  /*-----------------------------------------------*/
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Email:',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                          Text('enghamlasiraj@gmail.com',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Place: ',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          Text('Algeria',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  )
                ],
              ),
      ],
    );
  }
}
