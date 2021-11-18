local ESPLibrary = loadstring(Game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/ESPLibrary.lua"))()
local Workspace = game:GetService("Workspace")
local NPCFolder = Workspace.WORKSPACE_Entities.NPCs
local AnimalFolder = Workspace.WORKSPACE_Entities.Animals

for Index, Animal in pairs(AnimalFolder:GetChildren()) do
    if Animal.Name == "Wendigo" then
        ESPLibrary.Add(Animal.Name, Animal)
    end
end
AnimalFolder.ChildAdded:Connect(function(Animal)
    if Animal.Name == "Wendigo" then
        ESPLibrary.Add(Animal.Name, Animal)
    end
end)
AnimalFolder.ChildRemoved:Connect(function(Animal)
    if Animal.Name == "Wendigo" then
        ESPLibrary.Remove(Animal)
    end
end)