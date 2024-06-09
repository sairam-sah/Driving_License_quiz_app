
class SignUpWithEamilAndPasswordFailure {
  final String message;

  const SignUpWithEamilAndPasswordFailure([this.message = "An Unknown erroe occured"]);

  factory SignUpWithEamilAndPasswordFailure.code(String code){
    switch(code){
      case 'weak password':
      return const SignUpWithEamilAndPasswordFailure('Please enter a stronger password.');
      case 'invalid-email':
      return const SignUpWithEamilAndPasswordFailure('Email is not valid or badely formated.');
      case 'email-already-in-use':
      return const SignUpWithEamilAndPasswordFailure('An account already exist for that email.');
      case 'operation-not-allowed':
      return const SignUpWithEamilAndPasswordFailure('Operation is not allowed. please contact support.');
      case 'user-disabled':
      return const SignUpWithEamilAndPasswordFailure('This user has been diseabled. Please contact support for help');
      default:
      return const SignUpWithEamilAndPasswordFailure();    
      }
  }
}