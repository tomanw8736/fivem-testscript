-----------------------------------
--         My First Script
-----------------------------------

--local lib = exports['ox_lib']:getLib()
local mMenu = require('library.menu')

mMenu:new('test_menu', 'Test Menu', 'top-right', {label = 'Test', description = 'Description'})

RegisterCommand('send_notify', function(source, args)
    -- send the notification through ox_lib
    lib.notify({
        title = args[1] or '',
        description = args[2] or '',
        type = 'success'
    })

    -- send a message in the chat to indicate that the notification has been sent
    TriggerEvent('chat:addMessage', {
        args = { 'Notification sent!' }
    })
end, false)

RegisterCommand('test_menu', function()
    lib.showMenu('test_menu')
end)


