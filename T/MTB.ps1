# Slack Webhooks

$GetMeme = Get-ChildItem "C:\Users\SPGJT2\OneDrive - Target Corporation\Taco"
$GetRandom = $GetMeme | Get-Random
$FN = $GetRandom.FullName

$SlackChannelUri = "https://api.target.com/slack_events/v1/webhooks/nGwp97nFFbFAayra4k0Ithm33XfNDagEdGxHOAohHSd9OdxncBAjEcA9w8ZTqZa5"
$ChannelName = "#whtest2"
$user = "dhc/spgjt2"

#https://i.pinimg.com/originals/a7/78/41/a77841ffe535a5891e20add4628719fe.jpg
#https://coachvideos-dev.dev.target.com/T/deadpool3.jpg
 
$BodyTemplate = @"
    {
        "channel": "whtest2",
        "username": "Greg.Tornoe",
        "text": "TACO!",
        "icon_emoji":":taco:",
	    "blocks": [
		    {
			"type": "image",
			"image_url": "https://i.pinimg.com/originals/a7/78/41/a77841ffe535a5891e20add4628719fe.jpg",
			"alt_text": "TACO!"
		    }
	    ]

    }
"@
  
$body = $BodyTemplate.Replace("DOMAIN_USERNAME","$user").Replace("DATETIME",$(Get-Date)).Replace("CHANNELNAME","$ChannelName")
Invoke-RestMethod -uri $SlackChannelUri -Method Post -body $body -ContentType 'application/json'






