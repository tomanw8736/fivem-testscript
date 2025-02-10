-----------------------------------
--         My First Script
-----------------------------------


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