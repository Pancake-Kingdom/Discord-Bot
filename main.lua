local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    local channel = client:getChannel('--')
    local connection = channel:join()
    connection:playFFmpeg('music.mp3')
    print('Logged in as '.. client.user.username)
end)

client:run('Bot Token')
