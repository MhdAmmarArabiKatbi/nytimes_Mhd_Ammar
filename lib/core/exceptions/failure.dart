class Failure {
  int code; // 200 or 400
  String message;// error or success
  // String description;
  dynamic error;


   String? errorName;
   String? errorDescription;
   String? codeError;


  Failure(this.code, this.message,{ this.errorName, this.errorDescription,
    this.codeError});
}

