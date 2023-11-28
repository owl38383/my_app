import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_app/common/entitys/entitys.dart';
import 'package:my_app/common/utils/utils.dart';
import 'package:my_app/common/values/values.dart';
import 'package:my_app/common/widgets/widgets.dart';
import 'package:my_app/common/apis/apis.dart';
import 'package:my_app/global.dart';
import 'package:my_app/common/provider/global_state.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
//email的控制器
  final TextEditingController _emailController = TextEditingController();

  //密码的控制器
  final TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = '15710013764';
    _passController.text = '111111';
  }

  // 执行登录操作
  _handleSignIn(BuildContext context) async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '请正确输入邮件');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '密码不能小于6位');
    //   return;
    // }

    UserLoginRequestEntity params = UserLoginRequestEntity.fromJson({
      "user_name": _emailController.value.text,
      "user_pwd": _passController.value.text,
    });
    UserLoginRespEntity userProfile = await UserAPI.login(params: params);
    // 保存用户信息
    Global.saveProfile(userProfile);
    toastInfo(msg: '登陆成功');
    context.router.pushNamed('/index');
  }

  // logo
  Widget _buildLogo() {
    return Container(
      width: duSetWidth(110),
      margin: EdgeInsets.only(top: duSetHeight(40 + 44.0)), // 顶部系统栏 44px
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: duSetWidth(76),
            width: duSetWidth(76),
            margin: EdgeInsets.symmetric(horizontal: duSetWidth(15)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Container(
                    height: duSetWidth(76),
                    decoration: BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: const [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.all(
                          Radius.circular(duSetWidth(76 * 0.5))), // 父容器的50%
                    ),
                    child: Container(),
                  ),
                ),
                Positioned(
                  top: duSetWidth(13),
                  child: Image.asset(
                    "assets/images/logo.png",
                    fit: BoxFit.none,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Text(
              "享成科技",
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: duSetFontSize(24),
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 登录表单
  Widget _buildInputForm() {
    return Container(
      width: duSetWidth(295),
      // height: 204,
      margin: EdgeInsets.only(top: duSetHeight(49)),
      child: Column(
        children: [
          // email input
          inputTextEdit(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "账号",
            marginTop: 0,
          ),
          // password input
          inputTextEdit(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            hintText: "密码",
            isPassword: true,
          ),

          // 注册、登录 横向布局
          Container(
            height: duSetHeight(44),
            margin: EdgeInsets.only(top: duSetHeight(15)),
            child: Column(
              children: [
                // 登录
                btnFlatButtonWidget(
                  onPressed: () => _handleSignIn(context),
                  gbColor: AppColors.primaryElement,
                  title: "登陆",
                  width: duSetWidth(295 * 0.75),
                ),
              ],
            ),
          ),
          // Spacer(),

          // Fogot password
          Container(
            height: duSetHeight(40),
            margin: EdgeInsets.only(top: duSetHeight(20)),
            child: TextButton(
              onPressed: () => {context.router.pop()},
              child: Text(
                "忘记密码?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.secondaryElementText,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w400,
                  fontSize: duSetFontSize(16),
                  height: 1, // 设置下行高，否则字体下沉
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 底部隐私
  Widget _buildBottom() {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('隐私政策')],
          ),
          Text('京 IPC 12121212'),
          Text('北京享成安全科技有限公司 提供技术支持')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildInputForm(),
            const Spacer(),
            _buildBottom(),
          ],
        ),
      ),
    );
  }
}
