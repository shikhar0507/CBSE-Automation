require 'watir-webdriver'
range = (10314210050..10314210059) ##Add any range of roll numbers
believe = Watir::Browser.new :firefox ##believe is the name of custom browser, and firefox is the actual browser for result retriever.
believe.goto "http://117.239.224.139/srmhonline/online/results/onlineResult.jsp" #Apache server
range.each do |number|
	believe.text_field(:name => 'txtRegisterno').set number
believe.button(:name => "Click Me").click
believe.screenshot.save "#{number}.png"
believe.back
end
