# SwaggerClient::BotStateApi

All URIs are relative to *https://state.botframework.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bot_state_delete_state_for_user**](BotStateApi.md#bot_state_delete_state_for_user) | **DELETE** /v3/botstate/{channelId}/users/{userId} | DeleteStateForUser
[**bot_state_get_conversation_data**](BotStateApi.md#bot_state_get_conversation_data) | **GET** /v3/botstate/{channelId}/conversations/{conversationId} | GetConversationData
[**bot_state_get_private_conversation_data**](BotStateApi.md#bot_state_get_private_conversation_data) | **GET** /v3/botstate/{channelId}/conversations/{conversationId}/users/{userId} | GetPrivateConversationData
[**bot_state_get_user_data**](BotStateApi.md#bot_state_get_user_data) | **GET** /v3/botstate/{channelId}/users/{userId} | GetUserData
[**bot_state_set_conversation_data**](BotStateApi.md#bot_state_set_conversation_data) | **POST** /v3/botstate/{channelId}/conversations/{conversationId} | SetConversationData
[**bot_state_set_private_conversation_data**](BotStateApi.md#bot_state_set_private_conversation_data) | **POST** /v3/botstate/{channelId}/conversations/{conversationId}/users/{userId} | SetPrivateConversationData
[**bot_state_set_user_data**](BotStateApi.md#bot_state_set_user_data) | **POST** /v3/botstate/{channelId}/users/{userId} | SetUserData


# **bot_state_delete_state_for_user**
> Array&lt;String&gt; bot_state_delete_state_for_user(channel_id, user_id)

DeleteStateForUser

Delete all data for a user in a channel (UserData and PrivateConversationData)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

user_id = "user_id_example" # String | id for the user on the channel


begin
  #DeleteStateForUser
  result = api_instance.bot_state_delete_state_for_user(channel_id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_delete_state_for_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **user_id** | **String**| id for the user on the channel | 

### Return type

**Array&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_get_conversation_data**
> BotData bot_state_get_conversation_data(channel_id, conversation_id)

GetConversationData

get the bots data for all users in a conversation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | the channelId

conversation_id = "conversation_id_example" # String | The id for the conversation on the channel


begin
  #GetConversationData
  result = api_instance.bot_state_get_conversation_data(channel_id, conversation_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_get_conversation_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| the channelId | 
 **conversation_id** | **String**| The id for the conversation on the channel | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_get_private_conversation_data**
> BotData bot_state_get_private_conversation_data(channel_id, conversation_id, user_id)

GetPrivateConversationData

get bot's data for a single user in a conversation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

conversation_id = "conversation_id_example" # String | The id for the conversation on the channel

user_id = "user_id_example" # String | id for the user on the channel


begin
  #GetPrivateConversationData
  result = api_instance.bot_state_get_private_conversation_data(channel_id, conversation_id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_get_private_conversation_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **conversation_id** | **String**| The id for the conversation on the channel | 
 **user_id** | **String**| id for the user on the channel | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_get_user_data**
> BotData bot_state_get_user_data(channel_id, user_id)

GetUserData

Get a bots data for the user across all conversations

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

user_id = "user_id_example" # String | id for the user on the channel


begin
  #GetUserData
  result = api_instance.bot_state_get_user_data(channel_id, user_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_get_user_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **user_id** | **String**| id for the user on the channel | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_set_conversation_data**
> BotData bot_state_set_conversation_data(channel_id, conversation_id, bot_data)

SetConversationData

Update the bot's data for all users in a conversation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

conversation_id = "conversation_id_example" # String | The id for the conversation on the channel

bot_data = SwaggerClient::BotData.new # BotData | the new botdata


begin
  #SetConversationData
  result = api_instance.bot_state_set_conversation_data(channel_id, conversation_id, bot_data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_set_conversation_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **conversation_id** | **String**| The id for the conversation on the channel | 
 **bot_data** | [**BotData**](BotData.md)| the new botdata | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_set_private_conversation_data**
> BotData bot_state_set_private_conversation_data(channel_id, conversation_id, user_id, bot_data)

SetPrivateConversationData

Update the bot's data for a single user in a conversation

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

conversation_id = "conversation_id_example" # String | The id for the conversation on the channel

user_id = "user_id_example" # String | id for the user on the channel

bot_data = SwaggerClient::BotData.new # BotData | the new botdata


begin
  #SetPrivateConversationData
  result = api_instance.bot_state_set_private_conversation_data(channel_id, conversation_id, user_id, bot_data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_set_private_conversation_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **conversation_id** | **String**| The id for the conversation on the channel | 
 **user_id** | **String**| id for the user on the channel | 
 **bot_data** | [**BotData**](BotData.md)| the new botdata | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



# **bot_state_set_user_data**
> BotData bot_state_set_user_data(channel_id, user_id, bot_data)

SetUserData

Update the bot's data for a user

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::BotStateApi.new

channel_id = "channel_id_example" # String | channelId

user_id = "user_id_example" # String | id for the user on the channel

bot_data = SwaggerClient::BotData.new # BotData | the new botdata


begin
  #SetUserData
  result = api_instance.bot_state_set_user_data(channel_id, user_id, bot_data)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BotStateApi->bot_state_set_user_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel_id** | **String**| channelId | 
 **user_id** | **String**| id for the user on the channel | 
 **bot_data** | [**BotData**](BotData.md)| the new botdata | 

### Return type

[**BotData**](BotData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml



