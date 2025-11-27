
import '../static_img/static_img.dart';

class StaticString {
  // RegExp
  static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final passRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{6,}$');

  // RegExp
  // welcome Text start
  static final String fastwelcome_title = 'Manage Everything in One Place';
  static final String fastwelcome_subtitle =
      'Create, categorize, and keep track of all your personal and work tasks effortlessly — right from your dashboard.';
  static final String fastsecondwelcome_btntitle = 'Next';
  static final String secondwelcome_title = 'Focus on What Matters Most';
  static final String secondwelcome_subtitle =
      'Set priorities, add deadlines, and sort tasks by importance so you can tackle what truly moves you forward.';
  static final String thirdwelcome_title = 'Visualize Progress, Stay on Track';
  static final String thirdwelcome_subtitle =
      'Monitor completed tasks, ongoing projects, and upcoming deadlines — all in a clear, visual format.';
  static final String continue_btntitle = 'Continue ';
  static final String skip = 'Skip ';
  // welcome Text End

  static final List<Map<String, dynamic>> welcomePage = [
    {
      'img': StaticImg.welcome1,
      'title': fastwelcome_title,
      'sibtitle': fastwelcome_subtitle,
      'btnTitle': fastsecondwelcome_btntitle,
    },

    {
      'img': StaticImg.welcome2,
      'title': secondwelcome_title,
      'sibtitle': secondwelcome_subtitle,
      'btnTitle': fastsecondwelcome_btntitle,
    },

    {
      'img': StaticImg.welcome3,
      'title': thirdwelcome_title,
      'sibtitle': thirdwelcome_subtitle,
      'btnTitle': continue_btntitle,
    },
  ];
  // taskPage
  static final List<Map<String, dynamic>> taskPage = [
    {
      'title': myTasksTitle,
      'sibtitle': myTasksSubTitle,

    },  {
      'title': myTasksTitle1,
      'sibtitle': myTasksSubTitle1,

    },  {
      'title': myTasksTitle2,
      'sibtitle': myTasksSubTitle2,

    },  {
      'title': myTasksTitle3,
      'sibtitle': myTasksSubTitle3,

    },  {
      'title': myTasksTitle4,
      'sibtitle': myTasksSubTitle4,

    },

  ];static final List<Map<String, dynamic>> profile = [
    {
      'title': myProFile,
      'iconSvg': StaticImg.mypro,
    },  {
      'title':accountSetting ,
      'iconSvg': StaticImg.setting,
    },

  ];static final List<Map<String, dynamic>> profileMore = [
    {
      'title': terms,
      'iconSvg': StaticImg.terms,
    },  {
      'title':privacy ,
      'iconSvg': StaticImg.policy,
    },   {
      'title':support ,
      'iconSvg': StaticImg.help,
    },   {
      'title':logOut ,
      'iconSvg': StaticImg.lock,
    },

  ];static final List<Map<String, dynamic>> myprofile = [
    {
      'title': pfFullName,
      'iconSvg': StaticImg.man,
    },  {
      'title':pfEmail ,
      'iconSvg': StaticImg.arddared,
    },   {
      'title':pfAdress ,
      'iconSvg': StaticImg.adrees,
    },

  ];static final List<Map<String, dynamic>> accountSe = [
    {
      'title': cPassword,
      'iconSvg': StaticImg.lock,
    },  {
      'title':dAccount ,
      'iconSvg': StaticImg.deletaccount,
    },

  ];static final List<Map<String, dynamic>> termsL = [
    {
      'title':terms ,
      'subTitle': termsHading,
    },   {
      'title':terms1 ,
      'subTitle': termsD1,
    },   {
      'title':terms2 ,
      'subTitle': termsD2,
    },   {
      'title':terms3 ,
      'subTitle': termsD3,
    },   {
      'title':terms4 ,
      'subTitle': termsD4,
    },   {
      'title':terms5 ,
      'subTitle': termsD5,
    },   {
      'title':terms6 ,
      'subTitle': termsD6,
    },   {
      'title':terms7 ,
      'subTitle': termsD7,
    },

  ];

  static final List<Map<String, dynamic>> policyL = [
    {
      'title':prPoHading ,
      'subTitle': prPoSubHading,
    },   {
      'title':policy1 ,
      'subTitle': policyD1,
    },   {
      'title':policy2 ,
      'subTitle': policyD2,
    },   {
      'title':policy3 ,
      'subTitle': policyD3,
    },   {
      'title':policy4 ,
      'subTitle': policyD4,
    },   {
      'title':policy5 ,
      'subTitle': policyD5,
    },   {
      'title':policy6 ,
      'subTitle': policyD6,
    },   {
      'title':policy7 ,
      'subTitle': policyD7,
    },    {
      'title':"" ,
      'subTitle': policyD8,
    },

  ];

  // login Text Start

  static final String loginTitle = 'Welcome Back!';
  static final String loginSubTitle =
      'Stay productive and take control of your tasks.';
  static final String emailTitle = 'Email Address';
  static final String emailHent = 'michelle.rivera@example.com!';
  static final String passWordTitle = 'PassWord';
  static final String passWordhent = '••••••••';
  static final String rememberTitle = 'Remember me';
  static final String orTitle = 'OR';
  static final String accountTitle = 'Don’t have an account?';
  static final String signUpTitle = 'Sign Up';
  static final String logInTitle = 'Log In';
  static final String forgetPass = 'Forgot Password ? ';

  // login Text End

  // Sin Up Text Start

  static final String sinupPageTitle = 'Create Your Account';
  static final String sinupPageSubTitle =
      'Join Task Manager today — organize better, work smarter, and stay in control of your day.';
  static final String firstNameTitle = 'First Name';
  static final String lastNameTitle = 'Last Name';
  static final String firstNameheint = 'e.g.Kristin ';
  static final String lastNameheint = 'e.g. Cooper ';
  static final String address = 'Address ';
  static final String addressHent = 'e.g. 1234 Elm Street, Springfield, IL ';
  static final String confirmpassword = 'Confirm password ';
  static final String policy =
      'I agree to the Terms & Conditions and Privacy Policy. ';
  static final String alreadyaccount = 'Already have an account? ';
  static final String logInsubTitle = 'Log in';

  // Sin Up Text End
  // Verify Your Email Text Start
  static final String verifyPageTitle = 'Verify Your Email';
  static final String verifyPageSubTitle =
      "We'll send a verification code to this email to confirm your account.";
  static final String verifyPageBtnTitle = 'Send';
  static final String verifyPageTitle2 = '6-digit code';
  static final String verifyPageSubTitle2 =
      "Please enter the code we've sent to michelle.rivera@example.com";
  static final String confirmTitle = 'Confirm';
  static final String sendOTPTitle = 'Send OTP';
  // Verify Your Email Text End
  // Set Your New Password Page Start
  static final String newPasswordPagehading = 'Set Your New Password';
  static final String newPasswordPageSubhading =
      'Create a secure password to protect your account and get started seamlessly!';
  static final String newPasswordTitle = 'New Password';
  static final String confirmPasswordTitle = 'New Confirm password';
  // Set Your New Password Page Text End

  // User Flow Start

  // My Task Page String Start
  static final String profileTitle = 'Hello Mojahid';
  static final String profileSubTitle = 'Welcome to Task Manager';
  static final String myTasks = 'My Tasks';
  static final String myTasksTitle = 'Design Landing Page Header';
  static final String myTasksSubTitle =
      'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.';
  static final String myTasksTitle1 = 'Develop Onboarding Screensr';
  static final String myTasksSubTitle1 =
      'Design a 3-step onboarding flow to introduce users to core app features using illustrations and concise text.';
  static final String myTasksTitle2 = 'Organize Task Card Components';
  static final String myTasksSubTitle2 =
      'Build reusable task card UI elements for listing, prioritizing, and editing individual tasks.';
  static final String myTasksTitle3 = 'Prepare Terms & Privacy Pages';
  static final String myTasksSubTitle3 =
      'Create UI layouts for Terms & Conditions and Privacy Policy using scrollable content and soft brand styling.';
  static final String myTasksTitle4 = 'Build Calendar View Layout';
  static final String myTasksSubTitle4 =
      'Design a visual calendar interface to display upcoming tasks and deadlines with status indicators.';
  // My Task Page String End
  // Tasks DetailsPage String Start
  static final String tasksDetails = 'Tasks Details';
  static final String tasksTitle = 'Task Title';
  static final String tasksSubTitle = 'Design Landing Page Header';
  static final String taskDescription = 'Task Description';
  static final String taskSubDescription =
      'Create a clean, responsive header section for the landing page. Include logo, navigation menu, search bar, and a primary call-to-action button. Ensure mobile responsiveness and use the brand green';
  static final String deleteTask = 'Delete Task';
  static final String editTask = 'Edit Task';
  // Tasks DetailsPage String End
  // Add Task Page String Start
  static final String addTask = 'Add Task ';
  static final String taskHent = 'e.g. Design Landing Page Header ';
  static final String description = 'Description';
  static final String descriptionHent =
      'e.g. Include logo, navigation, and CTA button with brand color';
  static final String saveTask = 'Save Task';
  static final String updateTask = 'Update Task';
  static final String update = 'Update ';
  //Add Task Page String End
  //My ProFile Page String Start
  static final String myProFile = 'My ProFile';
  static final String accountSetting = 'Account Setting';
  static final String more = 'More';
  static final String terms = 'Terms & Condition';
  static final String privacy = 'Privacy policy';
  static final String support = 'Help/Support';
  static final String logOut = 'Log Out';
  static final String pfName = 'Mojahid';
  static final String pfFullName = 'Mojahid Islam';
  static final String pfEmail = 'Samaltman@gmail.com';
  static final String pfAdress = '1234 Elm Street, Springfield, IL';
  static final String accountS = 'Account Setting';
  static final String cPassword = 'Change Password';
  static final String dAccount = 'Delete Account';
  static final String tPassword = 'Type Password';
  static final String newCpass = 'New Confirm password';

  //My ProFile Page String End
  //Edit Profile  Page String Start
  static final String editPf = 'Edit Profile ';
  static final String fName = 'First Name ';
  static final String fNHent = 'e.g. Kristin  ';
  static final String lName = 'Last Name ';
  static final String lNHent = 'e.g. Cooper ';

  //Edit Profile  Page String End
  //Terms & Condition  Page String Start
  static final String termsHading =
      'Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions: ';
  static final String terms1 = '1. Use of the App';
  static final String termsD1 =
      'This app is designed to help users create, manage, and track personal or professional tasks efficiently. By using the app, you agree to use it responsibly and only for lawful purposes.';
  static final String terms2 = '2. Accuracy of Information';
  static final String termsD2 =
      'All tasks, notes, and other information entered by the user are stored securely. While we strive to maintain accurate task management functionality, the app is not responsible for missed deadlines, incorrect entries, or user-generated errors.';
  static  final String terms3 = '3. User Responsibility';
  static  final String termsD3 =
      'Users are solely responsible for managing their tasks, reminders, and any personal or professional outcomes related to the completion or non-completion of tasks created within the app.';
  static final String terms4 = '4. Data Collection';
  static  final String termsD4 =
      'We respect your privacy. The Task Manager App may collect limited personal data (such as name, email, and usage patterns) solely for improving user experience. No data is shared with third parties without user consent.';
  static  final String terms5 = '5. Limitation of Liability';
  static  final String termsD5 =
      'We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use of the app. The app is a productivity tool and should be used at your discretion.';
  static final String terms6 = '6. Third-Party Links';
  static  final String termsD6 =
      'If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their data policies or service availability. Use of such services is subject to their respective terms.';
  static  final String terms7 = '7. Changes to Terms';
  static final String termsD7 =
      'We reserve the right to update these Terms & Conditions at any time. Continued use of the app following any changes will constitute your acceptance of those revised terms.';
  //Terms & Condition  Page String End

  //Privacy policy  Page String Start
  static final String prPoHading = 'Privacy Policy – Task Manager App';
  static final String prPoSubHading =
      'Your privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.';
  static final String policy1 = '1. Information Collection';
  static final String policyD1 =
      'The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.';
  static final String policy2 = '2. Local Storage';
  static  final String policyD2 =
      "Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app's features like scheduling, notifications, and user customization.";
  static final String policy3 = '3. No Tracking';
  static final String policyD3 =
      'We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.';
  static  final String policy4 = '4. Static Data Display';
  static final String policyD4 =
      'If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices.';
  static final String policy5 = '5. Third-Party Services';
  static final String policyD5 =
      'We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.';
  static final String policy6 = '6. Data Security';
  static final String policyD6 =
      'You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).';
  static  final String policy7 = '7. Policy Updates';
  static final String policyD7 =
      'This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.';
  static final String policyD8 =
      'if you have any questions or concerns regarding privacy, please contact us at support@taskmanagerapp.com.';
  //Privacy policy Page String End
  //Help/Support Page String Start
  static final String helpS = 'Help/Support';
  static  final String helpSTitle = 'How do I create a new task?';
  static final String helpSD = 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".';
  static final String fAQs = 'FAQs';
  static  final String fAQs1 = 'How can I view task details?';
  static final String fAQs2 = 'Can I mark a task as favorite or important?';
  static final String fAQs3 = 'How do I edit or delete a task?';
  static final String fAQs4 = 'Is my data secure?';
  static  final String needMHp = 'Need More Help?';
  static final String hEmailTitle = 'Mail Us: ';
  static  final String hEmail = '(support@taskmanagerapp.com)';
  static  final String hSubTitle = 'Our help desk is available 24/7 to \n support your  workflow.';
  // static  final String hSubTitle = 'Our help desk is available 24/7 to support your workflow.';
  static final String profile1 = 'Profile.';

  //Help/SupportPage String End
  //Warning Box String Start
  static final String warning = 'Warning.';
  static final String warningD = 'Are you sure to Update Password?.';
  static  final String cancel = 'Cancel';
  static final String success = 'Success';
  static final String successD = 'Your password has been updated successfully.';
  static final String oK = 'OK';

  //Warning Box String End

  // User Flow End
}
