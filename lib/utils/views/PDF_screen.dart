import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:printing/printing.dart';

import 'Per_Screen.dart';

class PDF extends StatefulWidget {
  const PDF({super.key});

  @override
  State<PDF> createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        pdfFileName: '${resumeData.name}.pdf',
        build: (format) => generatePdf(),
      ),
    );
  }
}

Future<Uint8List> generatePdf() async {
  final pdf = pd.Document();
  // final imageProfile = pd.MemoryImage(imgPath!.readAsBytesSync());
  // final img = imageBytes;

  // final img = await rootBundle.load('assets/call.jpg');
  // final imageBytes = img.buffer.asUint8List();
  // pd.Image image1 = pd.Image(pd.MemoryImage(imageBytes));
  //
  // final img2 = await rootBundle.load('assets/mail.jpg');
  // final Bytes = img2.buffer.asUint8List();
  // pd.Image image2 = pd.Image(pd.MemoryImage(Bytes));
  //
  // final img3 = await rootBundle.load('assets/website.jpg');
  // final Bytes1 = img3.buffer.asUint8List();
  // pd.Image image3 = pd.Image(pd.MemoryImage(Bytes1));
  //
  // final img4 = await rootBundle.load('assets/home.webp');
  // final Bytes2 = img4.buffer.asUint8List();
  // pd.Image image4 = pd.Image(pd.MemoryImage(Bytes2));

  final profile = pd.MemoryImage(imgPath!.readAsBytesSync());
  final Bytes3 = profile.bytes;

  pd.Image image5 = pd.Image(pd.MemoryImage(Bytes3),
      height: 150, width: 150, fit: pd.BoxFit.cover);

  pdf.addPage(
    pd.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pd.Column(
            // mainAxisAlignment: pd.MainAxisAlignment.spaceEvenly,
            children: [
              pd.Row(
                // crossAxisAlignment: pd.CrossAxisAlignment.start,
                //  mainAxisAlignment: pd.MainAxisAlignment.start,
                children: [
                  pd.Column(children: [
                    pd.Container(
                        height: 720,
                        width: 260,
                        decoration: const pd.BoxDecoration(
                          color: PdfColors.black,
                        ),
                        child: pd.Column(children: [
                          // mainAxisAlignment: pd.MainAxisAlignment.center,

                          pd.Padding(
                            padding: pd.EdgeInsets.fromLTRB(110, 50, 0, 0),
                            child: pd.Container(
                              height: 150,
                              width: 150,
                              decoration: pd.BoxDecoration(
                                color: PdfColors.black,
                                border: pd.Border.all(
                                  color: PdfColors.white, // Change the color to your desired border color
                                  width: 15, // Adjust the width of the border as needed
                                ),
                              ),
                              child: image5, // Assuming image5 is a PDF image or widget
                            ),
                          ),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(50, 20, 0, 0),
                              child: pd.Text(
                                resumeData.name!,
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 28,
                                  fontWeight: pd.FontWeight.bold,
                                ),
                              )),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(90, 0, 0, 0),
                              child: pd.Text('Flutter Developer',
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 22,
                                ),
                              )),

                          pd.Row(
                            crossAxisAlignment: pd.CrossAxisAlignment.center,
                             mainAxisAlignment: pd.MainAxisAlignment.center,
                            children: [
                              pd.Container(
                                margin: pd.EdgeInsets.fromLTRB(0, 15, 10, 0),
                                width: 30, // Double the radius for diameter
                                height: 30, // Double the radius for diameter
                                decoration: pd.BoxDecoration(
                                  shape: pd.BoxShape.circle,
                                  color: PdfColors.red, // Change the color as needed
                                ),
                              ),

                              pd.Padding(
                                  padding: pd.EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: pd.Text('About Me',
                                    style: pd.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 28,
                                      fontWeight: pd.FontWeight.bold,
                                    ),
                                  )),


                            ],
                          ),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(100, 0, 0, 0),
                              child: pd.Text('Flutter Developer'*8,
                                style: pd.TextStyle(
                                  color: PdfColors.grey,
                                  fontSize: 12,
                                ),
                              )),

                          pd.Row(
                            crossAxisAlignment: pd.CrossAxisAlignment.center,
                            mainAxisAlignment: pd.MainAxisAlignment.center,
                            children: [
                              pd.Container(
                                margin: pd.EdgeInsets.fromLTRB(0, 15, 10, 0),
                                width: 30, // Double the radius for diameter
                                height: 30, // Double the radius for diameter
                                decoration: pd.BoxDecoration(
                                  shape: pd.BoxShape.circle,
                                  color: PdfColors.red, // Change the color as needed
                                ),
                              ),

                              pd.Padding(
                                  padding: pd.EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: pd.Text('Education',
                                    style: pd.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 28,
                                      fontWeight: pd.FontWeight.bold,
                                    ),
                                  )),


                            ],
                          ),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(80, 20, 0, 0),
                              child: pd.Text('Swarnim Universuty',
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                  fontWeight: pd.FontWeight.bold,
                                ),
                              )),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(10, 5, 0, 0),
                              child: pd.Text('Bachlor degree',
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 15,
                                  // fontWeight: pd.FontWeight.bold,
                                ),
                              )),

                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(-20, 5, 0, 0),
                              child: pd.Text('2005 - 2008',
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 13,
                                  // fontWeight: pd.FontWeight.bold,
                                ),
                              )),

                          pd.Row(
                            crossAxisAlignment: pd.CrossAxisAlignment.center,
                            mainAxisAlignment: pd.MainAxisAlignment.center,
                            children: [
                              pd.Container(
                                margin: pd.EdgeInsets.fromLTRB(0, 15, 10, 0),
                                width: 30, // Double the radius for diameter
                                height: 30, // Double the radius for diameter
                                decoration: pd.BoxDecoration(
                                  shape: pd.BoxShape.circle,
                                  color: PdfColors.red, // Change the color as needed
                                ),
                              ),

                              pd.Padding(
                                  padding: pd.EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: pd.Text('Skills      ',
                                    style: pd.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 28,
                                      fontWeight: pd.FontWeight.bold,
                                    ),
                                  )),


                            ],
                          ),


                          pd.Padding(
                              padding: pd.EdgeInsets.fromLTRB(-20, 5, 0, 0),
                              child: pd.Text('Flutter',
                                style: pd.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 18,
                                  // fontWeight: pd.FontWeight.bold,
                                ),
                              )),

                          // Adjust the borderRadius as needed
                        ])),

                    // pd.Positioned(
                    //   top: 50,
                    //   left: 50,
                    //   child: pd.Container(
                    //     height: 150,
                    //     width: 150,
                    //     decoration: const pd.BoxDecoration(
                    //       color: PdfColors.black,
                    //       // shape: pd.BoxShape.circle,
                    //     ),
                    //     child: image5,
                    //   ),
                    // ),
                    // pd.SizedBox(height: 100),

                    // pd.Positioned(
                    //   top: 200,
                    //   left: 30,
                    //   child: pd.Text(
                    //     "CONTACT",
                    //     style: pd.TextStyle(
                    //       color: PdfColors.white,
                    //       fontSize: 18,
                    //       fontWeight: pd.FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    //
                    // pd.Positioned(
                    //   top: 225,
                    //   left: 30,
                    //   child: pd.Container(
                    //     width: 150,
                    //     height: 4,
                    //     child: pd.Divider(
                    //       thickness: 4,
                    //       color: PdfColors.white,
                    //     ),
                    //   ),
                    // ),
                    //
                    // pd.Positioned(
                    //   top: 240,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.Container(
                    //         height: 30,
                    //         width: 30,
                    //         decoration: pd.BoxDecoration(
                    //           shape: pd.BoxShape.circle,
                    //         ),
                    //         child: image1,
                    //       ),
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(resumeData.phone!,
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 280,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.Container(
                    //         height: 30,
                    //         width: 30,
                    //         decoration: pd.BoxDecoration(
                    //           shape: pd.BoxShape.circle,
                    //         ),
                    //         child: image2,
                    //       ),
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         resumeData.email!,
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 320,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.Container(
                    //         height: 30,
                    //         width: 30,
                    //         decoration: pd.BoxDecoration(
                    //           shape: pd.BoxShape.circle,
                    //         ),
                    //         child: image3,
                    //       ),
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "www.com",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 360,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.Container(
                    //         height: 30,
                    //         width: 30,
                    //         decoration: pd.BoxDecoration(
                    //           shape: pd.BoxShape.circle,
                    //         ),
                    //         child: image4,
                    //       ),
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         resumeData.address!,
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 400,
                    //   left: 30,
                    //   child: pd.Text(
                    //     "SKILLS",
                    //     style: pd.TextStyle(
                    //       color: PdfColors.white,
                    //       fontSize: 20,
                    //       fontWeight: pd.FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    //
                    // pd.Positioned(
                    //   top: 430,
                    //   left: 30,
                    //   child: pd.Container(
                    //     width: 150,
                    //     height: 4,
                    //     child: pd.Divider(
                    //       thickness: 4,
                    //       color: PdfColors.white,
                    //     ),
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 450,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- Team Work",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 470,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- Time Management",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 490,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- Leadership",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 510,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- Verble &Written ",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 530,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "  Communication",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 560,
                    //   left: 30,
                    //   child: pd.Text(
                    //     "language",
                    //     style: pd.TextStyle(
                    //       color: PdfColors.white,
                    //       fontSize: 20,
                    //       fontWeight: pd.FontWeight.bold,
                    //     ),
                    //   ),
                    // ),
                    //
                    // pd.Positioned(
                    //   top: 585,
                    //   left: 30,
                    //   child: pd.Container(
                    //     width: 150,
                    //     height: 4,
                    //     child: pd.Divider(
                    //       thickness: 4,
                    //       color: PdfColors.white,
                    //     ),
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 600,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- English",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 630,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- French",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 660,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- China",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // pd.Positioned(
                    //   top: 690,
                    //   left: 30,
                    //   child: pd.Row(
                    //     children: [
                    //       pd.SizedBox(width: 10),
                    //       pd.Text(
                    //         "- Spanish ",
                    //         style: pd.TextStyle(
                    //           color: PdfColors.white,
                    //           fontSize: 18,
                    //           fontWeight: pd.FontWeight.bold,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ]),

                  pd.SizedBox(width: 20),

                  // pd.Column(
                  //   mainAxisAlignment: pd.MainAxisAlignment.end,
                  //   // crossAxisAlignment: pd.CrossAxisAlignment.start,
                  //   children: [
                  //     pd.Container(
                  //       margin: pd.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       width: 30, // Double the radius for diameter
                  //       height: 30, // Double the radius for diameter
                  //       decoration: pd.BoxDecoration(
                  //         shape: pd.BoxShape.circle,
                  //         color: PdfColors.red, // Change the color as needed
                  //       ),
                  //     ),
                  //     pd.Container(
                  //       width: 2, // Width of the vertical divider
                  //       height: 30, // Height of the vertical divider
                  //       color: PdfColors.red, // Color of the vertical divider
                  //     ),
                  //     pd.Container(
                  //       margin: pd.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       width: 15, // Double the radius for diameter
                  //       height: 15, // Double the radius for diameter
                  //       decoration: pd.BoxDecoration(
                  //         shape: pd.BoxShape.circle,
                  //         color: PdfColors.blue, // Change the color as needed
                  //       ),
                  //     ),
                  //     pd.Container(
                  //       width: 2, // Width of the vertical divider
                  //       height: 30, // Height of the vertical divider
                  //       color: PdfColors.red, // Color of the vertical divider
                  //     ),
                  //     pd.Container(
                  //       margin: pd.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       width: 15, // Double the radius for diameter
                  //       height: 15, // Double the radius for diameter
                  //       decoration: pd.BoxDecoration(
                  //         shape: pd.BoxShape.circle,
                  //         color: PdfColors.blue, // Change the color as needed
                  //       ),
                  //     ),
                  //     pd.Container(
                  //       width: 2, // Width of the vertical divider
                  //       height: 30, // Height of the vertical divider
                  //       color: PdfColors.red, // Color of the vertical divider
                  //     ),
                  //     pd.Container(
                  //       margin: pd.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       width: 15, // Double the radius for diameter
                  //       height: 15, // Double the radius for diameter
                  //       decoration: pd.BoxDecoration(
                  //         shape: pd.BoxShape.circle,
                  //         color: PdfColors.blue, // Change the color as needed
                  //       ),
                  //     ),
                  //     pd.Container(
                  //       width: 2, // Width of the vertical divider
                  //       height: 30, // Height of the vertical divider
                  //       color: PdfColors.red, // Color of the vertical divider
                  //     ),
                  //     pd.Container(
                  //       margin: pd.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //       width: 15, // Double the radius for diameter
                  //       height: 15, // Double the radius for diameter
                  //       decoration: pd.BoxDecoration(
                  //         shape: pd.BoxShape.circle,
                  //         color: PdfColors.blue, // Change the color as needed
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  //
                  //
                  // pd.SizedBox(width: 20),

                  pd.Column(
                    // mainAxisAlignment: pd.MainAxisAlignment.start,
                    crossAxisAlignment: pd.CrossAxisAlignment.start,
                    children: [
                      pd.Text(
                        resumeData.name!,
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 35,
                          fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.SizedBox(height: 10),
                      pd.Text(
                        "CHIEF EXLUSIVE OFFICE",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 20,
                          // fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.SizedBox(height: 70),
                      pd.Text(
                        "PROFESSIONAL PROFILE",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 22,
                          fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.Container(
                        // margin: pd.EdgeInsets.symmetric(horizontal: 30),
                        width: 290,
                        height: 4,
                        child: pd.Divider(
                          thickness: 4,
                          color: PdfColors.black,
                        ),
                      ),
                      pd.SizedBox(height: 15),
                      pd.Text(
                        "I am a growth hacker with 4+ years of \nexperience in sales and marketing in the \nUS market.\n",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                          //  fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.SizedBox(height: 20),
                      pd.Text(
                        "WORK EXPERIENCE",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 22,
                          fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.Container(
                        // margin: pd.EdgeInsets.symmetric(horizontal: 30),
                        width: 290,
                        height: 4,
                        child: pd.Divider(
                          thickness: 4,
                          color: PdfColors.black,
                        ),
                      ),
                      pd.SizedBox(height: 15),
                      pd.Text(
                        "CEO & President",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 18,
                        ),
                      ),
                      pd.SizedBox(height: 5),
                      pd.Text(
                        "April 2030 - June 2033",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 18,
                        ),
                      ),
                      pd.SizedBox(height: 10),
                      pd.Text(
                        "Effectively managed team of over 270 \nemployees in 12 locations in 3 countries.\nOversaw executive leadership, company \ntraining, and public relations with media.",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                      pd.SizedBox(height: 20),
                      pd.Text(
                        "EDUCATION",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 22,
                          fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.Container(
                        width: 290,
                        height: 4,
                        child: pd.Divider(
                          thickness: 4,
                          color: PdfColors.black,
                        ),
                      ),
                      pd.SizedBox(height: 20),
                      pd.Text(
                        "Bachelor of computer appilcation",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 18,
                        ),
                      ),
                      pd.Text(
                        "BCA / Bachelor of computer appilcation\n(computer appilcation)",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                      pd.SizedBox(height: 20),
                      pd.Text(
                        "REFERENCE",
                        style: pd.TextStyle(
                          color: PdfColors.black,
                          fontSize: 22,
                          fontWeight: pd.FontWeight.bold,
                        ),
                      ),
                      pd.Container(
                        // margin: pd.EdgeInsets.symmetric(horizontal: 30),
                        width: 290,
                        height: 4,
                        child: pd.Divider(
                          thickness: 4,
                          color: PdfColors.black,
                        ),
                      ),
                      pd.SizedBox(height: 20),
                      pd.Text(
                        "NAME:- Aayush Maurya",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                      pd.Text(
                        "RNW",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                      pd.Text(
                        "Phone:- 9313220217",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                      pd.Text(
                        "NAME:- hello@123.com",
                        style: pd.TextStyle(
                          color: PdfColors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ]);
      },
    ),
  );

  // await Printing.layoutPdf(onLayout: (format) => pdf.save(),);
  return await pdf.save();
}
