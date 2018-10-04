# frozen_string_literal: true

module Amadeus
  module Namespaces
    class Travel
      class Analytics
        class AirTraffic
          # A namespaced client for the
          # +/v1/travel/analytics/air-traffic/traveled+ endpoints
          #
          # Access via the +Amadeus::Client+ object
          #
          #   amadeus = Amadeus::Client.new
          #   amadeus.travel.analytics.air_traffic.traveled
          #
          class Traveled < Amadeus::Client::Decorator
            # Returns a list of air traffic reports based on number of people traveling.
            #
            # @option params [String] :origin IATA code of the origin city -
            #   e.g. BOS for Boston - required
            # @option params [String] :query period when consumers
            # are travelling
            #   in YYYY-MM format
            # @return [Amadeus::Response] a parsed response
            # @raise [Amadeus::Base] an exception if the call failed
            # @example Find the air traffic from Nice in August 2017
            #   amadeus.travel.analytics.air_traffic.traveled.get(
            #     origin: 'NCE',
            #     period: '2017-08'
            #   )
            #
            def get(params = {})
              client.get('/v1/travel/analytics/air-traffic/traveled', params)
            end
          end
        end
      end
    end
  end
end
