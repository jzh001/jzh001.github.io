require "active_support/all"
require "net/http"
require "json"
require "uri"

module Helpers
  extend ActiveSupport::NumberHelper
end

module Jekyll
  class SemanticScholarCitationsTag < Liquid::Tag
    Citations = {}

    def initialize(tag_name, params, tokens)
      super
      @param = params.strip
    end

    def render(context)
      doi = context[@param]&.to_s&.strip
      return "N/A" if doi.nil? || doi.empty?

      # If the citation count has already been fetched, return it
      if SemanticScholarCitationsTag::Citations[doi]
        return SemanticScholarCitationsTag::Citations[doi]
      end

      citation_count = 0

      begin
        url = URI.parse("https://api.semanticscholar.org/graph/v1/paper/DOI:#{doi}?fields=citationCount")
        response = Net::HTTP.get_response(url)

        if response.is_a?(Net::HTTPSuccess)
          data = JSON.parse(response.body)
          citation_count = data["citationCount"] || 0
        else
          puts "Semantic Scholar request failed for #{doi}: #{response.code} - #{response.message}"
          citation_count = 0
        end
      rescue Exception => e
        puts "Error fetching citation count for #{doi}: #{e.class} - #{e.message}"
        citation_count = 0
      end

      citation_count = Helpers.number_to_human(
        citation_count,
        :format => "%n%u",
        :precision => 2,
        :units => { :thousand => "K", :million => "M", :billion => "B" }
      )

      SemanticScholarCitationsTag::Citations[doi] = citation_count
      return citation_count.to_s
    end
  end
end

Liquid::Template.register_tag("semantic_scholar_citations", Jekyll::SemanticScholarCitationsTag)