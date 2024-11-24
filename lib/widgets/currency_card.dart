import "package:flutter/material.dart";

class CurrencyCard extends StatelessWidget {
  final String unit, value, code;
  final IconData icon;
  final bool isInvert;
  final double offsetY;

  final Color blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.unit,
    required this.value,
    required this.code,
    required this.icon,
    this.isInvert = false,
    this.offsetY = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Transform.translate(
      offset: Offset(0, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInvert ? Colors.white : blackColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    unit,
                    style: TextStyle(
                      color: isInvert ? blackColor : Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        value,
                        style: TextStyle(
                          color: isInvert ? blackColor : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInvert ? blackColor : Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(4, 17),
                  child: Icon(
                    icon,
                    color: isInvert ? blackColor : Colors.white,
                    size: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
