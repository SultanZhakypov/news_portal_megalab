part of '../pages/register_screen/register_screen.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppConstants.textBlackw400s16,
          ),
          const SizedBox(height: 2),
          TextField(
            style: AppConstants.textBlackw400s16,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 5),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
