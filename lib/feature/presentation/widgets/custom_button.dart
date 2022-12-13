part of '../pages/register_screen/register_screen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
          backgroundColor: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {},
      child: Text(title, style: AppConstants.textWhitew500s16),
    );
  }
}
