mkdir -p android/app/src/main/java/com/maple52046/apollo
flutter pub run pigeon \
    --input .pigeon.dart \
    --dart_out lib/apollo.dart \
    --objc_header_out ios/Runner/ApolloApi.h \
    --objc_source_out ios/Runner/ApolloApi.m \
    --java_out android/app/src/main/java/com/maple52046/apollo/ApolloApi.java \
    --java_package "com.maple52046.apollo"
