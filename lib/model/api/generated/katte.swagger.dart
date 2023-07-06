// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'katte.enums.swagger.dart' as enums;
export 'katte.enums.swagger.dart';

part 'katte.swagger.chopper.dart';
part 'katte.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Katte extends ChopperService {
  static Katte create({
    ChopperClient? client,
    Authenticator? authenticator,
    Converter? converter,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Katte(client);
    }

    final newClient = ChopperClient(
        services: [_$Katte()],
        converter: converter ?? $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Katte(newClient);
  }

  ///Creates a Address
  Future<chopper.Response<ApiResult>> apiV1AddressPost(
      {required AddressDto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1AddressPost(body: body);
  }

  ///Creates a Address
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Address',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1AddressPost(
      {@Body() required AddressDto? body});

  ///Returns all Addresses
  Future<chopper.Response<AddressDtoListApiResult>> apiV1AddressGet() {
    generatedMapping.putIfAbsent(
        AddressDtoListApiResult, () => AddressDtoListApiResult.fromJsonFactory);

    return _apiV1AddressGet();
  }

  ///Returns all Addresses
  @Get(path: 'http://103.75.197.248:90/api/v1/Address')
  Future<chopper.Response<AddressDtoListApiResult>> _apiV1AddressGet();

  ///Updates a Address by unique id
  ///@param id A Address representation
  Future<chopper.Response<ApiResult>> apiV1AddressPut({
    String? id,
    required AddressDto? body,
  }) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1AddressPut(id: id, body: body);
  }

  ///Updates a Address by unique id
  ///@param id A Address representation
  @Put(
    path: 'http://103.75.197.248:90/api/v1/Address',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1AddressPut({
    @Query('id') String? id,
    @Body() required AddressDto? body,
  });

  ///
  Future<chopper.Response<AddressDtoListApiResult>>
      apiV1AddressGetAddressOfUserPost() {
    generatedMapping.putIfAbsent(
        AddressDtoListApiResult, () => AddressDtoListApiResult.fromJsonFactory);

    return _apiV1AddressGetAddressOfUserPost();
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Address/Get_Address_Of_User',
    optionalBody: true,
  )
  Future<chopper.Response<AddressDtoListApiResult>>
      _apiV1AddressGetAddressOfUserPost();

  ///Retrieves a Address by unique id
  ///@param id a unique id for the Address
  Future<chopper.Response<AddressDtoApiResult>> apiV1AddressIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        AddressDtoApiResult, () => AddressDtoApiResult.fromJsonFactory);

    return _apiV1AddressIdGet(id: id);
  }

  ///Retrieves a Address by unique id
  ///@param id a unique id for the Address
  @Get(path: 'http://103.75.197.248:90/api/v1/Address/{id}')
  Future<chopper.Response<AddressDtoApiResult>> _apiV1AddressIdGet(
      {@Path('id') required String? id});

  ///Deletes a Address by unique id
  ///@param id A unique id for the Address
  Future<chopper.Response<ApiResult>> apiV1AddressIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1AddressIdDelete(id: id);
  }

  ///Deletes a Address by unique id
  ///@param id A unique id for the Address
  @Delete(path: 'http://103.75.197.248:90/api/v1/Address/{id}')
  Future<chopper.Response<ApiResult>> _apiV1AddressIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<AccessToken>> apiV1AuthenticationFreeTokenPost({
    String? grantType,
    String? username,
    String? password,
    String? refreshToken,
    String? scope,
    String? clientId,
    String? clientSecret,
  }) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiV1AuthenticationFreeTokenPost(
        grantType: grantType,
        username: username,
        password: password,
        refreshToken: refreshToken,
        scope: scope,
        clientId: clientId,
        clientSecret: clientSecret);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Authentication/FreeToken',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<AccessToken>> _apiV1AuthenticationFreeTokenPost({
    @Part('grant_type') String? grantType,
    @Part('username') String? username,
    @Part('password') String? password,
    @Part('refresh_token') String? refreshToken,
    @Part('scope') String? scope,
    @Part('client_id') String? clientId,
    @Part('client_secret') String? clientSecret,
  });

  ///
  Future<chopper.Response<ApiResult>> apiV1AuthenticationSignUpPost(
      {required SignUpDto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1AuthenticationSignUpPost(body: body);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Authentication/SignUp',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1AuthenticationSignUpPost(
      {@Body() required SignUpDto? body});

  ///
  ///@param UserName
  Future<chopper.Response<StringApiResult>> apiV1AuthenticationLoginPost(
      {String? userName}) {
    generatedMapping.putIfAbsent(
        StringApiResult, () => StringApiResult.fromJsonFactory);

    return _apiV1AuthenticationLoginPost(userName: userName);
  }

  ///
  ///@param UserName
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Authentication/Login',
    optionalBody: true,
  )
  Future<chopper.Response<StringApiResult>> _apiV1AuthenticationLoginPost(
      {@Query('UserName') String? userName});

  ///
  Future<chopper.Response<AccessToken>> apiV1AuthenticationLoginOtpPost(
      {required LoginOtpDto? body}) {
    generatedMapping.putIfAbsent(
        AccessToken, () => AccessToken.fromJsonFactory);

    return _apiV1AuthenticationLoginOtpPost(body: body);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Authentication/LoginOtp',
    optionalBody: true,
  )
  Future<chopper.Response<AccessToken>> _apiV1AuthenticationLoginOtpPost(
      {@Body() required LoginOtpDto? body});

  ///
  Future<chopper.Response<UserDtoApiResult>> apiV1AuthenticationProfileGet() {
    generatedMapping.putIfAbsent(
        UserDtoApiResult, () => UserDtoApiResult.fromJsonFactory);

    return _apiV1AuthenticationProfileGet();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/Authentication/Profile')
  Future<chopper.Response<UserDtoApiResult>> _apiV1AuthenticationProfileGet();

  ///
  Future<chopper.Response<ApiResult>> apiV1AuthenticationEditProfileImagePost(
      {String? File}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1AuthenticationEditProfileImagePost(File: File);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Authentication/EditProfileImage',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<ApiResult>> _apiV1AuthenticationEditProfileImagePost(
      {@PartFile() String? File});

  ///
  Future<chopper.Response<CategoryDtoListApiResult>>
      apiV1CategoryListCategoryGet() {
    generatedMapping.putIfAbsent(CategoryDtoListApiResult,
        () => CategoryDtoListApiResult.fromJsonFactory);

    return _apiV1CategoryListCategoryGet();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/Category/ListCategory')
  Future<chopper.Response<CategoryDtoListApiResult>>
      _apiV1CategoryListCategoryGet();

  ///Creates a Comment
  Future<chopper.Response<ApiResult>> apiV1CommentPost(
      {required CommentDto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1CommentPost(body: body);
  }

  ///Creates a Comment
  @Post(
    path: 'http://103.75.197.248:90/api/v1/Comment',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1CommentPost(
      {@Body() required CommentDto? body});

  ///Returns all Comments
  Future<chopper.Response<CommentDtoListApiResult>> apiV1CommentGet() {
    generatedMapping.putIfAbsent(
        CommentDtoListApiResult, () => CommentDtoListApiResult.fromJsonFactory);

    return _apiV1CommentGet();
  }

  ///Returns all Comments
  @Get(path: 'http://103.75.197.248:90/api/v1/Comment')
  Future<chopper.Response<CommentDtoListApiResult>> _apiV1CommentGet();

  ///Updates a Comment by unique id
  ///@param id A Comment representation
  Future<chopper.Response<ApiResult>> apiV1CommentPut({
    String? id,
    required CommentDto? body,
  }) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1CommentPut(id: id, body: body);
  }

  ///Updates a Comment by unique id
  ///@param id A Comment representation
  @Put(
    path: 'http://103.75.197.248:90/api/v1/Comment',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1CommentPut({
    @Query('id') String? id,
    @Body() required CommentDto? body,
  });

  ///
  ///@param ProductId
  Future<chopper.Response<CommentDtoListApiResult>>
      apiV1CommentProductCommentsListGet({String? productId}) {
    generatedMapping.putIfAbsent(
        CommentDtoListApiResult, () => CommentDtoListApiResult.fromJsonFactory);

    return _apiV1CommentProductCommentsListGet(productId: productId);
  }

  ///
  ///@param ProductId
  @Get(path: 'http://103.75.197.248:90/api/v1/Comment/ProductCommentsList')
  Future<chopper.Response<CommentDtoListApiResult>>
      _apiV1CommentProductCommentsListGet(
          {@Query('ProductId') String? productId});

  ///Retrieves a Comment by unique id
  ///@param id a unique id for the Comment
  Future<chopper.Response<CommentDtoApiResult>> apiV1CommentIdGet(
      {required String? id}) {
    generatedMapping.putIfAbsent(
        CommentDtoApiResult, () => CommentDtoApiResult.fromJsonFactory);

    return _apiV1CommentIdGet(id: id);
  }

  ///Retrieves a Comment by unique id
  ///@param id a unique id for the Comment
  @Get(path: 'http://103.75.197.248:90/api/v1/Comment/{id}')
  Future<chopper.Response<CommentDtoApiResult>> _apiV1CommentIdGet(
      {@Path('id') required String? id});

  ///Deletes a Comment by unique id
  ///@param id A unique id for the Comment
  Future<chopper.Response<ApiResult>> apiV1CommentIdDelete(
      {required String? id}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1CommentIdDelete(id: id);
  }

  ///Deletes a Comment by unique id
  ///@param id A unique id for the Comment
  @Delete(path: 'http://103.75.197.248:90/api/v1/Comment/{id}')
  Future<chopper.Response<ApiResult>> _apiV1CommentIdDelete(
      {@Path('id') required String? id});

  ///
  Future<chopper.Response<NotificationDto>>
      apiV1NotificationNotificationListGet() {
    generatedMapping.putIfAbsent(
        NotificationDto, () => NotificationDto.fromJsonFactory);

    return _apiV1NotificationNotificationListGet();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/Notification/Notification_List')
  Future<chopper.Response<NotificationDto>>
      _apiV1NotificationNotificationListGet();

  ///
  Future<chopper.Response<ApiResult>> apiV1PaymentCashOrdersGet() {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1PaymentCashOrdersGet();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/Payment/CashOrders')
  Future<chopper.Response<ApiResult>> _apiV1PaymentCashOrdersGet();

  ///
  ///@param ShopCardId
  ///@param AddressId
  Future<chopper.Response<StringApiResult>> apiV1PaymentProductPayGet({
    String? shopCardId,
    String? addressId,
  }) {
    generatedMapping.putIfAbsent(
        StringApiResult, () => StringApiResult.fromJsonFactory);

    return _apiV1PaymentProductPayGet(
        shopCardId: shopCardId, addressId: addressId);
  }

  ///
  ///@param ShopCardId
  ///@param AddressId
  @Get(path: 'http://103.75.197.248:90/api/v1/Payment/ProductPay')
  Future<chopper.Response<StringApiResult>> _apiV1PaymentProductPayGet({
    @Query('ShopCardId') String? shopCardId,
    @Query('AddressId') String? addressId,
  });

  ///
  ///@param ShopCardId
  ///@param UserId
  ///@param Authority
  ///@param status
  Future<chopper.Response<ApiResult>>
      apiV1PaymentProductPaymentConfirmationGet({
    String? shopCardId,
    String? userId,
    String? authority,
    String? status,
  }) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1PaymentProductPaymentConfirmationGet(
        shopCardId: shopCardId,
        userId: userId,
        authority: authority,
        status: status);
  }

  ///
  ///@param ShopCardId
  ///@param UserId
  ///@param Authority
  ///@param status
  @Get(
      path:
          'http://103.75.197.248:90/api/v1/Payment/ProductPaymentConfirmation')
  Future<chopper.Response<ApiResult>>
      _apiV1PaymentProductPaymentConfirmationGet({
    @Query('ShopCardId') String? shopCardId,
    @Query('UserId') String? userId,
    @Query('Authority') String? authority,
    @Query('status') String? status,
  });

  ///
  ///@param Searched
  Future<chopper.Response<ProductDtoApiResult>> apiV1ProductSearchProductGet(
      {String? searched}) {
    generatedMapping.putIfAbsent(
        ProductDtoApiResult, () => ProductDtoApiResult.fromJsonFactory);

    return _apiV1ProductSearchProductGet(searched: searched);
  }

  ///
  ///@param Searched
  @Get(path: 'http://103.75.197.248:90/api/v1/Product/SearchProduct')
  Future<chopper.Response<ProductDtoApiResult>> _apiV1ProductSearchProductGet(
      {@Query('Searched') String? searched});

  ///
  ///@param ProductId
  Future<chopper.Response<ProductDtoApiResult>> apiV1ProductSingleProductGet(
      {String? productId}) {
    generatedMapping.putIfAbsent(
        ProductDtoApiResult, () => ProductDtoApiResult.fromJsonFactory);

    return _apiV1ProductSingleProductGet(productId: productId);
  }

  ///
  ///@param ProductId
  @Get(path: 'http://103.75.197.248:90/api/v1/Product/SingleProduct')
  Future<chopper.Response<ProductDtoApiResult>> _apiV1ProductSingleProductGet(
      {@Query('ProductId') String? productId});

  ///All ProductList
  Future<chopper.Response<ProductDtoListApiResult>>
      apiV1ProductAllProductListGet() {
    generatedMapping.putIfAbsent(
        ProductDtoListApiResult, () => ProductDtoListApiResult.fromJsonFactory);

    return _apiV1ProductAllProductListGet();
  }

  ///All ProductList
  @Get(path: 'http://103.75.197.248:90/api/v1/Product/AllProductList')
  Future<chopper.Response<ProductDtoListApiResult>>
      _apiV1ProductAllProductListGet();

  ///Products that has top Rank
  Future<chopper.Response<ProductDtoListApiResult>>
      apiV1ProductTopestProductListGet() {
    generatedMapping.putIfAbsent(
        ProductDtoListApiResult, () => ProductDtoListApiResult.fromJsonFactory);

    return _apiV1ProductTopestProductListGet();
  }

  ///Products that has top Rank
  @Get(path: 'http://103.75.197.248:90/api/v1/Product/TopestProductList')
  Future<chopper.Response<ProductDtoListApiResult>>
      _apiV1ProductTopestProductListGet();

  ///Products that has most discount
  Future<chopper.Response<ProductDtoListApiResult>>
      apiV1ProductDiscountProductListGet() {
    generatedMapping.putIfAbsent(
        ProductDtoListApiResult, () => ProductDtoListApiResult.fromJsonFactory);

    return _apiV1ProductDiscountProductListGet();
  }

  ///Products that has most discount
  @Get(path: 'http://103.75.197.248:90/api/v1/Product/DiscountProductList')
  Future<chopper.Response<ProductDtoListApiResult>>
      _apiV1ProductDiscountProductListGet();

  ///
  Future<chopper.Response<ApiResult>> apiV1ShopCardSyncShopCardPost(
      {required SyncOrderDto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1ShopCardSyncShopCardPost(body: body);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/ShopCard/SyncShopCard',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1ShopCardSyncShopCardPost(
      {@Body() required SyncOrderDto? body});

  ///
  Future<chopper.Response<ShopCardDtoApiResult>>
      apiV1ShopCardShopCardDetail1Get() {
    generatedMapping.putIfAbsent(
        ShopCardDtoApiResult, () => ShopCardDtoApiResult.fromJsonFactory);

    return _apiV1ShopCardShopCardDetail1Get();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_1')
  Future<chopper.Response<ShopCardDtoApiResult>>
      _apiV1ShopCardShopCardDetail1Get();

  ///
  Future<chopper.Response<ShopCardDtoApiResult>>
      apiV1ShopCardShopCardDetail2Get() {
    generatedMapping.putIfAbsent(
        ShopCardDtoApiResult, () => ShopCardDtoApiResult.fromJsonFactory);

    return _apiV1ShopCardShopCardDetail2Get();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_2')
  Future<chopper.Response<ShopCardDtoApiResult>>
      _apiV1ShopCardShopCardDetail2Get();

  ///
  Future<chopper.Response<ApiResult>> apiV1ShopCardShopCardDetail2Post(
      {required Card2Dto? body}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1ShopCardShopCardDetail2Post(body: body);
  }

  ///
  @Post(
    path: 'http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_2',
    optionalBody: true,
  )
  Future<chopper.Response<ApiResult>> _apiV1ShopCardShopCardDetail2Post(
      {@Body() required Card2Dto? body});

  ///
  Future<chopper.Response<ShopCardDtoApiResult>>
      apiV1ShopCardShopCardDetail3Get() {
    generatedMapping.putIfAbsent(
        ShopCardDtoApiResult, () => ShopCardDtoApiResult.fromJsonFactory);

    return _apiV1ShopCardShopCardDetail3Get();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_3')
  Future<chopper.Response<ShopCardDtoApiResult>>
      _apiV1ShopCardShopCardDetail3Get();

  ///
  ///@param ShopCardDetailId
  Future<chopper.Response<ApiResult>> apiV1ShopCardDeleteShopCardDetailGet(
      {String? shopCardDetailId}) {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1ShopCardDeleteShopCardDetailGet(
        shopCardDetailId: shopCardDetailId);
  }

  ///
  ///@param ShopCardDetailId
  @Get(path: 'http://103.75.197.248:90/api/v1/ShopCard/Delete_ShopCardDetail')
  Future<chopper.Response<ApiResult>> _apiV1ShopCardDeleteShopCardDetailGet(
      {@Query('ShopCardDetailId') String? shopCardDetailId});

  ///
  Future<chopper.Response<ApiResult>> apiV1ShopCardDeleteAllShopCardGet() {
    generatedMapping.putIfAbsent(ApiResult, () => ApiResult.fromJsonFactory);

    return _apiV1ShopCardDeleteAllShopCardGet();
  }

  ///
  @Get(path: 'http://103.75.197.248:90/api/v1/ShopCard/Delete_All_ShopCard')
  Future<chopper.Response<ApiResult>> _apiV1ShopCardDeleteAllShopCardGet();
}

@JsonSerializable(explicitToJson: true)
class AccessToken {
  AccessToken({
    this.accessToken,
    this.refreshToken,
    this.tokenType,
    this.expiresIn,
  });

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);

  static const toJsonFactory = _$AccessTokenToJson;
  Map<String, dynamic> toJson() => _$AccessTokenToJson(this);

  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'token_type')
  final String? tokenType;
  @JsonKey(name: 'expires_in')
  final int? expiresIn;
  static const fromJsonFactory = _$AccessTokenFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccessToken &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      runtimeType.hashCode;
}

extension $AccessTokenExtension on AccessToken {
  AccessToken copyWith(
      {String? accessToken,
      String? refreshToken,
      String? tokenType,
      int? expiresIn}) {
    return AccessToken(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        tokenType: tokenType ?? this.tokenType,
        expiresIn: expiresIn ?? this.expiresIn);
  }

  AccessToken copyWithWrapped(
      {Wrapped<String?>? accessToken,
      Wrapped<String?>? refreshToken,
      Wrapped<String?>? tokenType,
      Wrapped<int?>? expiresIn}) {
    return AccessToken(
        accessToken:
            (accessToken != null ? accessToken.value : this.accessToken),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        tokenType: (tokenType != null ? tokenType.value : this.tokenType),
        expiresIn: (expiresIn != null ? expiresIn.value : this.expiresIn));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressDto {
  AddressDto({
    this.clientId,
    this.clientPhoneNumber,
    this.clientFname,
    this.clientLname,
    this.topic,
    this.postalCode,
    this.location,
    this.id,
  });

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  static const toJsonFactory = _$AddressDtoToJson;
  Map<String, dynamic> toJson() => _$AddressDtoToJson(this);

  @JsonKey(name: 'clientId')
  final String? clientId;
  @JsonKey(name: 'clientPhoneNumber')
  final String? clientPhoneNumber;
  @JsonKey(name: 'clientFname')
  final String? clientFname;
  @JsonKey(name: 'clientLname')
  final String? clientLname;
  @JsonKey(name: 'topic')
  final String? topic;
  @JsonKey(name: 'postalCode')
  final String? postalCode;
  @JsonKey(name: 'location')
  final String? location;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$AddressDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressDto &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.clientPhoneNumber, clientPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.clientPhoneNumber, clientPhoneNumber)) &&
            (identical(other.clientFname, clientFname) ||
                const DeepCollectionEquality()
                    .equals(other.clientFname, clientFname)) &&
            (identical(other.clientLname, clientLname) ||
                const DeepCollectionEquality()
                    .equals(other.clientLname, clientLname)) &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientPhoneNumber) ^
      const DeepCollectionEquality().hash(clientFname) ^
      const DeepCollectionEquality().hash(clientLname) ^
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $AddressDtoExtension on AddressDto {
  AddressDto copyWith(
      {String? clientId,
      String? clientPhoneNumber,
      String? clientFname,
      String? clientLname,
      String? topic,
      String? postalCode,
      String? location,
      String? id}) {
    return AddressDto(
        clientId: clientId ?? this.clientId,
        clientPhoneNumber: clientPhoneNumber ?? this.clientPhoneNumber,
        clientFname: clientFname ?? this.clientFname,
        clientLname: clientLname ?? this.clientLname,
        topic: topic ?? this.topic,
        postalCode: postalCode ?? this.postalCode,
        location: location ?? this.location,
        id: id ?? this.id);
  }

  AddressDto copyWithWrapped(
      {Wrapped<String?>? clientId,
      Wrapped<String?>? clientPhoneNumber,
      Wrapped<String?>? clientFname,
      Wrapped<String?>? clientLname,
      Wrapped<String?>? topic,
      Wrapped<String?>? postalCode,
      Wrapped<String?>? location,
      Wrapped<String?>? id}) {
    return AddressDto(
        clientId: (clientId != null ? clientId.value : this.clientId),
        clientPhoneNumber: (clientPhoneNumber != null
            ? clientPhoneNumber.value
            : this.clientPhoneNumber),
        clientFname:
            (clientFname != null ? clientFname.value : this.clientFname),
        clientLname:
            (clientLname != null ? clientLname.value : this.clientLname),
        topic: (topic != null ? topic.value : this.topic),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        location: (location != null ? location.value : this.location),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressDtoApiResult {
  AddressDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory AddressDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoApiResultFromJson(json);

  static const toJsonFactory = _$AddressDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$AddressDtoApiResultToJson(this);

  @JsonKey(name: 'data')
  final AddressDto? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$AddressDtoApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $AddressDtoApiResultExtension on AddressDtoApiResult {
  AddressDtoApiResult copyWith(
      {AddressDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return AddressDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  AddressDtoApiResult copyWithWrapped(
      {Wrapped<AddressDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return AddressDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class AddressDtoListApiResult {
  AddressDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory AddressDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoListApiResultFromJson(json);

  static const toJsonFactory = _$AddressDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$AddressDtoListApiResultToJson(this);

  @JsonKey(name: 'data', defaultValue: <AddressDto>[])
  final List<AddressDto>? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$AddressDtoListApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $AddressDtoListApiResultExtension on AddressDtoListApiResult {
  AddressDtoListApiResult copyWith(
      {List<AddressDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return AddressDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  AddressDtoListApiResult copyWithWrapped(
      {Wrapped<List<AddressDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return AddressDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiResult {
  ApiResult({
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory ApiResult.fromJson(Map<String, dynamic> json) =>
      _$ApiResultFromJson(json);

  static const toJsonFactory = _$ApiResultToJson;
  Map<String, dynamic> toJson() => _$ApiResultToJson(this);

  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiResult &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ApiResultExtension on ApiResult {
  ApiResult copyWith(
      {bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return ApiResult(
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  ApiResult copyWithWrapped(
      {Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return ApiResult(
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class Card2Dto {
  Card2Dto({
    this.addressId,
    this.payOnline,
  });

  factory Card2Dto.fromJson(Map<String, dynamic> json) =>
      _$Card2DtoFromJson(json);

  static const toJsonFactory = _$Card2DtoToJson;
  Map<String, dynamic> toJson() => _$Card2DtoToJson(this);

  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'payOnline')
  final bool? payOnline;
  static const fromJsonFactory = _$Card2DtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Card2Dto &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.payOnline, payOnline) ||
                const DeepCollectionEquality()
                    .equals(other.payOnline, payOnline)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(payOnline) ^
      runtimeType.hashCode;
}

extension $Card2DtoExtension on Card2Dto {
  Card2Dto copyWith({String? addressId, bool? payOnline}) {
    return Card2Dto(
        addressId: addressId ?? this.addressId,
        payOnline: payOnline ?? this.payOnline);
  }

  Card2Dto copyWithWrapped(
      {Wrapped<String?>? addressId, Wrapped<bool?>? payOnline}) {
    return Card2Dto(
        addressId: (addressId != null ? addressId.value : this.addressId),
        payOnline: (payOnline != null ? payOnline.value : this.payOnline));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDto {
  CategoryDto({
    this.name,
    this.imageLink,
    this.code,
    this.id,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);

  static const toJsonFactory = _$CategoryDtoToJson;
  Map<String, dynamic> toJson() => _$CategoryDtoToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'imageLink')
  final String? imageLink;
  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$CategoryDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryDto &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $CategoryDtoExtension on CategoryDto {
  CategoryDto copyWith(
      {String? name, String? imageLink, int? code, String? id}) {
    return CategoryDto(
        name: name ?? this.name,
        imageLink: imageLink ?? this.imageLink,
        code: code ?? this.code,
        id: id ?? this.id);
  }

  CategoryDto copyWithWrapped(
      {Wrapped<String?>? name,
      Wrapped<String?>? imageLink,
      Wrapped<int?>? code,
      Wrapped<String?>? id}) {
    return CategoryDto(
        name: (name != null ? name.value : this.name),
        imageLink: (imageLink != null ? imageLink.value : this.imageLink),
        code: (code != null ? code.value : this.code),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryDtoListApiResult {
  CategoryDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory CategoryDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoListApiResultFromJson(json);

  static const toJsonFactory = _$CategoryDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$CategoryDtoListApiResultToJson(this);

  @JsonKey(name: 'data', defaultValue: <CategoryDto>[])
  final List<CategoryDto>? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$CategoryDtoListApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CategoryDtoListApiResultExtension on CategoryDtoListApiResult {
  CategoryDtoListApiResult copyWith(
      {List<CategoryDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return CategoryDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  CategoryDtoListApiResult copyWithWrapped(
      {Wrapped<List<CategoryDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return CategoryDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class CommentDto {
  CommentDto({
    this.text,
    this.rate,
    this.userId,
    this.userFname,
    this.userLname,
    this.productsId,
    this.commentStatus,
    this.id,
  });

  factory CommentDto.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoFromJson(json);

  static const toJsonFactory = _$CommentDtoToJson;
  Map<String, dynamic> toJson() => _$CommentDtoToJson(this);

  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'rate')
  final double? rate;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userFname')
  final String? userFname;
  @JsonKey(name: 'userLname')
  final String? userLname;
  @JsonKey(name: 'productsId')
  final String? productsId;
  @JsonKey(
    name: 'commentStatus',
    toJson: commentStatusToJson,
    fromJson: commentStatusFromJson,
  )
  final enums.CommentStatus? commentStatus;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$CommentDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentDto &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userFname, userFname) ||
                const DeepCollectionEquality()
                    .equals(other.userFname, userFname)) &&
            (identical(other.userLname, userLname) ||
                const DeepCollectionEquality()
                    .equals(other.userLname, userLname)) &&
            (identical(other.productsId, productsId) ||
                const DeepCollectionEquality()
                    .equals(other.productsId, productsId)) &&
            (identical(other.commentStatus, commentStatus) ||
                const DeepCollectionEquality()
                    .equals(other.commentStatus, commentStatus)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userFname) ^
      const DeepCollectionEquality().hash(userLname) ^
      const DeepCollectionEquality().hash(productsId) ^
      const DeepCollectionEquality().hash(commentStatus) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $CommentDtoExtension on CommentDto {
  CommentDto copyWith(
      {String? text,
      double? rate,
      String? userId,
      String? userFname,
      String? userLname,
      String? productsId,
      enums.CommentStatus? commentStatus,
      String? id}) {
    return CommentDto(
        text: text ?? this.text,
        rate: rate ?? this.rate,
        userId: userId ?? this.userId,
        userFname: userFname ?? this.userFname,
        userLname: userLname ?? this.userLname,
        productsId: productsId ?? this.productsId,
        commentStatus: commentStatus ?? this.commentStatus,
        id: id ?? this.id);
  }

  CommentDto copyWithWrapped(
      {Wrapped<String?>? text,
      Wrapped<double?>? rate,
      Wrapped<String?>? userId,
      Wrapped<String?>? userFname,
      Wrapped<String?>? userLname,
      Wrapped<String?>? productsId,
      Wrapped<enums.CommentStatus?>? commentStatus,
      Wrapped<String?>? id}) {
    return CommentDto(
        text: (text != null ? text.value : this.text),
        rate: (rate != null ? rate.value : this.rate),
        userId: (userId != null ? userId.value : this.userId),
        userFname: (userFname != null ? userFname.value : this.userFname),
        userLname: (userLname != null ? userLname.value : this.userLname),
        productsId: (productsId != null ? productsId.value : this.productsId),
        commentStatus:
            (commentStatus != null ? commentStatus.value : this.commentStatus),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CommentDtoApiResult {
  CommentDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory CommentDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoApiResultFromJson(json);

  static const toJsonFactory = _$CommentDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$CommentDtoApiResultToJson(this);

  @JsonKey(name: 'data')
  final CommentDto? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$CommentDtoApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CommentDtoApiResultExtension on CommentDtoApiResult {
  CommentDtoApiResult copyWith(
      {CommentDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return CommentDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  CommentDtoApiResult copyWithWrapped(
      {Wrapped<CommentDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return CommentDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class CommentDtoListApiResult {
  CommentDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory CommentDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$CommentDtoListApiResultFromJson(json);

  static const toJsonFactory = _$CommentDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$CommentDtoListApiResultToJson(this);

  @JsonKey(name: 'data', defaultValue: <CommentDto>[])
  final List<CommentDto>? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$CommentDtoListApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CommentDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $CommentDtoListApiResultExtension on CommentDtoListApiResult {
  CommentDtoListApiResult copyWith(
      {List<CommentDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return CommentDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  CommentDtoListApiResult copyWithWrapped(
      {Wrapped<List<CommentDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return CommentDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ListChosedProductDto {
  ListChosedProductDto({
    this.productId,
    this.count,
  });

  factory ListChosedProductDto.fromJson(Map<String, dynamic> json) =>
      _$ListChosedProductDtoFromJson(json);

  static const toJsonFactory = _$ListChosedProductDtoToJson;
  Map<String, dynamic> toJson() => _$ListChosedProductDtoToJson(this);

  @JsonKey(name: 'productId')
  final String? productId;
  @JsonKey(name: 'count')
  final int? count;
  static const fromJsonFactory = _$ListChosedProductDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListChosedProductDto &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(count) ^
      runtimeType.hashCode;
}

extension $ListChosedProductDtoExtension on ListChosedProductDto {
  ListChosedProductDto copyWith({String? productId, int? count}) {
    return ListChosedProductDto(
        productId: productId ?? this.productId, count: count ?? this.count);
  }

  ListChosedProductDto copyWithWrapped(
      {Wrapped<String?>? productId, Wrapped<int?>? count}) {
    return ListChosedProductDto(
        productId: (productId != null ? productId.value : this.productId),
        count: (count != null ? count.value : this.count));
  }
}

@JsonSerializable(explicitToJson: true)
class LoginOtpDto {
  LoginOtpDto({
    this.phoneNumber,
    this.code,
  });

  factory LoginOtpDto.fromJson(Map<String, dynamic> json) =>
      _$LoginOtpDtoFromJson(json);

  static const toJsonFactory = _$LoginOtpDtoToJson;
  Map<String, dynamic> toJson() => _$LoginOtpDtoToJson(this);

  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'code')
  final int? code;
  static const fromJsonFactory = _$LoginOtpDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginOtpDto &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(code) ^
      runtimeType.hashCode;
}

extension $LoginOtpDtoExtension on LoginOtpDto {
  LoginOtpDto copyWith({String? phoneNumber, int? code}) {
    return LoginOtpDto(
        phoneNumber: phoneNumber ?? this.phoneNumber, code: code ?? this.code);
  }

  LoginOtpDto copyWithWrapped(
      {Wrapped<String?>? phoneNumber, Wrapped<int?>? code}) {
    return LoginOtpDto(
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        code: (code != null ? code.value : this.code));
  }
}

@JsonSerializable(explicitToJson: true)
class NotificationDto {
  NotificationDto({
    this.topic,
    this.text,
    this.dateTimes,
    this.userId,
    this.userPhoneNumber,
    this.userFName,
    this.userLName,
    this.id,
  });

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  static const toJsonFactory = _$NotificationDtoToJson;
  Map<String, dynamic> toJson() => _$NotificationDtoToJson(this);

  @JsonKey(name: 'topic')
  final String? topic;
  @JsonKey(name: 'text')
  final String? text;
  @JsonKey(name: 'dateTimes')
  final DateTime? dateTimes;
  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'userPhoneNumber')
  final String? userPhoneNumber;
  @JsonKey(name: 'userFName')
  final String? userFName;
  @JsonKey(name: 'userLName')
  final String? userLName;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$NotificationDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotificationDto &&
            (identical(other.topic, topic) ||
                const DeepCollectionEquality().equals(other.topic, topic)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.dateTimes, dateTimes) ||
                const DeepCollectionEquality()
                    .equals(other.dateTimes, dateTimes)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userPhoneNumber, userPhoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.userPhoneNumber, userPhoneNumber)) &&
            (identical(other.userFName, userFName) ||
                const DeepCollectionEquality()
                    .equals(other.userFName, userFName)) &&
            (identical(other.userLName, userLName) ||
                const DeepCollectionEquality()
                    .equals(other.userLName, userLName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(topic) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(dateTimes) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userPhoneNumber) ^
      const DeepCollectionEquality().hash(userFName) ^
      const DeepCollectionEquality().hash(userLName) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $NotificationDtoExtension on NotificationDto {
  NotificationDto copyWith(
      {String? topic,
      String? text,
      DateTime? dateTimes,
      String? userId,
      String? userPhoneNumber,
      String? userFName,
      String? userLName,
      String? id}) {
    return NotificationDto(
        topic: topic ?? this.topic,
        text: text ?? this.text,
        dateTimes: dateTimes ?? this.dateTimes,
        userId: userId ?? this.userId,
        userPhoneNumber: userPhoneNumber ?? this.userPhoneNumber,
        userFName: userFName ?? this.userFName,
        userLName: userLName ?? this.userLName,
        id: id ?? this.id);
  }

  NotificationDto copyWithWrapped(
      {Wrapped<String?>? topic,
      Wrapped<String?>? text,
      Wrapped<DateTime?>? dateTimes,
      Wrapped<String?>? userId,
      Wrapped<String?>? userPhoneNumber,
      Wrapped<String?>? userFName,
      Wrapped<String?>? userLName,
      Wrapped<String?>? id}) {
    return NotificationDto(
        topic: (topic != null ? topic.value : this.topic),
        text: (text != null ? text.value : this.text),
        dateTimes: (dateTimes != null ? dateTimes.value : this.dateTimes),
        userId: (userId != null ? userId.value : this.userId),
        userPhoneNumber: (userPhoneNumber != null
            ? userPhoneNumber.value
            : this.userPhoneNumber),
        userFName: (userFName != null ? userFName.value : this.userFName),
        userLName: (userLName != null ? userLName.value : this.userLName),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductDto {
  ProductDto({
    this.code,
    this.name,
    this.price,
    this.imageLink,
    this.discount,
    this.percent,
    this.count,
    this.rate,
    this.totalRate,
    this.shortDetail,
    this.longDetail,
    this.creationDateTime,
    this.categorysId,
    this.categories,
    this.comments,
    this.id,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  static const toJsonFactory = _$ProductDtoToJson;
  Map<String, dynamic> toJson() => _$ProductDtoToJson(this);

  @JsonKey(name: 'code')
  final int? code;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'price')
  final int? price;
  @JsonKey(name: 'imageLink')
  final String? imageLink;
  @JsonKey(name: 'discount')
  final int? discount;
  @JsonKey(name: 'percent')
  final int? percent;
  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'rate')
  final double? rate;
  @JsonKey(name: 'totalRate')
  final double? totalRate;
  @JsonKey(name: 'shortDetail')
  final String? shortDetail;
  @JsonKey(name: 'longDetail')
  final String? longDetail;
  @JsonKey(name: 'creationDateTime')
  final DateTime? creationDateTime;
  @JsonKey(name: 'categorysId')
  final String? categorysId;
  @JsonKey(name: 'categories', defaultValue: <CategoryDto>[])
  final List<CategoryDto>? categories;
  @JsonKey(name: 'comments', defaultValue: <CommentDto>[])
  final List<CommentDto>? comments;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ProductDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDto &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.imageLink, imageLink) ||
                const DeepCollectionEquality()
                    .equals(other.imageLink, imageLink)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.percent, percent) ||
                const DeepCollectionEquality()
                    .equals(other.percent, percent)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.rate, rate) ||
                const DeepCollectionEquality().equals(other.rate, rate)) &&
            (identical(other.totalRate, totalRate) ||
                const DeepCollectionEquality()
                    .equals(other.totalRate, totalRate)) &&
            (identical(other.shortDetail, shortDetail) ||
                const DeepCollectionEquality()
                    .equals(other.shortDetail, shortDetail)) &&
            (identical(other.longDetail, longDetail) ||
                const DeepCollectionEquality()
                    .equals(other.longDetail, longDetail)) &&
            (identical(other.creationDateTime, creationDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationDateTime, creationDateTime)) &&
            (identical(other.categorysId, categorysId) ||
                const DeepCollectionEquality()
                    .equals(other.categorysId, categorysId)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(imageLink) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(percent) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(rate) ^
      const DeepCollectionEquality().hash(totalRate) ^
      const DeepCollectionEquality().hash(shortDetail) ^
      const DeepCollectionEquality().hash(longDetail) ^
      const DeepCollectionEquality().hash(creationDateTime) ^
      const DeepCollectionEquality().hash(categorysId) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ProductDtoExtension on ProductDto {
  ProductDto copyWith(
      {int? code,
      String? name,
      int? price,
      String? imageLink,
      int? discount,
      int? percent,
      int? count,
      double? rate,
      double? totalRate,
      String? shortDetail,
      String? longDetail,
      DateTime? creationDateTime,
      String? categorysId,
      List<CategoryDto>? categories,
      List<CommentDto>? comments,
      String? id}) {
    return ProductDto(
        code: code ?? this.code,
        name: name ?? this.name,
        price: price ?? this.price,
        imageLink: imageLink ?? this.imageLink,
        discount: discount ?? this.discount,
        percent: percent ?? this.percent,
        count: count ?? this.count,
        rate: rate ?? this.rate,
        totalRate: totalRate ?? this.totalRate,
        shortDetail: shortDetail ?? this.shortDetail,
        longDetail: longDetail ?? this.longDetail,
        creationDateTime: creationDateTime ?? this.creationDateTime,
        categorysId: categorysId ?? this.categorysId,
        categories: categories ?? this.categories,
        comments: comments ?? this.comments,
        id: id ?? this.id);
  }

  ProductDto copyWithWrapped(
      {Wrapped<int?>? code,
      Wrapped<String?>? name,
      Wrapped<int?>? price,
      Wrapped<String?>? imageLink,
      Wrapped<int?>? discount,
      Wrapped<int?>? percent,
      Wrapped<int?>? count,
      Wrapped<double?>? rate,
      Wrapped<double?>? totalRate,
      Wrapped<String?>? shortDetail,
      Wrapped<String?>? longDetail,
      Wrapped<DateTime?>? creationDateTime,
      Wrapped<String?>? categorysId,
      Wrapped<List<CategoryDto>?>? categories,
      Wrapped<List<CommentDto>?>? comments,
      Wrapped<String?>? id}) {
    return ProductDto(
        code: (code != null ? code.value : this.code),
        name: (name != null ? name.value : this.name),
        price: (price != null ? price.value : this.price),
        imageLink: (imageLink != null ? imageLink.value : this.imageLink),
        discount: (discount != null ? discount.value : this.discount),
        percent: (percent != null ? percent.value : this.percent),
        count: (count != null ? count.value : this.count),
        rate: (rate != null ? rate.value : this.rate),
        totalRate: (totalRate != null ? totalRate.value : this.totalRate),
        shortDetail:
            (shortDetail != null ? shortDetail.value : this.shortDetail),
        longDetail: (longDetail != null ? longDetail.value : this.longDetail),
        creationDateTime: (creationDateTime != null
            ? creationDateTime.value
            : this.creationDateTime),
        categorysId:
            (categorysId != null ? categorysId.value : this.categorysId),
        categories: (categories != null ? categories.value : this.categories),
        comments: (comments != null ? comments.value : this.comments),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductDtoApiResult {
  ProductDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory ProductDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoApiResultFromJson(json);

  static const toJsonFactory = _$ProductDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$ProductDtoApiResultToJson(this);

  @JsonKey(name: 'data')
  final ProductDto? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ProductDtoApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ProductDtoApiResultExtension on ProductDtoApiResult {
  ProductDtoApiResult copyWith(
      {ProductDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return ProductDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  ProductDtoApiResult copyWithWrapped(
      {Wrapped<ProductDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return ProductDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ProductDtoListApiResult {
  ProductDtoListApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory ProductDtoListApiResult.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoListApiResultFromJson(json);

  static const toJsonFactory = _$ProductDtoListApiResultToJson;
  Map<String, dynamic> toJson() => _$ProductDtoListApiResultToJson(this);

  @JsonKey(name: 'data', defaultValue: <ProductDto>[])
  final List<ProductDto>? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ProductDtoListApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductDtoListApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ProductDtoListApiResultExtension on ProductDtoListApiResult {
  ProductDtoListApiResult copyWith(
      {List<ProductDto>? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return ProductDtoListApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  ProductDtoListApiResult copyWithWrapped(
      {Wrapped<List<ProductDto>?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return ProductDtoListApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ShopCardDetailDto {
  ShopCardDetailDto({
    this.price,
    this.count,
    this.disCount,
    this.productsId,
    this.productsPrice,
    this.productsDiscount,
    this.productsName,
    this.productsImageLink,
    this.creationDateTime,
    this.id,
  });

  factory ShopCardDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ShopCardDetailDtoFromJson(json);

  static const toJsonFactory = _$ShopCardDetailDtoToJson;
  Map<String, dynamic> toJson() => _$ShopCardDetailDtoToJson(this);

  @JsonKey(name: 'price')
  final int? price;
  @JsonKey(name: 'count')
  final int? count;
  @JsonKey(name: 'disCount')
  final int? disCount;
  @JsonKey(name: 'productsId')
  final String? productsId;
  @JsonKey(name: 'productsPrice')
  final int? productsPrice;
  @JsonKey(name: 'productsDiscount')
  final int? productsDiscount;
  @JsonKey(name: 'productsName')
  final String? productsName;
  @JsonKey(name: 'productsImageLink')
  final String? productsImageLink;
  @JsonKey(name: 'creationDateTime')
  final DateTime? creationDateTime;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ShopCardDetailDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopCardDetailDto &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.disCount, disCount) ||
                const DeepCollectionEquality()
                    .equals(other.disCount, disCount)) &&
            (identical(other.productsId, productsId) ||
                const DeepCollectionEquality()
                    .equals(other.productsId, productsId)) &&
            (identical(other.productsPrice, productsPrice) ||
                const DeepCollectionEquality()
                    .equals(other.productsPrice, productsPrice)) &&
            (identical(other.productsDiscount, productsDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.productsDiscount, productsDiscount)) &&
            (identical(other.productsName, productsName) ||
                const DeepCollectionEquality()
                    .equals(other.productsName, productsName)) &&
            (identical(other.productsImageLink, productsImageLink) ||
                const DeepCollectionEquality()
                    .equals(other.productsImageLink, productsImageLink)) &&
            (identical(other.creationDateTime, creationDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.creationDateTime, creationDateTime)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(disCount) ^
      const DeepCollectionEquality().hash(productsId) ^
      const DeepCollectionEquality().hash(productsPrice) ^
      const DeepCollectionEquality().hash(productsDiscount) ^
      const DeepCollectionEquality().hash(productsName) ^
      const DeepCollectionEquality().hash(productsImageLink) ^
      const DeepCollectionEquality().hash(creationDateTime) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ShopCardDetailDtoExtension on ShopCardDetailDto {
  ShopCardDetailDto copyWith(
      {int? price,
      int? count,
      int? disCount,
      String? productsId,
      int? productsPrice,
      int? productsDiscount,
      String? productsName,
      String? productsImageLink,
      DateTime? creationDateTime,
      String? id}) {
    return ShopCardDetailDto(
        price: price ?? this.price,
        count: count ?? this.count,
        disCount: disCount ?? this.disCount,
        productsId: productsId ?? this.productsId,
        productsPrice: productsPrice ?? this.productsPrice,
        productsDiscount: productsDiscount ?? this.productsDiscount,
        productsName: productsName ?? this.productsName,
        productsImageLink: productsImageLink ?? this.productsImageLink,
        creationDateTime: creationDateTime ?? this.creationDateTime,
        id: id ?? this.id);
  }

  ShopCardDetailDto copyWithWrapped(
      {Wrapped<int?>? price,
      Wrapped<int?>? count,
      Wrapped<int?>? disCount,
      Wrapped<String?>? productsId,
      Wrapped<int?>? productsPrice,
      Wrapped<int?>? productsDiscount,
      Wrapped<String?>? productsName,
      Wrapped<String?>? productsImageLink,
      Wrapped<DateTime?>? creationDateTime,
      Wrapped<String?>? id}) {
    return ShopCardDetailDto(
        price: (price != null ? price.value : this.price),
        count: (count != null ? count.value : this.count),
        disCount: (disCount != null ? disCount.value : this.disCount),
        productsId: (productsId != null ? productsId.value : this.productsId),
        productsPrice:
            (productsPrice != null ? productsPrice.value : this.productsPrice),
        productsDiscount: (productsDiscount != null
            ? productsDiscount.value
            : this.productsDiscount),
        productsName:
            (productsName != null ? productsName.value : this.productsName),
        productsImageLink: (productsImageLink != null
            ? productsImageLink.value
            : this.productsImageLink),
        creationDateTime: (creationDateTime != null
            ? creationDateTime.value
            : this.creationDateTime),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ShopCardDto {
  ShopCardDto({
    this.userId,
    this.addressId,
    this.orderReportId,
    this.orderReportTax,
    this.orderReportPostCost,
    this.userUserName,
    this.userFName,
    this.userLName,
    this.totalPrice,
    this.postPrice,
    this.finalTotalPrice,
    this.payOnline,
    this.shopCardDetails,
    this.addresses,
    this.id,
  });

  factory ShopCardDto.fromJson(Map<String, dynamic> json) =>
      _$ShopCardDtoFromJson(json);

  static const toJsonFactory = _$ShopCardDtoToJson;
  Map<String, dynamic> toJson() => _$ShopCardDtoToJson(this);

  @JsonKey(name: 'userId')
  final String? userId;
  @JsonKey(name: 'addressId')
  final String? addressId;
  @JsonKey(name: 'orderReportId')
  final String? orderReportId;
  @JsonKey(name: 'orderReportTax')
  final int? orderReportTax;
  @JsonKey(name: 'orderReportPostCost')
  final int? orderReportPostCost;
  @JsonKey(name: 'userUserName')
  final String? userUserName;
  @JsonKey(name: 'userFName')
  final String? userFName;
  @JsonKey(name: 'userLName')
  final String? userLName;
  @JsonKey(name: 'totalPrice')
  final int? totalPrice;
  @JsonKey(name: 'postPrice')
  final int? postPrice;
  @JsonKey(name: 'finalTotalPrice')
  final int? finalTotalPrice;
  @JsonKey(name: 'payOnline')
  final bool? payOnline;
  @JsonKey(name: 'shopCardDetails', defaultValue: <ShopCardDetailDto>[])
  final List<ShopCardDetailDto>? shopCardDetails;
  @JsonKey(name: 'addresses', defaultValue: <AddressDto>[])
  final List<AddressDto>? addresses;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$ShopCardDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopCardDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.addressId, addressId) ||
                const DeepCollectionEquality()
                    .equals(other.addressId, addressId)) &&
            (identical(other.orderReportId, orderReportId) ||
                const DeepCollectionEquality()
                    .equals(other.orderReportId, orderReportId)) &&
            (identical(other.orderReportTax, orderReportTax) ||
                const DeepCollectionEquality()
                    .equals(other.orderReportTax, orderReportTax)) &&
            (identical(other.orderReportPostCost, orderReportPostCost) ||
                const DeepCollectionEquality()
                    .equals(other.orderReportPostCost, orderReportPostCost)) &&
            (identical(other.userUserName, userUserName) ||
                const DeepCollectionEquality()
                    .equals(other.userUserName, userUserName)) &&
            (identical(other.userFName, userFName) ||
                const DeepCollectionEquality()
                    .equals(other.userFName, userFName)) &&
            (identical(other.userLName, userLName) ||
                const DeepCollectionEquality()
                    .equals(other.userLName, userLName)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.postPrice, postPrice) ||
                const DeepCollectionEquality()
                    .equals(other.postPrice, postPrice)) &&
            (identical(other.finalTotalPrice, finalTotalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.finalTotalPrice, finalTotalPrice)) &&
            (identical(other.payOnline, payOnline) ||
                const DeepCollectionEquality()
                    .equals(other.payOnline, payOnline)) &&
            (identical(other.shopCardDetails, shopCardDetails) ||
                const DeepCollectionEquality()
                    .equals(other.shopCardDetails, shopCardDetails)) &&
            (identical(other.addresses, addresses) ||
                const DeepCollectionEquality()
                    .equals(other.addresses, addresses)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(addressId) ^
      const DeepCollectionEquality().hash(orderReportId) ^
      const DeepCollectionEquality().hash(orderReportTax) ^
      const DeepCollectionEquality().hash(orderReportPostCost) ^
      const DeepCollectionEquality().hash(userUserName) ^
      const DeepCollectionEquality().hash(userFName) ^
      const DeepCollectionEquality().hash(userLName) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(postPrice) ^
      const DeepCollectionEquality().hash(finalTotalPrice) ^
      const DeepCollectionEquality().hash(payOnline) ^
      const DeepCollectionEquality().hash(shopCardDetails) ^
      const DeepCollectionEquality().hash(addresses) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $ShopCardDtoExtension on ShopCardDto {
  ShopCardDto copyWith(
      {String? userId,
      String? addressId,
      String? orderReportId,
      int? orderReportTax,
      int? orderReportPostCost,
      String? userUserName,
      String? userFName,
      String? userLName,
      int? totalPrice,
      int? postPrice,
      int? finalTotalPrice,
      bool? payOnline,
      List<ShopCardDetailDto>? shopCardDetails,
      List<AddressDto>? addresses,
      String? id}) {
    return ShopCardDto(
        userId: userId ?? this.userId,
        addressId: addressId ?? this.addressId,
        orderReportId: orderReportId ?? this.orderReportId,
        orderReportTax: orderReportTax ?? this.orderReportTax,
        orderReportPostCost: orderReportPostCost ?? this.orderReportPostCost,
        userUserName: userUserName ?? this.userUserName,
        userFName: userFName ?? this.userFName,
        userLName: userLName ?? this.userLName,
        totalPrice: totalPrice ?? this.totalPrice,
        postPrice: postPrice ?? this.postPrice,
        finalTotalPrice: finalTotalPrice ?? this.finalTotalPrice,
        payOnline: payOnline ?? this.payOnline,
        shopCardDetails: shopCardDetails ?? this.shopCardDetails,
        addresses: addresses ?? this.addresses,
        id: id ?? this.id);
  }

  ShopCardDto copyWithWrapped(
      {Wrapped<String?>? userId,
      Wrapped<String?>? addressId,
      Wrapped<String?>? orderReportId,
      Wrapped<int?>? orderReportTax,
      Wrapped<int?>? orderReportPostCost,
      Wrapped<String?>? userUserName,
      Wrapped<String?>? userFName,
      Wrapped<String?>? userLName,
      Wrapped<int?>? totalPrice,
      Wrapped<int?>? postPrice,
      Wrapped<int?>? finalTotalPrice,
      Wrapped<bool?>? payOnline,
      Wrapped<List<ShopCardDetailDto>?>? shopCardDetails,
      Wrapped<List<AddressDto>?>? addresses,
      Wrapped<String?>? id}) {
    return ShopCardDto(
        userId: (userId != null ? userId.value : this.userId),
        addressId: (addressId != null ? addressId.value : this.addressId),
        orderReportId:
            (orderReportId != null ? orderReportId.value : this.orderReportId),
        orderReportTax: (orderReportTax != null
            ? orderReportTax.value
            : this.orderReportTax),
        orderReportPostCost: (orderReportPostCost != null
            ? orderReportPostCost.value
            : this.orderReportPostCost),
        userUserName:
            (userUserName != null ? userUserName.value : this.userUserName),
        userFName: (userFName != null ? userFName.value : this.userFName),
        userLName: (userLName != null ? userLName.value : this.userLName),
        totalPrice: (totalPrice != null ? totalPrice.value : this.totalPrice),
        postPrice: (postPrice != null ? postPrice.value : this.postPrice),
        finalTotalPrice: (finalTotalPrice != null
            ? finalTotalPrice.value
            : this.finalTotalPrice),
        payOnline: (payOnline != null ? payOnline.value : this.payOnline),
        shopCardDetails: (shopCardDetails != null
            ? shopCardDetails.value
            : this.shopCardDetails),
        addresses: (addresses != null ? addresses.value : this.addresses),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class ShopCardDtoApiResult {
  ShopCardDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory ShopCardDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$ShopCardDtoApiResultFromJson(json);

  static const toJsonFactory = _$ShopCardDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$ShopCardDtoApiResultToJson(this);

  @JsonKey(name: 'data')
  final ShopCardDto? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$ShopCardDtoApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShopCardDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $ShopCardDtoApiResultExtension on ShopCardDtoApiResult {
  ShopCardDtoApiResult copyWith(
      {ShopCardDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return ShopCardDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  ShopCardDtoApiResult copyWithWrapped(
      {Wrapped<ShopCardDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return ShopCardDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class SignUpDto {
  SignUpDto({
    this.fName,
    this.lName,
    this.phoneNumber,
    this.otp,
    this.id,
  });

  factory SignUpDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpDtoFromJson(json);

  static const toJsonFactory = _$SignUpDtoToJson;
  Map<String, dynamic> toJson() => _$SignUpDtoToJson(this);

  @JsonKey(name: 'fName')
  final String? fName;
  @JsonKey(name: 'lName')
  final String? lName;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'otp')
  final int? otp;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$SignUpDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignUpDto &&
            (identical(other.fName, fName) ||
                const DeepCollectionEquality().equals(other.fName, fName)) &&
            (identical(other.lName, lName) ||
                const DeepCollectionEquality().equals(other.lName, lName)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fName) ^
      const DeepCollectionEquality().hash(lName) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $SignUpDtoExtension on SignUpDto {
  SignUpDto copyWith(
      {String? fName,
      String? lName,
      String? phoneNumber,
      int? otp,
      String? id}) {
    return SignUpDto(
        fName: fName ?? this.fName,
        lName: lName ?? this.lName,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        otp: otp ?? this.otp,
        id: id ?? this.id);
  }

  SignUpDto copyWithWrapped(
      {Wrapped<String?>? fName,
      Wrapped<String?>? lName,
      Wrapped<String?>? phoneNumber,
      Wrapped<int?>? otp,
      Wrapped<String?>? id}) {
    return SignUpDto(
        fName: (fName != null ? fName.value : this.fName),
        lName: (lName != null ? lName.value : this.lName),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        otp: (otp != null ? otp.value : this.otp),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class StringApiResult {
  StringApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory StringApiResult.fromJson(Map<String, dynamic> json) =>
      _$StringApiResultFromJson(json);

  static const toJsonFactory = _$StringApiResultToJson;
  Map<String, dynamic> toJson() => _$StringApiResultToJson(this);

  @JsonKey(name: 'data')
  final String? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$StringApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StringApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $StringApiResultExtension on StringApiResult {
  StringApiResult copyWith(
      {String? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return StringApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  StringApiResult copyWithWrapped(
      {Wrapped<String?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return StringApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class SyncOrderDto {
  SyncOrderDto({
    this.totalPrice,
    this.description,
    this.listChosedProduct,
  });

  factory SyncOrderDto.fromJson(Map<String, dynamic> json) =>
      _$SyncOrderDtoFromJson(json);

  static const toJsonFactory = _$SyncOrderDtoToJson;
  Map<String, dynamic> toJson() => _$SyncOrderDtoToJson(this);

  @JsonKey(name: 'totalPrice')
  final int? totalPrice;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'list_Chosed_Product', defaultValue: <ListChosedProductDto>[])
  final List<ListChosedProductDto>? listChosedProduct;
  static const fromJsonFactory = _$SyncOrderDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SyncOrderDto &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.listChosedProduct, listChosedProduct) ||
                const DeepCollectionEquality()
                    .equals(other.listChosedProduct, listChosedProduct)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(listChosedProduct) ^
      runtimeType.hashCode;
}

extension $SyncOrderDtoExtension on SyncOrderDto {
  SyncOrderDto copyWith(
      {int? totalPrice,
      String? description,
      List<ListChosedProductDto>? listChosedProduct}) {
    return SyncOrderDto(
        totalPrice: totalPrice ?? this.totalPrice,
        description: description ?? this.description,
        listChosedProduct: listChosedProduct ?? this.listChosedProduct);
  }

  SyncOrderDto copyWithWrapped(
      {Wrapped<int?>? totalPrice,
      Wrapped<String?>? description,
      Wrapped<List<ListChosedProductDto>?>? listChosedProduct}) {
    return SyncOrderDto(
        totalPrice: (totalPrice != null ? totalPrice.value : this.totalPrice),
        description:
            (description != null ? description.value : this.description),
        listChosedProduct: (listChosedProduct != null
            ? listChosedProduct.value
            : this.listChosedProduct));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDto {
  UserDto({
    this.student,
    this.name,
    this.managerName,
    required this.userName,
    this.email,
    this.password,
    this.passwordConfirm,
    required this.fname,
    required this.lname,
    required this.gender,
    required this.nationalCode,
    required this.phoneNumber,
    this.code,
    required this.birthCertificateNumber,
    required this.birthDay,
    required this.birthCity,
    required this.certificateCity,
    required this.phone,
    required this.postalCode,
    this.id,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  static const toJsonFactory = _$UserDtoToJson;
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @JsonKey(name: 'student')
  final bool? student;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'managerName')
  final String? managerName;
  @JsonKey(name: 'userName')
  final String userName;
  @JsonKey(name: 'email')
  final String? email;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'passwordConfirm')
  final String? passwordConfirm;
  @JsonKey(name: 'fname')
  final String fname;
  @JsonKey(name: 'lname')
  final String lname;
  @JsonKey(
    name: 'gender',
    toJson: genderTypeToJson,
    fromJson: genderTypeFromJson,
  )
  final enums.GenderType gender;
  @JsonKey(name: 'nationalCode')
  final String nationalCode;
  @JsonKey(name: 'phoneNumber')
  final String phoneNumber;
  @JsonKey(name: 'code')
  final String? code;
  @JsonKey(name: 'birthCertificateNumber')
  final String birthCertificateNumber;
  @JsonKey(name: 'birthDay')
  final String birthDay;
  @JsonKey(name: 'birthCity')
  final String birthCity;
  @JsonKey(name: 'certificateCity')
  final String certificateCity;
  @JsonKey(name: 'phone')
  final String phone;
  @JsonKey(name: 'postalCode')
  final String postalCode;
  @JsonKey(name: 'id')
  final String? id;
  static const fromJsonFactory = _$UserDtoFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDto &&
            (identical(other.student, student) ||
                const DeepCollectionEquality()
                    .equals(other.student, student)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.managerName, managerName) ||
                const DeepCollectionEquality()
                    .equals(other.managerName, managerName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirm, passwordConfirm) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirm, passwordConfirm)) &&
            (identical(other.fname, fname) ||
                const DeepCollectionEquality().equals(other.fname, fname)) &&
            (identical(other.lname, lname) ||
                const DeepCollectionEquality().equals(other.lname, lname)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.nationalCode, nationalCode) ||
                const DeepCollectionEquality()
                    .equals(other.nationalCode, nationalCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.birthCertificateNumber, birthCertificateNumber) ||
                const DeepCollectionEquality().equals(
                    other.birthCertificateNumber, birthCertificateNumber)) &&
            (identical(other.birthDay, birthDay) ||
                const DeepCollectionEquality()
                    .equals(other.birthDay, birthDay)) &&
            (identical(other.birthCity, birthCity) ||
                const DeepCollectionEquality()
                    .equals(other.birthCity, birthCity)) &&
            (identical(other.certificateCity, certificateCity) ||
                const DeepCollectionEquality()
                    .equals(other.certificateCity, certificateCity)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.postalCode, postalCode) ||
                const DeepCollectionEquality()
                    .equals(other.postalCode, postalCode)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(student) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(managerName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirm) ^
      const DeepCollectionEquality().hash(fname) ^
      const DeepCollectionEquality().hash(lname) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(nationalCode) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(birthCertificateNumber) ^
      const DeepCollectionEquality().hash(birthDay) ^
      const DeepCollectionEquality().hash(birthCity) ^
      const DeepCollectionEquality().hash(certificateCity) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(postalCode) ^
      const DeepCollectionEquality().hash(id) ^
      runtimeType.hashCode;
}

extension $UserDtoExtension on UserDto {
  UserDto copyWith(
      {bool? student,
      String? name,
      String? managerName,
      String? userName,
      String? email,
      String? password,
      String? passwordConfirm,
      String? fname,
      String? lname,
      enums.GenderType? gender,
      String? nationalCode,
      String? phoneNumber,
      String? code,
      String? birthCertificateNumber,
      String? birthDay,
      String? birthCity,
      String? certificateCity,
      String? phone,
      String? postalCode,
      String? id}) {
    return UserDto(
        student: student ?? this.student,
        name: name ?? this.name,
        managerName: managerName ?? this.managerName,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
        passwordConfirm: passwordConfirm ?? this.passwordConfirm,
        fname: fname ?? this.fname,
        lname: lname ?? this.lname,
        gender: gender ?? this.gender,
        nationalCode: nationalCode ?? this.nationalCode,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        code: code ?? this.code,
        birthCertificateNumber:
            birthCertificateNumber ?? this.birthCertificateNumber,
        birthDay: birthDay ?? this.birthDay,
        birthCity: birthCity ?? this.birthCity,
        certificateCity: certificateCity ?? this.certificateCity,
        phone: phone ?? this.phone,
        postalCode: postalCode ?? this.postalCode,
        id: id ?? this.id);
  }

  UserDto copyWithWrapped(
      {Wrapped<bool?>? student,
      Wrapped<String?>? name,
      Wrapped<String?>? managerName,
      Wrapped<String>? userName,
      Wrapped<String?>? email,
      Wrapped<String?>? password,
      Wrapped<String?>? passwordConfirm,
      Wrapped<String>? fname,
      Wrapped<String>? lname,
      Wrapped<enums.GenderType>? gender,
      Wrapped<String>? nationalCode,
      Wrapped<String>? phoneNumber,
      Wrapped<String?>? code,
      Wrapped<String>? birthCertificateNumber,
      Wrapped<String>? birthDay,
      Wrapped<String>? birthCity,
      Wrapped<String>? certificateCity,
      Wrapped<String>? phone,
      Wrapped<String>? postalCode,
      Wrapped<String?>? id}) {
    return UserDto(
        student: (student != null ? student.value : this.student),
        name: (name != null ? name.value : this.name),
        managerName:
            (managerName != null ? managerName.value : this.managerName),
        userName: (userName != null ? userName.value : this.userName),
        email: (email != null ? email.value : this.email),
        password: (password != null ? password.value : this.password),
        passwordConfirm: (passwordConfirm != null
            ? passwordConfirm.value
            : this.passwordConfirm),
        fname: (fname != null ? fname.value : this.fname),
        lname: (lname != null ? lname.value : this.lname),
        gender: (gender != null ? gender.value : this.gender),
        nationalCode:
            (nationalCode != null ? nationalCode.value : this.nationalCode),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        code: (code != null ? code.value : this.code),
        birthCertificateNumber: (birthCertificateNumber != null
            ? birthCertificateNumber.value
            : this.birthCertificateNumber),
        birthDay: (birthDay != null ? birthDay.value : this.birthDay),
        birthCity: (birthCity != null ? birthCity.value : this.birthCity),
        certificateCity: (certificateCity != null
            ? certificateCity.value
            : this.certificateCity),
        phone: (phone != null ? phone.value : this.phone),
        postalCode: (postalCode != null ? postalCode.value : this.postalCode),
        id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class UserDtoApiResult {
  UserDtoApiResult({
    this.data,
    this.isSuccess,
    this.statusCode,
    this.message,
  });

  factory UserDtoApiResult.fromJson(Map<String, dynamic> json) =>
      _$UserDtoApiResultFromJson(json);

  static const toJsonFactory = _$UserDtoApiResultToJson;
  Map<String, dynamic> toJson() => _$UserDtoApiResultToJson(this);

  @JsonKey(name: 'data')
  final UserDto? data;
  @JsonKey(name: 'isSuccess')
  final bool? isSuccess;
  @JsonKey(
    name: 'statusCode',
    toJson: apiResultStatusCodeToJson,
    fromJson: apiResultStatusCodeFromJson,
  )
  final enums.ApiResultStatusCode? statusCode;
  @JsonKey(name: 'message')
  final String? message;
  static const fromJsonFactory = _$UserDtoApiResultFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDtoApiResult &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.statusCode, statusCode) ||
                const DeepCollectionEquality()
                    .equals(other.statusCode, statusCode)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(statusCode) ^
      const DeepCollectionEquality().hash(message) ^
      runtimeType.hashCode;
}

extension $UserDtoApiResultExtension on UserDtoApiResult {
  UserDtoApiResult copyWith(
      {UserDto? data,
      bool? isSuccess,
      enums.ApiResultStatusCode? statusCode,
      String? message}) {
    return UserDtoApiResult(
        data: data ?? this.data,
        isSuccess: isSuccess ?? this.isSuccess,
        statusCode: statusCode ?? this.statusCode,
        message: message ?? this.message);
  }

  UserDtoApiResult copyWithWrapped(
      {Wrapped<UserDto?>? data,
      Wrapped<bool?>? isSuccess,
      Wrapped<enums.ApiResultStatusCode?>? statusCode,
      Wrapped<String?>? message}) {
    return UserDtoApiResult(
        data: (data != null ? data.value : this.data),
        isSuccess: (isSuccess != null ? isSuccess.value : this.isSuccess),
        statusCode: (statusCode != null ? statusCode.value : this.statusCode),
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AuthenticationFreeTokenPost$RequestBody {
  ApiV1AuthenticationFreeTokenPost$RequestBody({
    this.grantType,
    this.username,
    this.password,
    this.refreshToken,
    this.scope,
    this.clientId,
    this.clientSecret,
  });

  factory ApiV1AuthenticationFreeTokenPost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyToJson(this);

  @JsonKey(name: 'grant_type')
  final String? grantType;
  @JsonKey(name: 'username')
  final String? username;
  @JsonKey(name: 'password')
  final String? password;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @JsonKey(name: 'scope')
  final String? scope;
  @JsonKey(name: 'client_id')
  final String? clientId;
  @JsonKey(name: 'client_secret')
  final String? clientSecret;
  static const fromJsonFactory =
      _$ApiV1AuthenticationFreeTokenPost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiV1AuthenticationFreeTokenPost$RequestBody &&
            (identical(other.grantType, grantType) ||
                const DeepCollectionEquality()
                    .equals(other.grantType, grantType)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.clientSecret, clientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.clientSecret, clientSecret)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(grantType) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(clientSecret) ^
      runtimeType.hashCode;
}

extension $ApiV1AuthenticationFreeTokenPost$RequestBodyExtension
    on ApiV1AuthenticationFreeTokenPost$RequestBody {
  ApiV1AuthenticationFreeTokenPost$RequestBody copyWith(
      {String? grantType,
      String? username,
      String? password,
      String? refreshToken,
      String? scope,
      String? clientId,
      String? clientSecret}) {
    return ApiV1AuthenticationFreeTokenPost$RequestBody(
        grantType: grantType ?? this.grantType,
        username: username ?? this.username,
        password: password ?? this.password,
        refreshToken: refreshToken ?? this.refreshToken,
        scope: scope ?? this.scope,
        clientId: clientId ?? this.clientId,
        clientSecret: clientSecret ?? this.clientSecret);
  }

  ApiV1AuthenticationFreeTokenPost$RequestBody copyWithWrapped(
      {Wrapped<String?>? grantType,
      Wrapped<String?>? username,
      Wrapped<String?>? password,
      Wrapped<String?>? refreshToken,
      Wrapped<String?>? scope,
      Wrapped<String?>? clientId,
      Wrapped<String?>? clientSecret}) {
    return ApiV1AuthenticationFreeTokenPost$RequestBody(
        grantType: (grantType != null ? grantType.value : this.grantType),
        username: (username != null ? username.value : this.username),
        password: (password != null ? password.value : this.password),
        refreshToken:
            (refreshToken != null ? refreshToken.value : this.refreshToken),
        scope: (scope != null ? scope.value : this.scope),
        clientId: (clientId != null ? clientId.value : this.clientId),
        clientSecret:
            (clientSecret != null ? clientSecret.value : this.clientSecret));
  }
}

@JsonSerializable(explicitToJson: true)
class ApiV1AuthenticationEditProfileImagePost$RequestBody {
  ApiV1AuthenticationEditProfileImagePost$RequestBody({
    this.file,
  });

  factory ApiV1AuthenticationEditProfileImagePost$RequestBody.fromJson(
          Map<String, dynamic> json) =>
      _$ApiV1AuthenticationEditProfileImagePost$RequestBodyFromJson(json);

  static const toJsonFactory =
      _$ApiV1AuthenticationEditProfileImagePost$RequestBodyToJson;
  Map<String, dynamic> toJson() =>
      _$ApiV1AuthenticationEditProfileImagePost$RequestBodyToJson(this);

  @JsonKey(name: 'File')
  final String? file;
  static const fromJsonFactory =
      _$ApiV1AuthenticationEditProfileImagePost$RequestBodyFromJson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ApiV1AuthenticationEditProfileImagePost$RequestBody &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(file) ^ runtimeType.hashCode;
}

extension $ApiV1AuthenticationEditProfileImagePost$RequestBodyExtension
    on ApiV1AuthenticationEditProfileImagePost$RequestBody {
  ApiV1AuthenticationEditProfileImagePost$RequestBody copyWith({String? file}) {
    return ApiV1AuthenticationEditProfileImagePost$RequestBody(
        file: file ?? this.file);
  }

  ApiV1AuthenticationEditProfileImagePost$RequestBody copyWithWrapped(
      {Wrapped<String?>? file}) {
    return ApiV1AuthenticationEditProfileImagePost$RequestBody(
        file: (file != null ? file.value : this.file));
  }
}

String? apiResultStatusCodeToJson(
    enums.ApiResultStatusCode? apiResultStatusCode) {
  return apiResultStatusCode?.value;
}

enums.ApiResultStatusCode apiResultStatusCodeFromJson(
  Object? apiResultStatusCode, [
  enums.ApiResultStatusCode? defaultValue,
]) {
  return enums.ApiResultStatusCode.values
          .firstWhereOrNull((e) => e.value == apiResultStatusCode) ??
      defaultValue ??
      enums.ApiResultStatusCode.swaggerGeneratedUnknown;
}

List<String> apiResultStatusCodeListToJson(
    List<enums.ApiResultStatusCode>? apiResultStatusCode) {
  if (apiResultStatusCode == null) {
    return [];
  }

  return apiResultStatusCode.map((e) => e.value!).toList();
}

List<enums.ApiResultStatusCode> apiResultStatusCodeListFromJson(
  List? apiResultStatusCode, [
  List<enums.ApiResultStatusCode>? defaultValue,
]) {
  if (apiResultStatusCode == null) {
    return defaultValue ?? [];
  }

  return apiResultStatusCode
      .map((e) => apiResultStatusCodeFromJson(e.toString()))
      .toList();
}

List<enums.ApiResultStatusCode>? apiResultStatusCodeNullableListFromJson(
  List? apiResultStatusCode, [
  List<enums.ApiResultStatusCode>? defaultValue,
]) {
  if (apiResultStatusCode == null) {
    return defaultValue;
  }

  return apiResultStatusCode
      .map((e) => apiResultStatusCodeFromJson(e.toString()))
      .toList();
}

String? commentStatusToJson(enums.CommentStatus? commentStatus) {
  return commentStatus?.value;
}

enums.CommentStatus commentStatusFromJson(
  Object? commentStatus, [
  enums.CommentStatus? defaultValue,
]) {
  return enums.CommentStatus.values
          .firstWhereOrNull((e) => e.value == commentStatus) ??
      defaultValue ??
      enums.CommentStatus.swaggerGeneratedUnknown;
}

List<String> commentStatusListToJson(List<enums.CommentStatus>? commentStatus) {
  if (commentStatus == null) {
    return [];
  }

  return commentStatus.map((e) => e.value!).toList();
}

List<enums.CommentStatus> commentStatusListFromJson(
  List? commentStatus, [
  List<enums.CommentStatus>? defaultValue,
]) {
  if (commentStatus == null) {
    return defaultValue ?? [];
  }

  return commentStatus.map((e) => commentStatusFromJson(e.toString())).toList();
}

List<enums.CommentStatus>? commentStatusNullableListFromJson(
  List? commentStatus, [
  List<enums.CommentStatus>? defaultValue,
]) {
  if (commentStatus == null) {
    return defaultValue;
  }

  return commentStatus.map((e) => commentStatusFromJson(e.toString())).toList();
}

String? genderTypeToJson(enums.GenderType? genderType) {
  return genderType?.value;
}

enums.GenderType genderTypeFromJson(
  Object? genderType, [
  enums.GenderType? defaultValue,
]) {
  return enums.GenderType.values
          .firstWhereOrNull((e) => e.value == genderType) ??
      defaultValue ??
      enums.GenderType.swaggerGeneratedUnknown;
}

List<String> genderTypeListToJson(List<enums.GenderType>? genderType) {
  if (genderType == null) {
    return [];
  }

  return genderType.map((e) => e.value!).toList();
}

List<enums.GenderType> genderTypeListFromJson(
  List? genderType, [
  List<enums.GenderType>? defaultValue,
]) {
  if (genderType == null) {
    return defaultValue ?? [];
  }

  return genderType.map((e) => genderTypeFromJson(e.toString())).toList();
}

List<enums.GenderType>? genderTypeNullableListFromJson(
  List? genderType, [
  List<enums.GenderType>? defaultValue,
]) {
  if (genderType == null) {
    return defaultValue;
  }

  return genderType.map((e) => genderTypeFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
