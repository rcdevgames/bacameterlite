import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Contains GetxController functionality for base state management
class BaseController extends GetxController {
  double getHeight(double percentage) => (percentage / 100) * Get.height;
  double getWidth(double percentage) => (percentage / 100) * Get.height;

  BuildContext getContext([bool isOverlay = true]) =>
      isOverlay ? Get.overlayContext : Get.context;

  final _hidePassword = true.obs;
  set hidePassword(bool value) => this._hidePassword.toggle();
  bool get hidePassword => this._hidePassword.value;

  final _index = 0.obs;
  set indexIndicator(int value) => this._index.value = value;
  int get indexIndicator => this._index.value;

  final _busyStates = <int, bool>{}.obs;
  Map<int, bool> get busyState => _busyStates;

  final _errorStates = <int, bool>{}.obs;
  Map<int, bool> get errorStates => _errorStates;

  /// Returns the busy status for an object if it exists. Returns false if not present
  bool busy(Object object) => busyState[object.hashCode] ?? false;
  dynamic error(Object object) => _errorStates[object.hashCode];

  /// Returns the busy status of the controller
  bool get isBusy => busy(this);

  /// Returns the error status of the controller
  bool get hasError => error(this) != null;

  /// Returns the error status of the controller
  dynamic get getError => error(this);

  /// Sets the error for the ViewModel
  void setError(dynamic error) {
    setErrorForObject(this, error);
  }

  /// Returns a boolean that indicates if the viewmodel has an error for the key
  bool hasErrorForKey(Object key) => error(key) != null;

  /// Clears all the errors
  void clearErrors() {
    _errorStates.clear();
  }

  /// Marks the controller as busy and calls notify listeners
  void setBusy(bool value) {
    setBusyForObject(this, value);
  }

  /// Sets the busy state for the object equal to the value passed in and notifies Listeners
  /// If you're using a primitive type the value SHOULD NOT BE CHANGED, since Hashcode uses == value
  void setBusyForObject(Object object, bool value) {
    print("[${object.hashCode}] = $value");
    _busyStates[object.hashCode] = value;
    update();
  }

  /// Sets the error state for the object equal to the value passed in and notifies Listeners
  /// If you're using a primitive type the value SHOULD NOT BE CHANGED, since Hashcode uses == value
  void setErrorForObject(Object object, dynamic value) {
    _errorStates[object.hashCode] = value;
    update();
  }

  void hideKeyboard() {
    FocusScope.of(Get.overlayContext).requestFocus(new FocusNode());
  }
}
