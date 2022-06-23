class AppointmentModel {
  String _imageUrl;
  String _name;
  String _callType;
  String _time;
  bool _isAccept;

  AppointmentModel(this._imageUrl, this._name, this._callType, this._time, this._isAccept);

  bool get isAccept => _isAccept;
  String get time => _time;
  String get callType => _callType;
  String get name => _name;
  String get imageUrl => _imageUrl;
}