function wait(ticks, func)

    if type(func) ~= 'function' then
        func =function() end -- defaults to empty if not provided.
    end
    
    local tick = 0

    events.TICK:register(function()
        tick = tick + 1
        if tick == ticks then
            func()
        end
    end)
end