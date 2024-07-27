import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:workspace/app_data/app_colors/app_color.dart';

class ApiMethods{

  static Future<String> getApi({required String apiUrl, Map<String,String> apiHeaders = const {}, bool isShowLoader = false}) async {
    if(isShowLoader)
      {
        Get.dialog(const Center(child: CircularProgressIndicator(color: AppColor.blackTextPrimary,backgroundColor: Colors.white,),));
      }
    debugPrint("=================|| API INFO ||===============");
    debugPrint("TYPE : GET");
    debugPrint("URL : $apiUrl");
    debugPrint("Headers : ${apiHeaders.toString()}");
    debugPrint("=================|| RESPONSE INFO ||===============");
    try{
      var url = Uri.parse(apiUrl);
      var response = await http.get(url,headers:apiHeaders);
      handleHttpStatusCode(response.statusCode);
      debugPrint('Response body: ${response.body}');
      if(response.statusCode==200)
        {
          return response.body;
        }
      else
        {
          return "API ERROR CODE : ${response.statusCode}";
        }


    }catch (e){
      debugPrint("=================|| EXCEPTION INFO ||===============");
      debugPrint('Exception Error : $e');
      return "";
    }finally{
      if(isShowLoader)
      {
        Get.back();
      }
    }


  }

  static Future<String> postApi({required String apiUrl, required Map<String,String> apiBody,Map<String,String> apiHeaders = const {}, bool isShowLoader = false}) async {
    if(isShowLoader)
      {
        Get.dialog(const Center(child: CircularProgressIndicator(color: AppColor.blackTextPrimary,backgroundColor: Colors.white,),));
      }
    debugPrint("=================|| API INFO ||===============");
    debugPrint("TYPE : POST");
    debugPrint("URL : $apiUrl");
    debugPrint("BODY : ${apiBody.toString()}");
    debugPrint("Headers : ${apiHeaders.toString()}");
    debugPrint("=================|| RESPONSE INFO ||===============");
    try{
      var url = Uri.parse(apiUrl);
      var response = await http.post(url, body: apiBody, headers:apiHeaders);
      handleHttpStatusCode(response.statusCode);
      debugPrint('Response body: ${response.body}');
      if(response.statusCode==200)
        {
          return response.body;
        }
      else
        {
          return "API ERROR CODE : ${response.statusCode}";
        }


    }catch (e){
      debugPrint("=================|| EXCEPTION INFO ||===============");
      debugPrint('Exception Error : $e');
      return "";
    }finally{
      if(isShowLoader)
      {
        Get.back();
      }
    }


  }

  static void handleHttpStatusCode(int statusCode) {
    switch (statusCode) {
      case 100:
        debugPrint('Response Status 100 -> Continue: The server has received the request headers and the client should proceed to send the request body.');
        break;
      case 101:
        debugPrint('Response Status 101 -> Switching Protocols: The server is switching protocols as requested by the client.');
        break;
      case 200:
        debugPrint('Response Status 200 -> OK: The request was successful and the server has returned the requested data.');
        break;
      case 201:
        debugPrint('Response Status 201 -> Created: The request was successful and a new resource was created.');
        break;
      case 202:
        debugPrint('Response Status 202 -> Accepted: The request has been accepted for processing, but the processing is not yet complete.');
        break;
      case 204:
        debugPrint('Response Status 204 -> No Content: The request was successful, but there is no content to send in the response.');
        break;
      case 301:
        debugPrint('Response Status 301 -> Moved Permanently: The resource has been moved to a new URL.');
        break;
      case 302:
        debugPrint('Response Status 302 -> Found: The resource has been temporarily moved to a different URL.');
        break;
      case 304:
        debugPrint('Response Status 304 -> Not Modified: The resource has not been modified since the last request.');
        break;
      case 400:
        debugPrint('Response Status 400 -> Bad Request: The server could not understand the request due to invalid syntax.');
        break;
      case 401:
        debugPrint('Response Status 401 -> Unauthorized: Authentication is required and has failed or has not been provided.');
        break;
      case 403:
        debugPrint('Response Status 403 -> Forbidden: The server understands the request but refuses to authorize it.');
        break;
      case 404:
        debugPrint('Response Status 404 -> Not Found: The requested resource could not be found on the server.');
        break;
      case 405:
        debugPrint('Response Status 405 -> Method Not Allowed: The request method is known by the server but is not supported for the resource.');
        break;
      case 408:
        debugPrint('Response Status 408 -> Request Timeout: The server timed out waiting for the request from the client.');
        break;
      case 409:
        debugPrint('Response Status 409 -> Conflict: The request could not be completed due to a conflict with the current state of the resource.');
        break;
      case 422:
        debugPrint('Response Status 422 -> Unprocessable Entity: The request was well-formed but unable to be followed due to semantic errors.');
        break;
      case 500:
        debugPrint('Response Status 500 -> Internal Server Error: The server encountered an unexpected condition that prevented it from fulfilling the request.');
        break;
      case 501:
        debugPrint('Response Status 501 -> Not Implemented: The server does not support the functionality required to fulfill the request.');
        break;
      case 502:
        debugPrint('Response Status 502 -> Bad Gateway: The server received an invalid response from the upstream server.');
        break;
      case 503:
        debugPrint('Response Status 503 -> Service Unavailable: The server is currently unable to handle the request due to temporary overloading or maintenance.');
        break;
      case 504:
        debugPrint('Response Status 504 -> Gateway Timeout: The server did not receive a timely response from the upstream server.');
        break;
      default:
        debugPrint('Unknown status code: $statusCode');
    }
  }
}