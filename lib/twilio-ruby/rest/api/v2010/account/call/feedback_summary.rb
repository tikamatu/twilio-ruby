##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class FeedbackSummaryList < ListResource
      ##
      # Initialize the FeedbackSummaryList
      def initialize(version, account_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/Calls/FeedbackSummary.json"
      end
      
      ##
      # Create a new FeedbackSummaryInstance
      def create(self, start_date, end_date, include_subaccounts=values.unset, status_callback=values.unset, status_callback_method=values.unset)
        data = values.of({
            StartDate: serialize.iso8601_date(start_date),
            EndDate: serialize.iso8601_date(end_date),
            IncludeSubaccounts: include_subaccounts,
            StatusCallback: status_callback,
            StatusCallbackMethod: status_callback_method,
        })
        
        @version.create(
            FeedbackSummaryInstance,
            @solution,
            'POST',
            @uri,
            {}
            data
        )
      end
      
      ##
      # Constructs a FeedbackSummaryContext
      def get(sid)
        FeedbackSummaryContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.FeedbackSummaryList>'
      end
    end
  end
end