// ignore_for_file: constant_identifier_names

class StringResources {
  static const String LOGIN_LABEL = "LOGIN";
  static const String CONTINUE_LABEL = "CONTINUE";
  static const String EMPTY_STRING = "";
  static const String NEW_PASSWORD_LABEL = "New Password";
  static const String DONE_LABEL = "Done";
  static const String CAMERA_LABEL = "Camera";
  static const String GALLERY_LABEL = "Gallery";
  static const String VERIFICATION_LABEL = "Verification";
  static const String CHOOSE_FROM_OPTIONS = "Choose from Options";
  static const String ENTER_CODE = "Enter Code";

  static const String NO_PERMISSION_GRANTED = "No Permission granted";

  //login screen
  static const String LOGIN_SCREEN_TITLE = "Login to Continue";
  static const String EMAIL_LABEL = "Email";
  static const String PASSWORD_LABEL = "Password";
  static const String FORGOT_PASS_LABEL = "Forgot Password";
  static const String FORGOT_PASS_QUES_LABEL = "Forgot Password?";

  static const String LOGIN_BUTTON_LABEL = "Login";
  static const String OR_LABEL = "or";
  static const String LOGIN_USING_LABEL = "Login using";
  static const String SIGNUP_USING = "Signup using";
  static const String EMAIL_HINT_TEXT = "Enter your Email address";
  static const String PASSWORD_HINT_TEXT = "Enter your Password";
  static const String DONT_HAVE_ACCOUNT_LABEL = "Don't have an account?";
  static const String ALREADY_HAVE_ACCOUNT_LABEL = "Already have an account?";

  static const String SIGN_UP_TEXT_LABEL = "Sign Up";
  static const String SIGN_IN_TEXT_LABEL = "Sign In";
  static const String SIGN_UP_BUTTON_LABEL = "Signup";

  static const String EMPTY_EMAIL_MSG = "Must Enter an Email";
  static const String EMPTY_VALUE_MSG = "Must Enter an Value";

  static const String INVALID_EMAIL_MSG = "Must Enter a Valid Email";
  static const String EMPTY_PASSWORD_MSG = "Must Enter a Password";
  static const String CONFIRM_NEW_PASS_LABEL = "Confirm new Password";
  static const String PASSWORD_MISMATCH_ERROR = "Passwords must be matched";
  static const String RETYPE_PASS_LABEL = "Retype new Password";
  static const String INVALID_PASSWORD_MSG =
      "Password must be strong and at least 8 characters.";

  //signup screen
  static const String SIGNUP_SCREEN_TITLE = "Signup Now!";
  static const String BUSINESS_LABEL = "Business";
  static const String ATTENDEE_LABEL = "Attendee";
  static const String DEFAULT_TYPE_ICON = "assets/icons/building.svg";
  static const List<String> BOTTOM_SHEET_TITLE_LIST = ["Business", "Attendee"];
  static const List<String> BOTTOM_SHEET_ICON_LIST = [
    "assets/icons/building.svg",
    "assets/icons/building.svg"
  ];

//OTP screen
  static const String OTP_SCREEN = "OTP Verification";
  static const String OTP_SENT_COMMON_TEXT = "Code has been sent on";
  static const String PRE_CODE_TEXT = "Code will resend in";
  static const String VERIFY_LABEL = "Verify";
  static const String RESEND_LABEL = "  Resend code";
  static const String STAR_CHARACTER = "*";

//basic details screen
  static const String BASIC_DETAILS_SCREEN = "Basic Details";
  static const String UPLOAD_PHOTO_LABEL = "Upload Profile Photo";
  static const String LOCATION_LABEL = "Location";
  static const String LOCATION_HINT = "e.g. New York";
  static const String TYPE_SELECT_LABEL = "Who I am?";
  static const String ENTER_BUSINESS_LABEL = "Enter business Name";
  static const String EMPTY_PHONE_ERROR_MSG = "Must Enter a phone Number";

//charges screen
  static const String COVER_CHARGES_LABEL = "Cover Charges";
  static const String CHARGES_HINT_TEXT = "e.g. 10:00";
  static const String VIP_CHARGES_LABEL = "VIP Cover Charges";
  static const String VIP_CHARGES_HINT_TEXT = "e.g. 20:00";

//DETAILS screen
  static const String SPECIAL_HINT_TEXT =
      "Write short description, perks, and offers here...";

//business details screen
  static const String BAR_CAPACITY_LABEL = "Bar Capacity";
  static const String BAR_CAPACITY_HINT_TEXT = "e.g. 100";
  static const String TIME_VALIDATION_MSG =
      'Invalid time format. Please enter a valid time (e.g., 1:00 pm)';
  static const String OPERATION_HOURS_LABEL = "Operating hours";
  static const String TIME_HINT_TEXT = "e.g. 8:00 am";
  static const String TIME_HINT_TEXT2 = "e.g. 10:00 am";

  static const String TO_LABEL = " (To)";
  static const String FROM_LABEL = " (From)";

  //basic details screen
  static const String PHONE_NUMBER_INVALID_ISSUE_MSG =
      "Must Enter a valid phone number";
  static const String PHONE_FIELD_HINT_TEXT = "XXX XXXX XXXX";
  static const String PHONE_NUMBER_EMPTY_ISSUE_MSG =
      "Must Enter a Phone Number";
  static const String PHONE_NUMBER_LABEL = "Phone Number";
  static const String UPLOAD_PHOTOS_LABEL = "Upload Photos";
  static const String CONTINUE_BUTTON_LABEL = "Continue";
  static const String GALLERY_TIP_DETAILS =
      'You must upload at least 2 Image and max 3 images of your business';
  static const String TIP_LABEL = 'Tip: ';

//charges screen
  static const String CHARGES_SCREEN_TITLE = "Charges Details";

//special details
  static const String SPECIAL_DETAILS_SCREEN_TITLE = "Special Details";
  static const String SPECIALS_LABEL = "Specials";

//password screen
  static const String PASSWORD_RULES =
      "Your new password must consist of 8 characters, one upper case, one lower case, one special case, and one numerical case.";
  static const String PASSWORD_SCREEN_TITLE = "Create Password";

  //bank details screen
  static const String BANK_SCREEN_TITLE = "Bank Account Details";
  static const String BANK_NAME_LABEL = "Bank Name";
  static const String BANK_HINT_TEXT = "e.g. Bank of America";
  static const String ACCOUNT_HOLDER_NAME_LABEL = "Account Holder Name";
  static const String ACCOUNT_HOLDER_HINT_TEXT = "e.g. John Doe";
  static const String ROUTING_NAME_VALIDATION_MSG =
      "Routing Name must be at least 9 digits";
  static const String NINE_DIGITS_HINT_TEXT = "9 digits";
  static const String ROUTING_NAME_LABEL = "Routing Name";
  static const String ACCOUNT_NUMBER_VALIDATION_MSG =
      "Routing Name must be between 4 to 17 digits";
  static const String ACCOUNT_NUMBER_LABEL = "Account Number";
  static const String ACCOUNT_NUMBER_HINT_TEXT = "4 to 17 digits";

//custom textfield
  static const String BUSINESS_NAME_LABEL = "Business Name";
}
