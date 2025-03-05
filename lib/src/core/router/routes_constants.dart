//# path should begin with /
enum AppRoute {
  signup('signup', '/register'),
  login('login', '/login'),
  otp('otp', '/otp'),
  dashboard('dashboard', '/dashboard'),
  forgotpassword('forgotpassword', '/forgotpassword');

  const AppRoute(this.name, this.path);
  final String name;
  final String path;
}
