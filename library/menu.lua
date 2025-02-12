-------------------------
---      💻 Menus     ---
-------------------------

Menu = {}
Menu.__index = Menu

function Menu:new(id, name, position, options)
    lib.registerMenu({
        id = id,
        title = name,
        position = position or 'top-right',
        onSideScroll = function(selected, scrollIndex, args)
            print('Scroll: ', selected, scrollIndex, args)
        end,
        onSelected = function(selected, secondary, args)
            if not secondary then
                print('Normal Button')
            else
                if args.isCheck then
                    print('Check Button')
                end

                if args.isScroll then
                    print('Scroll Button')
                end
            end
            print(selected, secondary, json.encode(args, {indent = true}))
        end,
        onCheck = function(selected, checked, args)
            print('Check: ', selected, checked, args)
        end,
        onClose = function(keyPressed)
            print('Menu Closed')
            if keyPressed then
                print(('Pressed %s to close the menu'):format(keyPressed))
            end
        end,
        options = options
        -- Example:
        -- {label = 'Simple button', description = 'It has a description!'},
        -- {label = 'Checkbox button', checked = true},
        -- {label = 'Scroll button with icon', icon = 'arrows-up-down-left-right', values={'hello', 'there'}},
        -- {label = 'Button with args', args = {someArg = 'nice_button'}},
        -- {label = 'List button', values = {'You', 'can', 'side', 'scroll', 'this'}, description = 'It also has a description!'},
        -- {label = 'List button with default index', values = {'You', 'can', 'side', 'scroll', 'this'}, defaultIndex = 5},
        -- {label = 'List button with args', values = {'You', 'can', 'side', 'scroll', 'this'}, args = {someValue = 3, otherValue = 'value'}},


    }, function(selected, scrollIndex, args)
        print(selected, scrollIndex, args)
    end)
end

return Menu


