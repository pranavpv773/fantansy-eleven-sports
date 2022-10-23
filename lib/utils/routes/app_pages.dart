import 'package:fantasy_gaming/screens/base_home/base_home_binding.dart';
import 'package:fantasy_gaming/screens/base_home/base_home_screen.dart';
import 'package:fantasy_gaming/screens/base_home/more/help_support/help_support_binding.dart';
import 'package:fantasy_gaming/screens/base_home/more/help_support/help_support_screen.dart';
import 'package:fantasy_gaming/screens/base_home/more/notifiaction/notification_binding.dart';
import 'package:fantasy_gaming/screens/base_home/more/notifiaction/notification_screen.dart';
import 'package:fantasy_gaming/screens/base_home/more/privacy_policy_&_support_about/privacy_policy_support_about.dart';
import 'package:fantasy_gaming/screens/base_home/more/privacy_policy_&_support_about/privacy_policy_support_about_binding.dart';
import 'package:fantasy_gaming/screens/base_home/more/theme/theme_binding.dart';
import 'package:fantasy_gaming/screens/base_home/more/theme/theme_screen.dart';
import 'package:fantasy_gaming/screens/change_password/change_password_binding.dart';
import 'package:fantasy_gaming/screens/change_password/change_password_screen.dart';
import 'package:fantasy_gaming/screens/change_username/change_username_binding.dart';
import 'package:fantasy_gaming/screens/change_username/change_username_screen.dart';
import 'package:fantasy_gaming/screens/create_room/create_room_binding.dart';
import 'package:fantasy_gaming/screens/create_room/create_room_screen.dart';
import 'package:fantasy_gaming/screens/current_password/current_password_binding.dart';
import 'package:fantasy_gaming/screens/current_password/current_password_screen.dart';
import 'package:fantasy_gaming/screens/customer_support/customer_support_binding.dart';
import 'package:fantasy_gaming/screens/customer_support/customer_support_screen.dart';
import 'package:fantasy_gaming/screens/forgot_password/forgot_password_binding.dart';
import 'package:fantasy_gaming/screens/forgot_password/forgot_password_screen.dart';
import 'package:fantasy_gaming/screens/login/login_binding.dart';
import 'package:fantasy_gaming/screens/login/login_screen.dart';
import 'package:fantasy_gaming/screens/my_info/my_info_binding.dart';
import 'package:fantasy_gaming/screens/my_info/my_info_screen.dart';
import 'package:fantasy_gaming/screens/new_password/new_password_binding.dart';
import 'package:fantasy_gaming/screens/new_password/new_password_screen.dart';
import 'package:fantasy_gaming/screens/profile/profile_screen.dart';
import 'package:fantasy_gaming/screens/register/register_binding.dart';
import 'package:fantasy_gaming/screens/register/register_screen.dart';
import 'package:fantasy_gaming/screens/reset_password/reset_password_binding.dart';
import 'package:fantasy_gaming/screens/reset_password/reset_password_screen.dart';
import 'package:fantasy_gaming/screens/splash/splash_binding.dart';
import 'package:fantasy_gaming/screens/splash/splash_screen.dart';
import 'package:fantasy_gaming/screens/tournament_matches/tournament_match_binding.dart';
import 'package:fantasy_gaming/screens/tournament_matches/tournament_match_screen.dart';
import 'package:fantasy_gaming/screens/tournaments/tournament_binding.dart';
import 'package:fantasy_gaming/screens/tournaments/tournament_screen.dart';
import 'package:fantasy_gaming/screens/upcoming_match/upcoming_match_binding.dart';
import 'package:fantasy_gaming/screens/upcoming_match/upcoming_match_screen.dart';
import 'package:get/get.dart';

import '../../screens/profile/profile_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var transitionDuration = const Duration(
    milliseconds: 550,
  );

  static final pages = [
    GetPage(
      name: AppRoutes.initialPage,
      transitionDuration: transitionDuration,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.register,
      transitionDuration: transitionDuration,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.login,
      transitionDuration: transitionDuration,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.forgot,
      transitionDuration: transitionDuration,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.resetPassword,
      transitionDuration: transitionDuration,
      page: () => const ResetPasswordScreen(),
      binding: ResetPasswordBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.newPassword,
      transitionDuration: transitionDuration,
      page: () => const NewPasswordScreen(),
      binding: NewPasswordBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.customerSupport,
      transitionDuration: transitionDuration,
      page: () => const CustomerSupportScreen(),
      binding: CustomerSupportBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.baseHome,
      transitionDuration: transitionDuration,
      page: () => BaseHomeScreen(),
      binding: BaseHomeBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.profile,
      transitionDuration: transitionDuration,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.notification,
      transitionDuration: transitionDuration,
      page: () => const NotificationScreen(),
      binding: NotificationBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.theme,
      transitionDuration: transitionDuration,
      page: () => const ThemeScreen(),
      binding: ThemeBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.privacyAbout,
      transitionDuration: transitionDuration,
      page: () => const PrivacyPolicyAboutScreen(),
      binding: PrivacyPolicyAboutBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.helpAndSupport,
      transitionDuration: transitionDuration,
      page: () => const HelpSupportScreen(),
      binding: HelpSupportBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.currentPassword,
      transitionDuration: transitionDuration,
      page: () => const CurrentPasswordScreen(),
      binding: CurrentPasswordBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.changePassword,
      transitionDuration: transitionDuration,
      page: () => const ChangePasswordScreen(),
      binding: ChangePasswordBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.myInfo,
      transitionDuration: transitionDuration,
      page: () => const MyInfoScreen(),
      binding: MyInfoBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.changeUsername,
      transitionDuration: transitionDuration,
      page: () => const ChangeUsernameScreen(),
      binding: ChangeUsernameBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.upcomingMatch,
      transitionDuration: transitionDuration,
      page: () => const UpcomingMatchScreen(),
      binding: UpcomingMatchBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.tournaments,
      transitionDuration: transitionDuration,
      page: () => const TournamentScreen(),
      binding: TournamentBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.tournamentMatch,
      transitionDuration: transitionDuration,
      page: () => const TournamentMatchScreen(),
      binding: TournamentMatchBinding(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.createRoom,
      transitionDuration: transitionDuration,
      page: () => const CreateRoomScreen(),
      binding: CreateRoomBinding(),
      transition: Transition.native,
    ),
  ];
}
