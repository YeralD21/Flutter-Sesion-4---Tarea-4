
import 'package:asistencia_upeu2/modelo/UsuarioModelo.dart';
import 'package:asistencia_upeu2/util/UrlApi.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart'
;
import 'package:retrofit/retrofit.dart';
part 'usuario_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class UsuarioApi{

  factory UsuarioApi(Dio dio, {String baseUrl})=_UsuarioApi;

  static UsuarioApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return UsuarioApi(dio);
  }

  //aca hacemos LOGIN
  @POST("/asis/login")
  Future<RespUsuarioModelo> login(@Body() UsuarioModelo usuario);
}