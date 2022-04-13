import 'package:budget_nerd/pages/wallets/create_wallet/create_edit_wallet_page.dart';
import 'package:flutter/material.dart';

class WalletEmptyCard extends StatelessWidget {
  final Function onWalletCreated;

  const WalletEmptyCard({
    Key? key,
    required this.onWalletCreated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        final result = await Navigator.pushNamed(
          context,
          '/createEditWalletPage',
          arguments: CreateEditWalletPageArgs(initWallet: null),
        );
        if (result != null && result == true) {
          onWalletCreated();
        }
      },
      child: Card(
        elevation: 0,
        color: Color(0xFFDFBEFA).withOpacity(0.2),
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: CustomPaint(
          foregroundPainter: BorderPainter(context),
          child: Center(
            child: Icon(
              Icons.add,
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  final BuildContext context;

  BorderPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height;
    double sw = size.width;
    double cornerSide = sh * 0.1;

    Paint paint = Paint()
      ..color = Theme.of(context).colorScheme.onBackground.withOpacity(0.3)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..quadraticBezierTo(0, 0, 0, cornerSide)
      ..moveTo(0, sh - cornerSide)
      ..quadraticBezierTo(0, sh, cornerSide, sh)
      ..moveTo(sw - cornerSide, sh)
      ..quadraticBezierTo(sw, sh, sw, sh - cornerSide)
      ..moveTo(sw, cornerSide)
      ..quadraticBezierTo(sw, 0, sw - cornerSide, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}
