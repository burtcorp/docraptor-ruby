=begin
#DocRaptor v1

OpenAPI spec version: 1.1.0

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

# Common files
require 'docraptor/api_client'
require 'docraptor/api_error'
require 'docraptor/version'
require 'docraptor/configuration'

# Models
require 'docraptor/models/async_doc'
require 'docraptor/models/async_doc_status'
require 'docraptor/models/doc'
require 'docraptor/models/prince_options'

# APIs
require 'docraptor/api/doc_api'

module DocRaptor
  class << self
    # Customize default settings for the SDK using block.
    #   DocRaptor.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
