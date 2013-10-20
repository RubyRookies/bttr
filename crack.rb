require 'rubygems'
require 'open-uri'
require 'crack'
URL = 'http://www.recovery.gov/pages/GetXmlData.aspx?data=recipientHomeMap'

Crack::XML.parse(opn(URL).read)['totals']['state'].each do |state|
  puts ['id', 'awarded', 'received', 'jobs'].map{ |f| state[f].join(', ') }
end
