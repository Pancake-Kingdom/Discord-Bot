local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    local channel = client:getChannel('--')
    local connection = channel:join()
    connection:playFFmpeg('music.mp3')
    print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == 'Moin' then
        message.channel:send('Moin!')
    end
end)

client:on('messageCreate', function(message)
    if message.content == 'Hallo' then
        message.channel:send('Hallo!')
    end
end)

client:run('Bot Token')
