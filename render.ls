phantom = require 'phantom'

fullUrl = process.argv[2]

ph 		<- phantom.create
page 	<- ph.createPage
status 	<- page.open fullUrl

page.evaluate (-> document.documentElement.outerHtml), (result) ->
	console.log result
	ph.exit!
