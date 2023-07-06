// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'katte.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$Katte extends Katte {
  _$Katte([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = Katte;

  @override
  Future<Response<ApiResult>> _apiV1AddressPost({required AddressDto? body}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Address');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<AddressDtoListApiResult>> _apiV1AddressGet() {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Address');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<AddressDtoListApiResult, AddressDtoListApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1AddressPut({
    String? id,
    required AddressDto? body,
  }) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Address');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<AddressDtoListApiResult>>
      _apiV1AddressGetAddressOfUserPost() {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Address/Get_Address_Of_User');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<AddressDtoListApiResult, AddressDtoListApiResult>($request);
  }

  @override
  Future<Response<AddressDtoApiResult>> _apiV1AddressIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Address/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<AddressDtoApiResult, AddressDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1AddressIdDelete({required String? id}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Address/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<AccessToken>> _apiV1AuthenticationFreeTokenPost({
    String? grantType,
    String? username,
    String? password,
    String? refreshToken,
    String? scope,
    String? clientId,
    String? clientSecret,
  }) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Authentication/FreeToken');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String?>(
        'grant_type',
        grantType,
      ),
      PartValue<String?>(
        'username',
        username,
      ),
      PartValue<String?>(
        'password',
        password,
      ),
      PartValue<String?>(
        'refresh_token',
        refreshToken,
      ),
      PartValue<String?>(
        'scope',
        scope,
      ),
      PartValue<String?>(
        'client_id',
        clientId,
      ),
      PartValue<String?>(
        'client_secret',
        clientSecret,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1AuthenticationSignUpPost(
      {required SignUpDto? body}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Authentication/SignUp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<StringApiResult>> _apiV1AuthenticationLoginPost(
      {String? userName}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Authentication/Login');
    final Map<String, dynamic> $params = <String, dynamic>{
      'UserName': userName
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StringApiResult, StringApiResult>($request);
  }

  @override
  Future<Response<AccessToken>> _apiV1AuthenticationLoginOtpPost(
      {required LoginOtpDto? body}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Authentication/LoginOtp');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<AccessToken, AccessToken>($request);
  }

  @override
  Future<Response<UserDtoApiResult>> _apiV1AuthenticationProfileGet() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Authentication/Profile');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<UserDtoApiResult, UserDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1AuthenticationEditProfileImagePost(
      {String? File}) {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Authentication/EditProfileImage');
    final List<PartValue> $parts = <PartValue>[
      PartValueFile<String?>(
        'File',
        File,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<CategoryDtoListApiResult>> _apiV1CategoryListCategoryGet() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Category/ListCategory');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<CategoryDtoListApiResult, CategoryDtoListApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1CommentPost({required CommentDto? body}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Comment');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<CommentDtoListApiResult>> _apiV1CommentGet() {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Comment');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<CommentDtoListApiResult, CommentDtoListApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1CommentPut({
    String? id,
    required CommentDto? body,
  }) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Comment');
    final Map<String, dynamic> $params = <String, dynamic>{'id': id};
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<CommentDtoListApiResult>> _apiV1CommentProductCommentsListGet(
      {String? productId}) {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Comment/ProductCommentsList');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ProductId': productId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<CommentDtoListApiResult, CommentDtoListApiResult>($request);
  }

  @override
  Future<Response<CommentDtoApiResult>> _apiV1CommentIdGet(
      {required String? id}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Comment/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<CommentDtoApiResult, CommentDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1CommentIdDelete({required String? id}) {
    final Uri $url = Uri.parse('http://103.75.197.248:90/api/v1/Comment/${id}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<NotificationDto>> _apiV1NotificationNotificationListGet() {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Notification/Notification_List');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<NotificationDto, NotificationDto>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1PaymentCashOrdersGet() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Payment/CashOrders');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<StringApiResult>> _apiV1PaymentProductPayGet({
    String? shopCardId,
    String? addressId,
  }) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Payment/ProductPay');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ShopCardId': shopCardId,
      'AddressId': addressId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<StringApiResult, StringApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1PaymentProductPaymentConfirmationGet({
    String? shopCardId,
    String? userId,
    String? authority,
    String? status,
  }) {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Payment/ProductPaymentConfirmation');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ShopCardId': shopCardId,
      'UserId': userId,
      'Authority': authority,
      'status': status,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<ProductDtoApiResult>> _apiV1ProductSearchProductGet(
      {String? searched}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Product/SearchProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'Searched': searched
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ProductDtoApiResult, ProductDtoApiResult>($request);
  }

  @override
  Future<Response<ProductDtoApiResult>> _apiV1ProductSingleProductGet(
      {String? productId}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Product/SingleProduct');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ProductId': productId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ProductDtoApiResult, ProductDtoApiResult>($request);
  }

  @override
  Future<Response<ProductDtoListApiResult>> _apiV1ProductAllProductListGet() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Product/AllProductList');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ProductDtoListApiResult, ProductDtoListApiResult>($request);
  }

  @override
  Future<Response<ProductDtoListApiResult>>
      _apiV1ProductTopestProductListGet() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/Product/TopestProductList');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ProductDtoListApiResult, ProductDtoListApiResult>($request);
  }

  @override
  Future<Response<ProductDtoListApiResult>>
      _apiV1ProductDiscountProductListGet() {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/Product/DiscountProductList');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<ProductDtoListApiResult, ProductDtoListApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1ShopCardSyncShopCardPost(
      {required SyncOrderDto? body}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/ShopCard/SyncShopCard');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<ShopCardDtoApiResult>> _apiV1ShopCardShopCardDetail1Get() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_1');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ShopCardDtoApiResult, ShopCardDtoApiResult>($request);
  }

  @override
  Future<Response<ShopCardDtoApiResult>> _apiV1ShopCardShopCardDetail2Get() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_2');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ShopCardDtoApiResult, ShopCardDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1ShopCardShopCardDetail2Post(
      {required Card2Dto? body}) {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_2');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<ShopCardDtoApiResult>> _apiV1ShopCardShopCardDetail3Get() {
    final Uri $url =
        Uri.parse('http://103.75.197.248:90/api/v1/ShopCard/ShopCardDetail_3');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ShopCardDtoApiResult, ShopCardDtoApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1ShopCardDeleteShopCardDetailGet(
      {String? shopCardDetailId}) {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/ShopCard/Delete_ShopCardDetail');
    final Map<String, dynamic> $params = <String, dynamic>{
      'ShopCardDetailId': shopCardDetailId
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ApiResult, ApiResult>($request);
  }

  @override
  Future<Response<ApiResult>> _apiV1ShopCardDeleteAllShopCardGet() {
    final Uri $url = Uri.parse(
        'http://103.75.197.248:90/api/v1/ShopCard/Delete_All_ShopCard');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ApiResult, ApiResult>($request);
  }
}
