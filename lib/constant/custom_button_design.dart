
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree
//CustomPaint(
//

//Copy this CustomPainter code to the Bottom of the File
class CustomButtonDesign extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {

Path path_0 = Path();
path_0.moveTo(size.width*0.9557522,size.height*0.04081633);
path_0.cubicTo(size.width*0.9753009,size.height*0.04081633,size.width*0.9911504,size.height*0.1139127,size.width*0.9911504,size.height*0.2040816);
path_0.lineTo(size.width*0.9911504,size.height*0.2557857);
path_0.cubicTo(size.width*0.9911504,size.height*0.2611898,size.width*0.9901106,size.height*0.2653061,size.width*0.9889381,size.height*0.2653061);
path_0.lineTo(size.width*0.9889381,size.height*0.2653061);
path_0.cubicTo(size.width*0.9803850,size.height*0.2653061,size.width*0.9734513,size.height*0.2972857,size.width*0.9734513,size.height*0.3367347);
path_0.lineTo(size.width*0.9734513,size.height*0.6632653);
path_0.cubicTo(size.width*0.9734513,size.height*0.7027143,size.width*0.9803850,size.height*0.7346939,size.width*0.9889381,size.height*0.7346939);
path_0.lineTo(size.width*0.9889381,size.height*0.7346939);
path_0.cubicTo(size.width*0.9901106,size.height*0.7346939,size.width*0.9911504,size.height*0.7387918,size.width*0.9911504,size.height*0.7441959);
path_0.lineTo(size.width*0.9911504,size.height*0.7959184);
path_0.cubicTo(size.width*0.9911504,size.height*0.8860878,size.width*0.9753009,size.height*0.9591837,size.width*0.9557522,size.height*0.9591837);
path_0.lineTo(size.width*0.04424779,size.height*0.9591837);
path_0.cubicTo(size.width*0.02469788,size.height*0.9591837,size.width*0.008849558,size.height*0.8860878,size.width*0.008849558,size.height*0.7959184);
path_0.lineTo(size.width*0.008849558,size.height*0.7441959);
path_0.cubicTo(size.width*0.008849558,size.height*0.7387918,size.width*0.009890310,size.height*0.7346939,size.width*0.01106195,size.height*0.7346939);
path_0.lineTo(size.width*0.01106195,size.height*0.7346939);
path_0.cubicTo(size.width*0.01961504,size.height*0.7346939,size.width*0.02654867,size.height*0.7027143,size.width*0.02654867,size.height*0.6632653);
path_0.lineTo(size.width*0.02654867,size.height*0.3367347);
path_0.cubicTo(size.width*0.02654867,size.height*0.2972857,size.width*0.01961504,size.height*0.2653061,size.width*0.01106195,size.height*0.2653061);
path_0.lineTo(size.width*0.01106195,size.height*0.2653061);
path_0.cubicTo(size.width*0.009890487,size.height*0.2653061,size.width*0.008849558,size.height*0.2611898,size.width*0.008849558,size.height*0.2557857);
path_0.lineTo(size.width*0.008849558,size.height*0.2040816);
path_0.cubicTo(size.width*0.008849558,size.height*0.1139127,size.width*0.02469788,size.height*0.04081633,size.width*0.04424779,size.height*0.04081633);
path_0.lineTo(size.width*0.9557522,size.height*0.04081633);
path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.shader = ui.Gradient.linear(Offset(size.width*0.05796460,size.height*0.04081633), Offset(size.width*0.09316681,size.height*1.594141), [Color(0xff6DFF83).withOpacity(1),Color(0xff0B6511).withOpacity(1)], [0,1]);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
path_1.moveTo(size.width*0.008849558,size.height*0.3061224);
path_1.cubicTo(size.width*0.01618075,size.height*0.3061224,size.width*0.02212389,size.height*0.3335327,size.width*0.02212389,size.height*0.3673469);
path_1.lineTo(size.width*0.02212389,size.height*0.6326531);
path_1.cubicTo(size.width*0.02212389,size.height*0.6664673,size.width*0.01618075,size.height*0.6938776,size.width*0.008849558,size.height*0.6938776);
path_1.lineTo(size.width*0.008849558,size.height*0.3061224);
path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.shader = ui.Gradient.linear(Offset(size.width*0.009513274,size.height*0.3061224), Offset(size.width*0.04975664,size.height*0.3629571), [Color(0xff6DFF83).withOpacity(1),Color(0xff0B6511).withOpacity(1)], [0,1]);
canvas.drawPath(path_1,paint_1_fill);

Path path_2 = Path();
path_2.moveTo(size.width*0.9911504,size.height*0.3061224);
path_2.cubicTo(size.width*0.9838186,size.height*0.3061224,size.width*0.9778761,size.height*0.3335327,size.width*0.9778761,size.height*0.3673469);
path_2.lineTo(size.width*0.9778761,size.height*0.6326531);
path_2.cubicTo(size.width*0.9778761,size.height*0.6664673,size.width*0.9838186,size.height*0.6938776,size.width*0.9911504,size.height*0.6938776);
path_2.lineTo(size.width*0.9911504,size.height*0.3061224);
path_2.close();

Paint paint_2_fill = Paint()..style=PaintingStyle.fill;
paint_2_fill.shader = ui.Gradient.linear(Offset(size.width*0.9904867,size.height*0.3061224), Offset(size.width*0.9502434,size.height*0.3629571), [Color(0xff6DFF83).withOpacity(1),Color(0xff0B6511).withOpacity(1)], [0,1]);
canvas.drawPath(path_2,paint_2_fill);

Paint paint_3_stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.002212389;
paint_3_stroke.shader = ui.Gradient.linear(Offset(size.width*0.05000000,size.height*-5.312816e-7), Offset(size.width*0.09093628,size.height*1.688767), [Color(0xff6DFF83).withOpacity(1),Color(0xff0B6511).withOpacity(1)], [0,1]);
canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.001106195,size.height*0.005102041,size.width*0.9977876,size.height*0.9897959),bottomRight: Radius.circular(size.width*0.04314159),bottomLeft:  Radius.circular(size.width*0.04314159),topLeft:  Radius.circular(size.width*0.04314159),topRight:  Radius.circular(size.width*0.04314159)),paint_3_stroke);

Paint paint_3_fill = Paint()..style=PaintingStyle.fill;
paint_3_fill.color = Color(0xff000000).withOpacity(1.0);
canvas.drawRRect(RRect.fromRectAndCorners(Rect.fromLTWH(size.width*0.001106195,size.height*0.005102041,size.width*0.9977876,size.height*0.9897959),bottomRight: Radius.circular(size.width*0.04314159),bottomLeft:  Radius.circular(size.width*0.04314159),topLeft:  Radius.circular(size.width*0.04314159),topRight:  Radius.circular(size.width*0.04314159)),paint_3_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
return true;
}
}