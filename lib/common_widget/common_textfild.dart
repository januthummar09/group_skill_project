import 'package:flutter/material.dart';

class CommonTextfild extends StatefulWidget {
  final IconData? suffixIcon;
  final IconData? preffixIcon;
  // final IconData? isSuffix;
  final String? isHintText;

  final bool? obscureText;
  final TextEditingController? textFildNameController;

  const CommonTextfild({
    Key? key,
    this.textFildNameController,
    this.obscureText,
    this.isHintText,
    // this.isSuffix,
    this.preffixIcon,
    // textFildemailController,
    // textFildemailControl,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<CommonTextfild> createState() => _CommonTextfildState();
}

class _CommonTextfildState extends State<CommonTextfild> {
  bool? isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        debugPrint(" value.....$isVisible");
        setState(() {
          isVisible = !isVisible!;
        });
      },
      onChanged: (value) {
        debugPrint("statement. $value");
      },
      // maxLines: 2,
      keyboardType: TextInputType.multiline,
      keyboardAppearance: Brightness.dark,
      obscureText: widget.obscureText ?? false,
      controller: widget.textFildNameController,
      cursorColor: const Color(0xffA1A5C1),
      style: const TextStyle(
        color: Color(0xff252B5C),
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF5F4F8),
        hintText: widget.isHintText ?? "Email",

        // suffix: Icon(widget.suffixIcon ?? Icons.email_outlined),
        suffixIcon: isVisible!
            ? Icon(
                widget.suffixIcon ?? Icons.email_outlined,
                color: const Color(0xff252B5C),
              )
            : const SizedBox(),
        prefixIcon: isVisible!
            ? const SizedBox()
            : Icon(
                widget.preffixIcon ?? Icons.email_outlined,
                color: const Color(0xff252B5C),
              ),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xff8BC83F),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 40,
          horizontal: MediaQuery.of(context).size.width / 10,
        ),
      ),
    );
  }
}

Widget getTextField(TextEditingController nameController,
    {Function? fun, FormFieldValidator<String>? validatior}) {
  return TextFormField(
    controller: nameController,
    validator: validatior!,
    onTap: () {
      fun!();
    },
  );
}


//               // margin: const EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0),
//               height: 40.0,
//               decoration: const BoxDecoration(
//                   color: Colors.pink,
//                   borderRadius: BorderRadius.all(Radius.circular(25.7))),
//               child: Directionality(
//                   textDirection: TextDirection.ltr,
//                   child: TextField(
//                     controller: null,
//                     autofocus: false,
//                     style: const TextStyle(
//                         fontSize: 22.0, color: Color(0xFFbdc6cf)),
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: Colors.yellow,
//                       hintText: 'Username',
//                       contentPadding: const EdgeInsets.only(
//                           left: 14.0, bottom: 8.0, top: 8.0),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.green),
//                         borderRadius: BorderRadius.circular(25.7),
//                       ),
//                       enabledBorder: UnderlineInputBorder(
//                         borderSide: const BorderSide(color: Colors.black),
//                         borderRadius: BorderRadius.circular(25.7),
//                       ),
//                     ),
//                   ))),
