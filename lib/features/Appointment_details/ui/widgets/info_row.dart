import 'package:flutter/material.dart';
import 'package:skin_care_app/core/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isLink;
  final String? url;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
    this.isLink = false,
    this.url,
  });

  Future<void> _launchUrl(String link) async {
    if (await canLaunchUrl(Uri.parse(link))) {
      await launchUrl(Uri.parse(link));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(color: ColorManager.GrayDetails),
            ),
          ),
          Expanded(
            child:
                isLink
                    ? GestureDetector(
                      onTap: () => _launchUrl(url ?? value),
                      child: Text(
                        value,
                        style: const TextStyle(
                          color: ColorManager.primaryBlue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                    : Text(
                      value,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
          ),
        ],
      ),
    );
  }
}
