import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: const Color(0xFF5E5CE5),
                      borderRadius: BorderRadius.circular(100)),
                )),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        color: Color(0xFF5E5CE5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(200))),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color(0xFF5E5CE5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                )),
          ))
        ],
      ),
    );
  }
}
