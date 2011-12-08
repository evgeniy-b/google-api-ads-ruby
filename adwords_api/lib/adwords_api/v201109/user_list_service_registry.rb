#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.6.0 on 2011-12-02 16:43:05.

require 'adwords_api/errors'

module AdwordsApi; module V201109; module UserListService
  class UserListServiceRegistry
    USERLISTSERVICE_METHODS = {:get=>{:input=>[{:name=>:service_selector, :type=>"Selector", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_response", :fields=>[{:name=>:rval, :type=>"UserListPage", :min_occurs=>0, :max_occurs=>1}]}}, :mutate=>{:input=>[{:name=>:operations, :type=>"UserListOperation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"mutate_response", :fields=>[{:name=>:rval, :type=>"UserListReturnValue", :min_occurs=>0, :max_occurs=>1}]}}}
    USERLISTSERVICE_TYPES = {:ExternalRemarketingUserList=>{:fields=>[], :base=>"UserList"}, :UserListConversionType=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:category, :type=>"UserListConversionType.Category", :min_occurs=>0, :max_occurs=>1}]}, :DateRange=>{:fields=>[{:name=>:min, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:max, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ListReturnValue=>{:fields=>[{:name=>:list_return_value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LogicalUserList=>{:fields=>[{:name=>:rules, :type=>"UserListLogicalRule", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"UserList"}, :LogicalUserListOperand=>{:fields=>[]}, :Operation=>{:fields=>[{:name=>:operator, :type=>"Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:operation_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OperationAccessDenied=>{:fields=>[{:name=>:reason, :type=>"OperationAccessDenied.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderBy=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sort_order, :type=>"SortOrder", :min_occurs=>0, :max_occurs=>1}]}, :Page=>{:fields=>[{:name=>:total_num_entries, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:page_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Paging=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:number_results, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Predicate=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operator, :type=>"Predicate.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :RemarketingUserList=>{:fields=>[{:name=>:conversion_types, :type=>"UserListConversionType", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"UserList"}, :Selector=>{:fields=>[{:name=>:fields, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:predicates, :type=>"Predicate", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:date_range, :type=>"DateRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:ordering, :type=>"OrderBy", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:paging, :type=>"Paging", :min_occurs=>0, :max_occurs=>1}]}, :SoapHeader=>{:fields=>[{:name=>:auth_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:client_customer_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:developer_token, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_agent, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:validate_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:partial_failure, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:service_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:method_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:operations, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :UserInterest=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:size_range, :type=>"SizeRange", :min_occurs=>0, :max_occurs=>1}]}, :UserList=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_read_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"UserListMembershipStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:access_reason, :type=>"AccessReason", :min_occurs=>0, :max_occurs=>1}, {:name=>:account_user_list_status, :type=>"AccountUserListStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:membership_life_span, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:size_range, :type=>"SizeRange", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"UserList.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_list_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :UserListLogicalRule=>{:fields=>[{:name=>:operator, :type=>"UserListLogicalRule.Operator", :min_occurs=>0, :max_occurs=>1}, {:name=>:rule_operands, :type=>"LogicalUserListOperand", :min_occurs=>0, :max_occurs=>:unbounded}]}, :UserListOperation=>{:fields=>[{:name=>:operand, :type=>"UserList", :min_occurs=>0, :max_occurs=>1}], :base=>"Operation"}, :UserListPage=>{:fields=>[{:name=>:entries, :type=>"UserList", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Page"}, :UserListReturnValue=>{:fields=>[{:name=>:value, :type=>"UserList", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ListReturnValue"}, :AccessReason=>{:fields=>[]}, :AccountUserListStatus=>{:fields=>[]}, :"UserListConversionType.Category"=>{:fields=>[]}, :Operator=>{:fields=>[]}, :"Predicate.Operator"=>{:fields=>[]}, :SizeRange=>{:fields=>[]}, :SortOrder=>{:fields=>[]}, :"UserList.Type"=>{:fields=>[]}, :"UserListLogicalRule.Operator"=>{:fields=>[]}, :UserListMembershipStatus=>{:fields=>[]}}
    USERLISTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return USERLISTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return USERLISTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return USERLISTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end