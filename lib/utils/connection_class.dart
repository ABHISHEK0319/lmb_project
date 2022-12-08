import 'package:flutter/services.dart';
import 'dart:async';

class ConnectionClass {
  static const MethodChannel _channel =
      MethodChannel('plugin.sqlconn.sql_conn/sql_conn');

  static bool _isConnected = false;

  /// To check if application is connected with database
  static bool get isConnected => _isConnected;

  static Future conn() async {
    Map<String, dynamic> args = {
      "ip": "103.145.51.232",
      "port": "1433",
      "databaseName": "ggl_lmb_master",
      "username": "ggl_lmbUser1",
      "password": "user1@12@3",
      "timeout": 60,
    };
    try {
      _isConnected = await _channel.invokeMethod("connectDB", args);
    } catch (error) {
      // print(error);
      rethrow;
    }
  }

  static Future readData(String query) async {
    Map<String, dynamic> args = {
      "query": query,
    };
    try {
      return await _channel.invokeMethod("readData", args);
    } catch (error) {
      // print(error);
      rethrow;
    }
  }

  static Future writeData(String query) async {
    Map<String, dynamic> args = {
      "query": query,
    };
    try {
      return await _channel.invokeMethod("writeData", args);
    } catch (error) {
      // print(error);
      rethrow;
    }
  }

  /// To disconnect form the database.
  static Future disconnect() async {
    try {
      _isConnected = await _channel.invokeMethod("disconnectDB");
    } catch (error) {
      // print(error);
      rethrow;
    }
  }
}
