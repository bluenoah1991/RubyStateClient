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

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ErrorResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ErrorResponse' do
  before do
    # run before each test
    @instance = SwaggerClient::ErrorResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ErrorResponse' do
    it 'should create an instact of ErrorResponse' do
      expect(@instance).to be_instance_of(SwaggerClient::ErrorResponse)
    end
  end
  describe 'test attribute "error"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

