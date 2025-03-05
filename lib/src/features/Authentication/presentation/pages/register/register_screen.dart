import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/colors.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/register_request_model.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_controller.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_state.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<RegisterScreen> {
  bool obscureText = true;
  bool isChecked = false;
  final fullNameFocus = FocusNode();
  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final pickerController = FlCountryCodePicker();
  String countryCode = '+91';
  CountryCode? countryCode1;
  final TextEditingController _nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isValidEmail = true;
  String? _errorText;
  bool _showValidationContainer = false;
  String _password = "";
  final _formKey = GlobalKey<FormState>();

// Validation conditions
  bool hasMinLength = false;
  bool hasNumber = false;
  bool hasLetter = false;
  bool hasSpecialChar = false;

  bool isButtonEnabled = false;
  void _validateForm() {
    setState(() {
      isButtonEnabled =
          (_formKey.currentState?.validate() ?? false) && isChecked;
    });
  }

  void _validateInput(String value) {
    setState(() {
      _errorText = value.length > 50 ? "Maximum 50 characters allowed." : null;
    });
  }

  void validateEmail(String value) {
    setState(() {
      if (value.isEmpty) {
        isValidEmail = true;
      } else {
        isValidEmail =
            RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                .hasMatch(value);
      }
    });
  }

  void validatePassword() {
    setState(() {
      _password = _passwordController.text;
      hasMinLength = _password.length >= 8;
      hasNumber = _password.contains(RegExp(r'[0-9]'));
      hasLetter = _password.contains(RegExp(r'[A-Za-z]'));
      hasSpecialChar = _password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    });

    if (hasMinLength && hasNumber && hasLetter && hasSpecialChar) {
      print("Password is valid");
    } else {
      print("Password must have at least:");
      if (!hasMinLength) print("- 8 characters");
      if (!hasNumber) print("- At least one number");
      if (!hasLetter) print("- At least one letter");
      if (!hasSpecialChar) print("- At least one special character");
    }
  }

  @override
  void initState() {
    super.initState();

// Show validation container when text field is focused
    passwordFocus.addListener(() {
      setState(() {
        _showValidationContainer = passwordFocus.hasFocus;
      });
    });

// Listen to text changes and update validations
    _passwordController.addListener(() {
      validatePassword();
    });
  }

  @override
  void dispose() {
    passwordFocus.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> registerUser() async {
    final name = _nameController.text;
    final email = emailController.text;
    final phone = _phoneController.text;
    final password = _passwordController.text;
    final countryCodeShort = countryCode1?.code??"IN";//!fixme later with proper validation
    final country = 'India'; //!fixme !hardcoded

    final reqData = RegisterReqModel(
        phoneNumber: phone,
        countryCodeShort: countryCodeShort,
        firstName: name,
        emailId: email,
        country: country,
        countryCode: countryCode,
        password: password);
    ref.read(authControllerProvider.notifier).registerUser(reqData);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      authControllerProvider,
      (previous, next) {
        if (next is OtpSentState) {
          context.pushNamed(AppRoute.otp.name);
        } else if (next is AuthFailureState) {
//! show dialog next.error
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.error.errMsg)));
        }
      },
    );
    final authState = ref.watch(authControllerProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          titleSpacing: 0,
          toolbarHeight: 80,
          title: Container(
            width: double.infinity,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffc2f3eb),
                        Color(0xffc2f3eb).withValues(alpha: 0.0),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset(
                  Assets.gudshowLogo,
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              onChanged: () {
                _validateForm();
              },
              child: Column(
                children: [
                  Text('Start Crafting Your Videos - \n Sign Up now!',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semiBold()),
                  SizedBox(height: 30),
//Google and linked in
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 45,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: AppColors.borderGL),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Assets.googleIcon,
                              height: 40,
                              width: 40,
                            ),
                            Text("Google",
                                style: AppTextStyles.medium(
                                    fontColor: AppColors.textClick)),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),

// Facebook Button
                      Container(
                        width: MediaQuery.of(context).size.width / 2.4,
                        height: 45,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: AppColors.borderGL),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/linkedin_icon.svg",
                              height: 40,
                              width: 40,
                            ),
                            Text(
                              "Linkedin",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textClick),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
//Or design
                  SizedBox(
                    height: 13,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey,
                                  Colors.grey.withValues(alpha: 0.0)
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text("Or", style: AppTextStyles.regular()),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.grey,
                                  Colors.grey.withValues(alpha: 0.0)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
//4 Textfield
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Full Name ",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textfieldName),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: _nameController,
                          textInputAction: TextInputAction.next,
                          focusNode: fullNameFocus,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(emailFocus);
                          },
                          onChanged: _validateInput,
                          validator: (value) {
                            if (value == null) {
                              _validateInput(value!);
                            }
                            return null;
                          },
                          style: TextStyle(color: AppColors.inputText),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                color: _errorText != null
                                    ? AppColors.errorText
                                    : AppColors.textfieldBorder,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                color: _errorText != null
                                    ? AppColors.errorText
                                    : AppColors.focusedBorder,
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                color: _errorText != null
                                    ? AppColors.errorText
                                    : AppColors.textfieldBorder,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                        if (_errorText != null)
                          Padding(
                            padding: const EdgeInsets.only(top: 4, right: 20),
                            child: Text(
                              _errorText!,
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 12),
                            ),
                          ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Email Address",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textfieldName),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: emailController,
                          focusNode: emailFocus,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(phoneFocus);
                          },
                          onChanged: validateEmail,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              validateEmail(value!);
                            }
                            return null;
                          },
                          style: TextStyle(color: AppColors.inputText),
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    color: isValidEmail
                                        ? AppColors.textfieldBorder
                                        : AppColors.errorText,
                                    width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    color: isValidEmail
                                        ? AppColors.focusedBorder
                                        : AppColors.errorText,
                                    width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                    color: isValidEmail
                                        ? AppColors.textfieldBorder
                                        : AppColors.errorText,
                                    width: 1),
                              )),
                        ),
                        if (!isValidEmail)
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 20),
                            child: Text(
                              "Please enter a valid email address",
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 12),
                            ),
                          ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text("Phone Number",
                                style: AppTextStyles.medium(
                                    fontColor: AppColors.textfieldName)),
                            Text(
                              "*",
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          maxLength: 10,
                          controller: _phoneController,
                          textInputAction: TextInputAction.next,
                          focusNode: phoneFocus,
                          onFieldSubmitted: (value) {
                            FocusScope.of(context).requestFocus(passwordFocus);
                          },
                          keyboardType: TextInputType.phone,
                          style: TextStyle(color: AppColors.inputText),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  countryCode1?.flagImage() ??
                                      SvgPicture.asset(
                                        Assets.indianFlag,
                                        width: 23,
                                        height: 15,
                                      ),
                                  SizedBox(width: 8),
                                  InkWell(
                                    onTap: () async {
                                      final picker = await pickerController
                                          .showPicker(context: context);
                                      setState(() {
                                        countryCode1 = picker;
                                        countryCode =
                                            picker?.dialCode.toString() ??
                                                countryCode;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          countryCode,
                                          style: TextStyle(
                                            color: AppColors.textNoClick,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Icon(Icons.arrow_drop_down_rounded,
                                            color: AppColors.textNoClick,
                                            size: 20),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    height: 20,
                                    width: 1,
                                    color: Color(0xff6A6A6A),
                                  ),
                                  SizedBox(width: 8),
                                ],
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.textfieldBorder, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.focusedBorder, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.textfieldBorder, width: 1),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Password",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textfieldName),
                            ),
                            Text(
                              "*",
                              style: TextStyle(
                                  color: AppColors.errorText, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        if (_showValidationContainer)
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PASSWORD MUST CONTAIN :',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                _buildValidationText(
                                    "8 or more characters", hasMinLength),
                                _buildValidationText(
                                    "At least 1 number", hasNumber),
                                _buildValidationText(
                                    "At least 1 UPPER or LOWER CASE",
                                    hasLetter),
                                _buildValidationText(
                                    "At least 1 special character",
                                    hasSpecialChar),
                              ],
                            ),
                          ),
                        TextFormField(
                          controller: _passwordController,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value != null) {
                              validatePassword();
                            }
                            return null;
                          },
                          focusNode: passwordFocus,
                          onFieldSubmitted: (value) {
                            passwordFocus.unfocus();
                          },
                          obscureText: obscureText,
                          style: TextStyle(
                              color: AppColors.inputText, fontSize: 16),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.textfieldBorder, width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.focusedBorder, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: AppColors.textfieldBorder, width: 1),
                            ),
                            suffixIcon: IconButton(
                              iconSize: 24,
                              icon: Icon(
                                obscureText
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                color: Color(0xff6A6A6A),
                              ),
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                                _validateForm();
                              },
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: isChecked ? Colors.blue : Colors.white,
                                  border: Border.all(
                                      color: AppColors.textfieldBorder),
                                ),
                                child: isChecked
                                    ? Icon(Icons.check,
                                        color: Colors.white, size: 12)
                                    : null,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              height: 1.4,
                              fontSize: 12,
                              color: AppColors.textClickBOLD,
                            ),
                            children: [
                              TextSpan(
                                  text:
                                      "By continuing, you're agreeing to Gudsho "),
                              TextSpan(
                                text: "Terms of \nService",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                text: " and ",
                              ),
                              TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                              TextSpan(
                                  text:
                                      ". Consent includes receiving \nmarketing information from Gudsho."),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
//Signup button
                  SizedBox(
                    height: 46,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isButtonEnabled
                          ? () {
                              registerUser();
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonColor,
                        foregroundColor: AppColors.buttonText,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: authState is AuthLoadingState
                          ? CircularProgressIndicator()
                          : Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                  SizedBox(height: 10),
//Navigate to sign in page
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                          style: AppTextStyles.medium(
                              fontSize: 12, fontColor: AppColors.textNoClick)),
                      InkWell(
                        onTap: () {
                          context.goNamed(AppRoute.login.name);
                        },
                        child: Text(' Sign in',
                            style: AppTextStyles.medium(
                                fontWeight: FontWeight.bold, fontSize: 12)),
                      )
                    ],
                  ),
                  SizedBox(height: 26)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildValidationText(String text, bool conditionMet) {
  return Padding(
    padding: EdgeInsets.only(bottom: 4),
    child: Row(
      children: [
        Icon(
          conditionMet ? Icons.check_circle : Icons.circle,
          color: conditionMet ? Colors.green : Colors.grey,
          size: 14,
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: conditionMet ? Colors.black : Colors.grey,
            fontWeight: conditionMet ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
