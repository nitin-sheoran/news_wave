import 'package:news_wave/all_imports.dart';

class PrivacySecurityScreen extends StatelessWidget {
  const PrivacySecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool darkMode = Provider.of<ThemeProvider>(context).darkMode;
    return Scaffold(
      backgroundColor: darkMode ? ColorsConst.darkColor : ColorsConst.cardColor,
      appBar: AppBar(
        titleSpacing: -8,
        backgroundColor:
            darkMode ? ColorsConst.darkColor : ColorsConst.blueColor,
        title: const Text(
          StringConst.privacySecurity,
          style: TextStyle(color: ColorsConst.whiteColor),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: ColorsConst.whiteColor,
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(14),
          bottomLeft: Radius.circular(14),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConst.privacyAndSecurityInformation,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color:
                    darkMode ? ColorsConst.whiteColor : ColorsConst.blackColor,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              StringConst.privacySecurityTitle,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color:
                    darkMode ? ColorsConst.whiteColor : ColorsConst.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
