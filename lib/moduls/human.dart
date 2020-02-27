class Human
{
  double _valueHieght=150;
  double _valueWieght=60;
  double _valueAge=20;
  bool isMale=true;
  double _ibm;

  //Human(this._valueHieght, this._valueWieght, this._valueAge, this.isMale);

  double get valueAge => _valueAge;

  set valueAge(double value) {
    _valueAge = value;
  }

  double get valueWieght => _valueWieght;

  set valueWieght(double value) {
    _valueWieght = value;
  }

  double get valueHieght => _valueHieght;

  set valueHieght(double value) {
    _valueHieght = value;
  }

  double calculate()
  {
    this._ibm=((_valueWieght*10000)/(_valueHieght*_valueHieght));
    return _ibm;
}


}
