local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Gemini Private", HidePremium = false, SaveConfig = false})
local Tab = Window:MakeTab({Name = "Trolls", Icon = "rbxassetid://4483345998"})

Tab:AddButton({
    Name = "🌌 Ativar /abismo",
    Callback = function()
        game.StarterGui:SetCore("SendNotification", {Title = "Gemini", Text = "Use /abismo nome no chat"})
    end
})

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local args = string.split(msg:lower(), " ")
    if args[1] == "/abismo" and args[2] then
        for _, p in pairs(game.Players:GetPlayers()) do
            if p.Name:lower():find(args[2]) then
                for i = 1, 20 do
                    p.Character:PivotTo(CFrame.new(9999, -500, 9999))
                    task.wait()
                end
            end
        end
    end
end)
