local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
  local channel = client:getChannel('xxx')
  local connection = channel:join()
	print('Logged in as '.. client.user.username)
end)

client:run('Bot Token')
