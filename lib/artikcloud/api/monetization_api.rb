=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ArtikCloud
  class MonetizationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Define devicetype's pricing tiers.
    # Define devicetype's pricing tiers.
    # @param dtid DeviceType ID
    # @param pricing_tier_info Pricing tier info
    # @param [Hash] opts the optional parameters
    # @return [DeviceTypePricingTier]
    def create_pricing_tiers(dtid, pricing_tier_info, opts = {})
      data, _status_code, _headers = create_pricing_tiers_with_http_info(dtid, pricing_tier_info, opts)
      return data
    end

    # Define devicetype&#39;s pricing tiers.
    # Define devicetype&#39;s pricing tiers.
    # @param dtid DeviceType ID
    # @param pricing_tier_info Pricing tier info
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceTypePricingTier, Fixnum, Hash)>] DeviceTypePricingTier data, response status code and response headers
    def create_pricing_tiers_with_http_info(dtid, pricing_tier_info, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MonetizationApi.create_pricing_tiers ..."
      end
      # verify the required parameter 'dtid' is set
      fail ArgumentError, "Missing the required parameter 'dtid' when calling MonetizationApi.create_pricing_tiers" if dtid.nil?
      # verify the required parameter 'pricing_tier_info' is set
      fail ArgumentError, "Missing the required parameter 'pricing_tier_info' when calling MonetizationApi.create_pricing_tiers" if pricing_tier_info.nil?
      # resource path
      local_var_path = "/pricing/devicetypes/{dtid}/pricingtiers".sub('{format}','json').sub('{' + 'dtid' + '}', dtid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pricing_tier_info)
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceTypePricingTier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonetizationApi#create_pricing_tiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a device's pricing tiers
    # Get a device's pricing tiers
    # @param did Device ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :active Filter by active
    # @return [DevicePricingTiersEnvelope]
    def get_pricing_tiers(did, opts = {})
      data, _status_code, _headers = get_pricing_tiers_with_http_info(did, opts)
      return data
    end

    # Get a device&#39;s pricing tiers
    # Get a device&#39;s pricing tiers
    # @param did Device ID
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :active Filter by active
    # @return [Array<(DevicePricingTiersEnvelope, Fixnum, Hash)>] DevicePricingTiersEnvelope data, response status code and response headers
    def get_pricing_tiers_with_http_info(did, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MonetizationApi.get_pricing_tiers ..."
      end
      # verify the required parameter 'did' is set
      fail ArgumentError, "Missing the required parameter 'did' when calling MonetizationApi.get_pricing_tiers" if did.nil?
      # resource path
      local_var_path = "/pricing/devices/{did}/pricingtiers".sub('{format}','json').sub('{' + 'did' + '}', did.to_s)

      # query parameters
      query_params = {}
      query_params[:'active'] = opts[:'active'] if !opts[:'active'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DevicePricingTiersEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonetizationApi#get_pricing_tiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get devicetype's pricing tiers.
    # Get devicetype's pricing tiers.
    # @param dtid DeviceType ID
    # @param version Version
    # @param [Hash] opts the optional parameters
    # @return [DeviceTypePricingTiersEnvelope]
    def get_the__pricing_tiers(dtid, version, opts = {})
      data, _status_code, _headers = get_the__pricing_tiers_with_http_info(dtid, version, opts)
      return data
    end

    # Get devicetype&#39;s pricing tiers.
    # Get devicetype&#39;s pricing tiers.
    # @param dtid DeviceType ID
    # @param version Version
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeviceTypePricingTiersEnvelope, Fixnum, Hash)>] DeviceTypePricingTiersEnvelope data, response status code and response headers
    def get_the__pricing_tiers_with_http_info(dtid, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MonetizationApi.get_the__pricing_tiers ..."
      end
      # verify the required parameter 'dtid' is set
      fail ArgumentError, "Missing the required parameter 'dtid' when calling MonetizationApi.get_the__pricing_tiers" if dtid.nil?
      # verify the required parameter 'version' is set
      fail ArgumentError, "Missing the required parameter 'version' when calling MonetizationApi.get_the__pricing_tiers" if version.nil?
      # resource path
      local_var_path = "/pricing/devicetypes/{dtid}/pricingtiers".sub('{format}','json').sub('{' + 'dtid' + '}', dtid.to_s).sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeviceTypePricingTiersEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonetizationApi#get_the__pricing_tiers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get upgrade path
    # Get upgrade path
    # @param did Device ID
    # @param action Action to perform
    # @param [Hash] opts the optional parameters
    # @return [UpgradePathEnvelope]
    def get_upgrade_path(did, action, opts = {})
      data, _status_code, _headers = get_upgrade_path_with_http_info(did, action, opts)
      return data
    end

    # Get upgrade path
    # Get upgrade path
    # @param did Device ID
    # @param action Action to perform
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpgradePathEnvelope, Fixnum, Hash)>] UpgradePathEnvelope data, response status code and response headers
    def get_upgrade_path_with_http_info(did, action, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MonetizationApi.get_upgrade_path ..."
      end
      # verify the required parameter 'did' is set
      fail ArgumentError, "Missing the required parameter 'did' when calling MonetizationApi.get_upgrade_path" if did.nil?
      # verify the required parameter 'action' is set
      fail ArgumentError, "Missing the required parameter 'action' when calling MonetizationApi.get_upgrade_path" if action.nil?
      # resource path
      local_var_path = "/pricing/devices/{did}/revenueshare/upgradepath".sub('{format}','json').sub('{' + 'did' + '}', did.to_s).sub('{' + 'action' + '}', action.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpgradePathEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonetizationApi#get_upgrade_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a device's pricing tier
    # Set a device's pricing tier
    # @param did Device ID
    # @param pricing_tier Pricing tier
    # @param [Hash] opts the optional parameters
    # @return [DevicePricingTierEnvelope]
    def set_pricing_tier(did, pricing_tier, opts = {})
      data, _status_code, _headers = set_pricing_tier_with_http_info(did, pricing_tier, opts)
      return data
    end

    # Set a device&#39;s pricing tier
    # Set a device&#39;s pricing tier
    # @param did Device ID
    # @param pricing_tier Pricing tier
    # @param [Hash] opts the optional parameters
    # @return [Array<(DevicePricingTierEnvelope, Fixnum, Hash)>] DevicePricingTierEnvelope data, response status code and response headers
    def set_pricing_tier_with_http_info(did, pricing_tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MonetizationApi.set_pricing_tier ..."
      end
      # verify the required parameter 'did' is set
      fail ArgumentError, "Missing the required parameter 'did' when calling MonetizationApi.set_pricing_tier" if did.nil?
      # verify the required parameter 'pricing_tier' is set
      fail ArgumentError, "Missing the required parameter 'pricing_tier' when calling MonetizationApi.set_pricing_tier" if pricing_tier.nil?
      # resource path
      local_var_path = "/pricing/devices/{did}/pricingtiers".sub('{format}','json').sub('{' + 'did' + '}', did.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(pricing_tier)
      auth_names = ['artikcloud_oauth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DevicePricingTierEnvelope')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonetizationApi#set_pricing_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
