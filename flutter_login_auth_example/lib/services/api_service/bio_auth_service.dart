import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

class BioAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<bool> get canCheckBiometrics async => GetPlatform.isMobile ? await _localAuth.canCheckBiometrics : false;

  Future<bool> get didAuthenticate async => await _localAuth.authenticate(
        localizedReason: 'Please authenticate to login',
        biometricOnly: true,
      );
}
