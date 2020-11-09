require 'httparty'
require 'apicake'
require 'json'
require 'ostruct'

  class Newsapi < APICake::Base
    base_uri 'https://newsapi.org'

    attr_reader :api_key, :last_payload, :parsed_response

    def initialize(api_key)
      @api_key = api_key
    end

    def default_query
      { apiKey: @api_key }
    end

    def self.top_headlines
      napi = Newsapi.new '8be3133fee004afe9866824a491f4e83'
      napi.v2 'top-headlines', langauge: 'en',  country: 'us', category: 'science' #,
      #apiKey: '8be3133fee004afe9866824a491f4e83'
      results = napi.last_payload
      Results.new(results)
    end

  class Result < OpenStruct
    end


    class Results
      def initialize(results)
        results.map.each {|r| Result.new(r) }
        end
      end
    end

    



#
#Everything.new(:q, :qInTitle, :sources, :domains, :excludedDomains, :from, :to, :language, :sortBy, :pageSize, :page)
#Sources.new(:category, :language, :country)
#
#
#napi = Napi::Newsapi.new '8be3133fee004afe9866824a491f4e83'
#
#
#napi.v2 'top-headlines', country: 'us', category: 'category', sources: 'sources', q: 'q', pageSize: 'pageSize', page: 'page'
#
#napi.v2 'everything', q: 'q', qInTitle: 'qInTitle', sources: 'sources', domains: 'domains', excludedDomains: 'excludedDomains', from: 'from', to: 'to', language: 'language', sortBy: 'sortBy', pageSize: 
#'pageSize', page: 'page'
#
#napi.v2 'sources', category: 'category', language: 'language', country: 'country'
#
#
#
#
