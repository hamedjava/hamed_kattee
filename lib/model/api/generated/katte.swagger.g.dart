// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'katte.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      tokenType: json['token_type'] as String?,
      expiresIn: json['expires_in'] as int?,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) => AddressDto(
      clientId: json['clientId'] as String?,
      clientPhoneNumber: json['clientPhoneNumber'] as String?,
      clientFname: json['clientFname'] as String?,
      clientLname: json['clientLname'] as String?,
      topic: json['topic'] as String?,
      postalCode: json['postalCode'] as String?,
      location: json['location'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'clientPhoneNumber': instance.clientPhoneNumber,
      'clientFname': instance.clientFname,
      'clientLname': instance.clientLname,
      'topic': instance.topic,
      'postalCode': instance.postalCode,
      'location': instance.location,
      'id': instance.id,
    };

AddressDtoApiResult _$AddressDtoApiResultFromJson(Map<String, dynamic> json) =>
    AddressDtoApiResult(
      data: json['data'] == null
          ? null
          : AddressDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddressDtoApiResultToJson(
        AddressDtoApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

AddressDtoListApiResult _$AddressDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    AddressDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AddressDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddressDtoListApiResultToJson(
        AddressDtoListApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

ApiResult _$ApiResultFromJson(Map<String, dynamic> json) => ApiResult(
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiResultToJson(ApiResult instance) => <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

Card2Dto _$Card2DtoFromJson(Map<String, dynamic> json) => Card2Dto(
      addressId: json['addressId'] as String?,
      payOnline: json['payOnline'] as bool?,
    );

Map<String, dynamic> _$Card2DtoToJson(Card2Dto instance) => <String, dynamic>{
      'addressId': instance.addressId,
      'payOnline': instance.payOnline,
    };

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => CategoryDto(
      name: json['name'] as String?,
      imageLink: json['imageLink'] as String?,
      code: json['code'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CategoryDtoToJson(CategoryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageLink': instance.imageLink,
      'code': instance.code,
      'id': instance.id,
    };

CategoryDtoListApiResult _$CategoryDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    CategoryDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CategoryDtoListApiResultToJson(
        CategoryDtoListApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) => CommentDto(
      text: json['text'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      userId: json['userId'] as String?,
      userFname: json['userFname'] as String?,
      userLname: json['userLname'] as String?,
      productsId: json['productsId'] as String?,
      commentStatus: commentStatusFromJson(json['commentStatus']),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CommentDtoToJson(CommentDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'rate': instance.rate,
      'userId': instance.userId,
      'userFname': instance.userFname,
      'userLname': instance.userLname,
      'productsId': instance.productsId,
      'commentStatus': commentStatusToJson(instance.commentStatus),
      'id': instance.id,
    };

CommentDtoApiResult _$CommentDtoApiResultFromJson(Map<String, dynamic> json) =>
    CommentDtoApiResult(
      data: json['data'] == null
          ? null
          : CommentDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CommentDtoApiResultToJson(
        CommentDtoApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

CommentDtoListApiResult _$CommentDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    CommentDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CommentDtoListApiResultToJson(
        CommentDtoListApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

ListChosedProductDto _$ListChosedProductDtoFromJson(
        Map<String, dynamic> json) =>
    ListChosedProductDto(
      productId: json['productId'] as String?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$ListChosedProductDtoToJson(
        ListChosedProductDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'count': instance.count,
    };

LoginOtpDto _$LoginOtpDtoFromJson(Map<String, dynamic> json) => LoginOtpDto(
      phoneNumber: json['phoneNumber'] as String?,
      code: json['code'] as int?,
    );

Map<String, dynamic> _$LoginOtpDtoToJson(LoginOtpDto instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
    };

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) =>
    NotificationDto(
      topic: json['topic'] as String?,
      text: json['text'] as String?,
      dateTimes: json['dateTimes'] == null
          ? null
          : DateTime.parse(json['dateTimes'] as String),
      userId: json['userId'] as String?,
      userPhoneNumber: json['userPhoneNumber'] as String?,
      userFName: json['userFName'] as String?,
      userLName: json['userLName'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$NotificationDtoToJson(NotificationDto instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'text': instance.text,
      'dateTimes': instance.dateTimes?.toIso8601String(),
      'userId': instance.userId,
      'userPhoneNumber': instance.userPhoneNumber,
      'userFName': instance.userFName,
      'userLName': instance.userLName,
      'id': instance.id,
    };

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      code: json['code'] as int?,
      name: json['name'] as String?,
      price: json['price'] as int?,
      imageLink: json['imageLink'] as String?,
      discount: json['discount'] as int?,
      percent: json['percent'] as int?,
      count: json['count'] as int?,
      rate: (json['rate'] as num?)?.toDouble(),
      totalRate: (json['totalRate'] as num?)?.toDouble(),
      shortDetail: json['shortDetail'] as String?,
      longDetail: json['longDetail'] as String?,
      creationDateTime: json['creationDateTime'] == null
          ? null
          : DateTime.parse(json['creationDateTime'] as String),
      categorysId: json['categorysId'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'price': instance.price,
      'imageLink': instance.imageLink,
      'discount': instance.discount,
      'percent': instance.percent,
      'count': instance.count,
      'rate': instance.rate,
      'totalRate': instance.totalRate,
      'shortDetail': instance.shortDetail,
      'longDetail': instance.longDetail,
      'creationDateTime': instance.creationDateTime?.toIso8601String(),
      'categorysId': instance.categorysId,
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'comments': instance.comments?.map((e) => e.toJson()).toList(),
      'id': instance.id,
    };

ProductDtoApiResult _$ProductDtoApiResultFromJson(Map<String, dynamic> json) =>
    ProductDtoApiResult(
      data: json['data'] == null
          ? null
          : ProductDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProductDtoApiResultToJson(
        ProductDtoApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

ProductDtoListApiResult _$ProductDtoListApiResultFromJson(
        Map<String, dynamic> json) =>
    ProductDtoListApiResult(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ProductDtoListApiResultToJson(
        ProductDtoListApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

ShopCardDetailDto _$ShopCardDetailDtoFromJson(Map<String, dynamic> json) =>
    ShopCardDetailDto(
      price: json['price'] as int?,
      count: json['count'] as int?,
      disCount: json['disCount'] as int?,
      productsId: json['productsId'] as String?,
      productsPrice: json['productsPrice'] as int?,
      productsDiscount: json['productsDiscount'] as int?,
      productsName: json['productsName'] as String?,
      productsImageLink: json['productsImageLink'] as String?,
      creationDateTime: json['creationDateTime'] == null
          ? null
          : DateTime.parse(json['creationDateTime'] as String),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ShopCardDetailDtoToJson(ShopCardDetailDto instance) =>
    <String, dynamic>{
      'price': instance.price,
      'count': instance.count,
      'disCount': instance.disCount,
      'productsId': instance.productsId,
      'productsPrice': instance.productsPrice,
      'productsDiscount': instance.productsDiscount,
      'productsName': instance.productsName,
      'productsImageLink': instance.productsImageLink,
      'creationDateTime': instance.creationDateTime?.toIso8601String(),
      'id': instance.id,
    };

ShopCardDto _$ShopCardDtoFromJson(Map<String, dynamic> json) => ShopCardDto(
      userId: json['userId'] as String?,
      addressId: json['addressId'] as String?,
      orderReportId: json['orderReportId'] as String?,
      orderReportTax: json['orderReportTax'] as int?,
      orderReportPostCost: json['orderReportPostCost'] as int?,
      userUserName: json['userUserName'] as String?,
      userFName: json['userFName'] as String?,
      userLName: json['userLName'] as String?,
      totalPrice: json['totalPrice'] as int?,
      postPrice: json['postPrice'] as int?,
      finalTotalPrice: json['finalTotalPrice'] as int?,
      payOnline: json['payOnline'] as bool?,
      shopCardDetails: (json['shopCardDetails'] as List<dynamic>?)
              ?.map(
                  (e) => ShopCardDetailDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => AddressDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ShopCardDtoToJson(ShopCardDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'addressId': instance.addressId,
      'orderReportId': instance.orderReportId,
      'orderReportTax': instance.orderReportTax,
      'orderReportPostCost': instance.orderReportPostCost,
      'userUserName': instance.userUserName,
      'userFName': instance.userFName,
      'userLName': instance.userLName,
      'totalPrice': instance.totalPrice,
      'postPrice': instance.postPrice,
      'finalTotalPrice': instance.finalTotalPrice,
      'payOnline': instance.payOnline,
      'shopCardDetails':
          instance.shopCardDetails?.map((e) => e.toJson()).toList(),
      'addresses': instance.addresses?.map((e) => e.toJson()).toList(),
      'id': instance.id,
    };

ShopCardDtoApiResult _$ShopCardDtoApiResultFromJson(
        Map<String, dynamic> json) =>
    ShopCardDtoApiResult(
      data: json['data'] == null
          ? null
          : ShopCardDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ShopCardDtoApiResultToJson(
        ShopCardDtoApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) => SignUpDto(
      fName: json['fName'] as String?,
      lName: json['lName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      otp: json['otp'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SignUpDtoToJson(SignUpDto instance) => <String, dynamic>{
      'fName': instance.fName,
      'lName': instance.lName,
      'phoneNumber': instance.phoneNumber,
      'otp': instance.otp,
      'id': instance.id,
    };

StringApiResult _$StringApiResultFromJson(Map<String, dynamic> json) =>
    StringApiResult(
      data: json['data'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StringApiResultToJson(StringApiResult instance) =>
    <String, dynamic>{
      'data': instance.data,
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

SyncOrderDto _$SyncOrderDtoFromJson(Map<String, dynamic> json) => SyncOrderDto(
      totalPrice: json['totalPrice'] as int?,
      description: json['description'] as String?,
      listChosedProduct: (json['list_Chosed_Product'] as List<dynamic>?)
              ?.map((e) =>
                  ListChosedProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SyncOrderDtoToJson(SyncOrderDto instance) =>
    <String, dynamic>{
      'totalPrice': instance.totalPrice,
      'description': instance.description,
      'list_Chosed_Product':
          instance.listChosedProduct?.map((e) => e.toJson()).toList(),
    };

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      student: json['student'] as bool?,
      name: json['name'] as String?,
      managerName: json['managerName'] as String?,
      userName: json['userName'] as String,
      email: json['email'] as String?,
      password: json['password'] as String?,
      passwordConfirm: json['passwordConfirm'] as String?,
      fname: json['fname'] as String,
      lname: json['lname'] as String,
      gender: genderTypeFromJson(json['gender']),
      nationalCode: json['nationalCode'] as String,
      phoneNumber: json['phoneNumber'] as String,
      code: json['code'] as String?,
      birthCertificateNumber: json['birthCertificateNumber'] as String,
      birthDay: json['birthDay'] as String,
      birthCity: json['birthCity'] as String,
      certificateCity: json['certificateCity'] as String,
      phone: json['phone'] as String,
      postalCode: json['postalCode'] as String,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'student': instance.student,
      'name': instance.name,
      'managerName': instance.managerName,
      'userName': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'passwordConfirm': instance.passwordConfirm,
      'fname': instance.fname,
      'lname': instance.lname,
      'gender': genderTypeToJson(instance.gender),
      'nationalCode': instance.nationalCode,
      'phoneNumber': instance.phoneNumber,
      'code': instance.code,
      'birthCertificateNumber': instance.birthCertificateNumber,
      'birthDay': instance.birthDay,
      'birthCity': instance.birthCity,
      'certificateCity': instance.certificateCity,
      'phone': instance.phone,
      'postalCode': instance.postalCode,
      'id': instance.id,
    };

UserDtoApiResult _$UserDtoApiResultFromJson(Map<String, dynamic> json) =>
    UserDtoApiResult(
      data: json['data'] == null
          ? null
          : UserDto.fromJson(json['data'] as Map<String, dynamic>),
      isSuccess: json['isSuccess'] as bool?,
      statusCode: apiResultStatusCodeFromJson(json['statusCode']),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$UserDtoApiResultToJson(UserDtoApiResult instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'isSuccess': instance.isSuccess,
      'statusCode': apiResultStatusCodeToJson(instance.statusCode),
      'message': instance.message,
    };

ApiV1AuthenticationFreeTokenPost$RequestBody
    _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        ApiV1AuthenticationFreeTokenPost$RequestBody(
          grantType: json['grant_type'] as String?,
          username: json['username'] as String?,
          password: json['password'] as String?,
          refreshToken: json['refresh_token'] as String?,
          scope: json['scope'] as String?,
          clientId: json['client_id'] as String?,
          clientSecret: json['client_secret'] as String?,
        );

Map<String, dynamic> _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson(
        ApiV1AuthenticationFreeTokenPost$RequestBody instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };

ApiV1AuthenticationEditProfileImagePost$RequestBody
    _$ApiV1AuthenticationEditProfileImagePost$RequestBodyFromJson(
            Map<String, dynamic> json) =>
        ApiV1AuthenticationEditProfileImagePost$RequestBody(
          file: json['File'] as String?,
        );

Map<String, dynamic>
    _$ApiV1AuthenticationEditProfileImagePost$RequestBodyToJson(
            ApiV1AuthenticationEditProfileImagePost$RequestBody instance) =>
        <String, dynamic>{
          'File': instance.file,
        };
