plugin.onEnable(function()
    logger.info("[Lukkit-Example-Plugin] Enabling Hello Player v1.0.0!")
end)

plugin.onDisable(function()
    logger.info("[Lukkit-Example-Plugin] Disable Hello Player v1.0.0!")
end)

plugin.addCommand("hello", {name="hello", description="Says hello to you (the player)"}, function(cmd)
    -- Save the sender to a variable so we don't have to call cmd.getSender() multiple times
    local sender = cmd.getSender()
    sender.sendMessage("Hello", sender.getName())
end)
