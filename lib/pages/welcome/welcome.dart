import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';

@RoutePage()
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  /// 页头标题
  Widget _buildPageHeadTitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(60 + 44.0)), // 顶部系统栏 44px
      child: Text(
        "享成科技",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
          height: 1,
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail(BuildContext context) {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "享科技成果 成安全服务",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  /// 宽度 80 + 20 + 195 = 295
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          SizedBox(
            width: duSetWidth(80),
            height: duSetWidth(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: ElevatedButton(
        onPressed: () {
          // context.navigateTo(const SignInRoute());
          // context.router.popUntilRouteWithPath('/sign_in');
          context.navigateNamedTo('/sign_in');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryElement,
          shape: const RoundedRectangleBorder(
            borderRadius: Radii.k6pxRadius,
          ),
        ),
        child: const Text(
          '开始',
          style: TextStyle(
            color: AppColors.primaryElementText,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // 高度去掉 顶部、底部 导航
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812 - 44 - 34),
      minTextAdapt: true,
      splitScreenMode: true,
    );

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(context),
            _buildPageHeaderDetail(context),
            _buildFeatureItem(
              "feature-1",
              "Compelling photography and typography provide a beautiful reading",
              86,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-3",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            const Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),
    );
  }
}
