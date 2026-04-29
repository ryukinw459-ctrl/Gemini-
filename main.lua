local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Gemini Cloud ♊", HidePremium = false, SaveConfig = false})
local Tab = Window:MakeTab({Name = "Comandos", Icon = "rbxassetid://4483345998"})

Tab:AddButton({
    Name = "🌌 Ativar Abismo (/abismo nome)",
    Callback = function()
        game.StarterGui:SetCore("SendNotification", {Title = "Gemini", Text = "Usa o chat agora!"})
    end
})

game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local args = string.split(msg:lower(), " ")
    if args[1] == "/abismo" and args[2] then
        for _, p in pairs(game.Players:GetPlayers()) do
            if p.Name:lower():find(args[2]) and p.Character then
                p.Character:PivotTo(CFrame.new(9999, -500, 9999))
            end
        end
    end
end)
