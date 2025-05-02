import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skin_care_app/core/helper/helper.dart';
import 'package:skin_care_app/core/helper/spacing.dart';
import 'package:skin_care_app/core/widgets/app_bottom_navigation_bar.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_image.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_paragraph.dart';
import 'package:skin_care_app/features/article_body/ui/widgets/article_title.dart';

class ArticleBodyScreen extends StatelessWidget {
  final String? title;
  final String? body;
  final String? image;

  const ArticleBodyScreen({
    super.key,
     this.title,
     this.body,
     this.image,
  });

  @override
  Widget build(BuildContext context) {
    String image = "assets/images/firstarticlepic.jpg";
    String title = 'Sun Exposure and skin cancer';
    String body = ''' Exposure to ultraviolet (UV) radiation from the sun is a well-established risk factor for developing skin cancer. UV radiation damages the DNA in skin cells, leading to mutations that can result in cancerous growths. Both cumulative sun exposure and intermittent intense exposure, such as sunburns, contribute to this risk. 

**Types of Skin Cancer Linked to Sun Exposure:**
 
  **Basal Cell Carcinoma (BCC):** The most 
  common form of skin cancer, BCC often 
  develops on sun-exposed areas like the face 
  and neck. it is primarily associated with 
  cumulative sun exposure over time.

  **Squamous cell Carcinoma (SCC):** SCC also 
  typically appears on sun-exposed regions 
  and is linked to long-term cumulative sun  
  exposure.

  **Melanoma:** Although less common, melanoma is the
   most serious type of skin cancer. it is associated 
   with both intermittent intense sun exposure leading
   to sunburns and cumulative exposure. Recreational
   sun exposure and sunburns are strong predictors of
   melanoma risk.

**Preventive Measures:**

  **Use Sunscreen:** Apply a broad-spectrum
  sunscreen with at least SPF 30 to all exposed
  skin, reapplying every two hours and after
  swimming or sweating.

  **Seek Shade:** Limit direct sun exposure, 
  especially between 10 a.m. and 4 p.m.,
  when UV rays are strongest.

  **Wear Protective Clothing:** Opt for long sleeves,
  wide-brimmed hats, and sunglasses to shield
  your skin.

  **Avoid Tanning Beds:** Artificial sources of UV
  radiation can increase the risk of skin cancer.

  **Regular Skin Examinations:** Monitor your skin 
  for new growths or changes in existing moles 
  and consult a healthcare professional with 
  any concerns.

By adopting these protective measures, individuals can significantly reduce their risk of developing skin cancer related to sun exposure.''';
    return Scaffold(
       bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: null,
          onTap: (index) => navigateToTab(context, index),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ArticleImage(image: image),
            verticalSpace(height: 12.h),
            ArticleTitle(title: title),
            verticalSpace(height: 12.h),
            ArticleParagraph(bodyText: body),
          ],
        ),
      ),
    );
  }
}
