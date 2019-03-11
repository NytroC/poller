require 'json'
require 'aws-sdk'

poller = Aws::SQS::QueuePoller.new("https://sqs.us-east-1.amazonaws.com/170621239995/reporting")

poller.poll do |msg|
  puts msg.body
end