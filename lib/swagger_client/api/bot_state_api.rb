=begin
#Microsoft Bot Connector API - v3.0

#The Bot State REST API allows your bot to store and retrieve state associated with conversations conducted through  the [Bot Connector REST API](/en-us/restapi/connector). The Bot State REST API uses REST and HTTPS to send and receive  encoded content that your bot controls.    Client libraries for this REST API are available. See below for a list.    Your bot may store data for a user, a conversation, or a single user within a conversation (called \"private\" data).  Each payload may be up to 32 kilobytes in size. The data may be removed by the bot or upon a user's request, e.g.  if the user requests the channel to inform the bot (and therefore, the Bot Framework) to delete the user's data.    The Bot State REST API is only useful in conjunction with the Bot Connector REST API.    Authentication for both the Bot State and Bot Connector REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot State REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [State API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/StateAPI.json)    © 2016 Microsoft

OpenAPI spec version: v3
Contact: botframework@microsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module SwaggerClient
  class BotStateApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # DeleteStateForUser
    # Delete all data for a user in a channel (UserData and PrivateConversationData)
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def bot_state_delete_state_for_user(channel_id, user_id, opts = {})
      data, _status_code, _headers = bot_state_delete_state_for_user_with_http_info(channel_id, user_id, opts)
      return data
    end

    # DeleteStateForUser
    # Delete all data for a user in a channel (UserData and PrivateConversationData)
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Fixnum, Hash)>] Array<String> data, response status code and response headers
    def bot_state_delete_state_for_user_with_http_info(channel_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_delete_state_for_user ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_delete_state_for_user" if channel_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling BotStateApi.bot_state_delete_state_for_user" if user_id.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/users/{userId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<String>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_delete_state_for_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetConversationData
    # get the bots data for all users in a conversation
    # @param channel_id the channelId
    # @param conversation_id The id for the conversation on the channel
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_get_conversation_data(channel_id, conversation_id, opts = {})
      data, _status_code, _headers = bot_state_get_conversation_data_with_http_info(channel_id, conversation_id, opts)
      return data
    end

    # GetConversationData
    # get the bots data for all users in a conversation
    # @param channel_id the channelId
    # @param conversation_id The id for the conversation on the channel
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_get_conversation_data_with_http_info(channel_id, conversation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_get_conversation_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_get_conversation_data" if channel_id.nil?
      # verify the required parameter 'conversation_id' is set
      fail ArgumentError, "Missing the required parameter 'conversation_id' when calling BotStateApi.bot_state_get_conversation_data" if conversation_id.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/conversations/{conversationId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'conversationId' + '}', conversation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_get_conversation_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetPrivateConversationData
    # get bot's data for a single user in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_get_private_conversation_data(channel_id, conversation_id, user_id, opts = {})
      data, _status_code, _headers = bot_state_get_private_conversation_data_with_http_info(channel_id, conversation_id, user_id, opts)
      return data
    end

    # GetPrivateConversationData
    # get bot&#39;s data for a single user in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_get_private_conversation_data_with_http_info(channel_id, conversation_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_get_private_conversation_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_get_private_conversation_data" if channel_id.nil?
      # verify the required parameter 'conversation_id' is set
      fail ArgumentError, "Missing the required parameter 'conversation_id' when calling BotStateApi.bot_state_get_private_conversation_data" if conversation_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling BotStateApi.bot_state_get_private_conversation_data" if user_id.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/conversations/{conversationId}/users/{userId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'conversationId' + '}', conversation_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_get_private_conversation_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GetUserData
    # Get a bots data for the user across all conversations
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_get_user_data(channel_id, user_id, opts = {})
      data, _status_code, _headers = bot_state_get_user_data_with_http_info(channel_id, user_id, opts)
      return data
    end

    # GetUserData
    # Get a bots data for the user across all conversations
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_get_user_data_with_http_info(channel_id, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_get_user_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_get_user_data" if channel_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling BotStateApi.bot_state_get_user_data" if user_id.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/users/{userId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_get_user_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SetConversationData
    # Update the bot's data for all users in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_set_conversation_data(channel_id, conversation_id, bot_data, opts = {})
      data, _status_code, _headers = bot_state_set_conversation_data_with_http_info(channel_id, conversation_id, bot_data, opts)
      return data
    end

    # SetConversationData
    # Update the bot&#39;s data for all users in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_set_conversation_data_with_http_info(channel_id, conversation_id, bot_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_set_conversation_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_set_conversation_data" if channel_id.nil?
      # verify the required parameter 'conversation_id' is set
      fail ArgumentError, "Missing the required parameter 'conversation_id' when calling BotStateApi.bot_state_set_conversation_data" if conversation_id.nil?
      # verify the required parameter 'bot_data' is set
      fail ArgumentError, "Missing the required parameter 'bot_data' when calling BotStateApi.bot_state_set_conversation_data" if bot_data.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/conversations/{conversationId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'conversationId' + '}', conversation_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bot_data)
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_set_conversation_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SetPrivateConversationData
    # Update the bot's data for a single user in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param user_id id for the user on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_set_private_conversation_data(channel_id, conversation_id, user_id, bot_data, opts = {})
      data, _status_code, _headers = bot_state_set_private_conversation_data_with_http_info(channel_id, conversation_id, user_id, bot_data, opts)
      return data
    end

    # SetPrivateConversationData
    # Update the bot&#39;s data for a single user in a conversation
    # @param channel_id channelId
    # @param conversation_id The id for the conversation on the channel
    # @param user_id id for the user on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_set_private_conversation_data_with_http_info(channel_id, conversation_id, user_id, bot_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_set_private_conversation_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_set_private_conversation_data" if channel_id.nil?
      # verify the required parameter 'conversation_id' is set
      fail ArgumentError, "Missing the required parameter 'conversation_id' when calling BotStateApi.bot_state_set_private_conversation_data" if conversation_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling BotStateApi.bot_state_set_private_conversation_data" if user_id.nil?
      # verify the required parameter 'bot_data' is set
      fail ArgumentError, "Missing the required parameter 'bot_data' when calling BotStateApi.bot_state_set_private_conversation_data" if bot_data.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/conversations/{conversationId}/users/{userId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'conversationId' + '}', conversation_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bot_data)
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_set_private_conversation_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # SetUserData
    # Update the bot's data for a user
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [BotData]
    def bot_state_set_user_data(channel_id, user_id, bot_data, opts = {})
      data, _status_code, _headers = bot_state_set_user_data_with_http_info(channel_id, user_id, bot_data, opts)
      return data
    end

    # SetUserData
    # Update the bot&#39;s data for a user
    # @param channel_id channelId
    # @param user_id id for the user on the channel
    # @param bot_data the new botdata
    # @param [Hash] opts the optional parameters
    # @return [Array<(BotData, Fixnum, Hash)>] BotData data, response status code and response headers
    def bot_state_set_user_data_with_http_info(channel_id, user_id, bot_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BotStateApi.bot_state_set_user_data ..."
      end
      # verify the required parameter 'channel_id' is set
      fail ArgumentError, "Missing the required parameter 'channel_id' when calling BotStateApi.bot_state_set_user_data" if channel_id.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling BotStateApi.bot_state_set_user_data" if user_id.nil?
      # verify the required parameter 'bot_data' is set
      fail ArgumentError, "Missing the required parameter 'bot_data' when calling BotStateApi.bot_state_set_user_data" if bot_data.nil?
      # resource path
      local_var_path = "/v3/botstate/{channelId}/users/{userId}".sub('{format}','json').sub('{' + 'channelId' + '}', channel_id.to_s).sub('{' + 'userId' + '}', user_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'text/json', 'application/xml', 'text/xml']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json', 'text/json', 'application/xml', 'text/xml', 'application/x-www-form-urlencoded']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bot_data)
      auth_names = ['bot_to_connector']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BotData')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BotStateApi#bot_state_set_user_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end