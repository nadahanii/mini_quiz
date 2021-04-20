class Question {
  String _question;
  bool _answer;
  Question(this._question, this._answer);
  // the arrow means 'return'
  get question => _question;
  get answer => _answer;
}
