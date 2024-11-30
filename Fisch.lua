local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fisch 🐟",
    SubTitle = "by sharkped",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Teleport = Window:AddTab({ Title = "Main", Icon = "" }),
}

Fluent:Notify({
    Title = "Notification",
    Content = "This is a notification",
    SubContent = "SubContent",
    Duration = 5
})

local Dropdown = Tabs.Teleport:AddDropdown("Fragment", {
    Title = "Select Fragment",
    Values = {
        "Ancient Fragment", "Deep Sea Fragment", "Solar Fragment", "Earth Fragment"
    },
    Multi = false,
    Default = nil,
    Callback = function(Value)
        if Value == "Ancient Fragment" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6071.91406, 443.94577, 682.345703)
        elseif Value == "Deep Sea Fragment" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5839.47461, 79.3256454, 384.392517)
        elseif Value == "Solar Fragment" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5802.97705, 135.301514, 404.60788)
        elseif Value == "Earth Fragment" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5968.96582, 272.507874, 848.696899)
        end
    end
})

InterfaceManager:SetLibrary(Fluent)
Window:SelectTab(1)

