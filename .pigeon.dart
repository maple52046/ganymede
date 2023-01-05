import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class ApolloApi {
  String introduction();
  String greeting(String who);
}
