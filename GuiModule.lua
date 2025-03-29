local function getPlayerGui()
    local player = game:GetService("Players").LocalPlayer
    return player:FindFirstChild("PlayerGui")
end

local function getTaskContainers(playerGui)
    local taskContainerPlayer = playerGui and playerGui:FindFirstChild("ailments_list") and playerGui.ailments_list:FindFirstChild("SurfaceGui") and playerGui.ailments_list.SurfaceGui:FindFirstChild("Container")
    local taskContainerPet = playerGui and playerGui:GetChildren()[102] and playerGui:GetChildren()[102]:FindFirstChild("SurfaceGui") and playerGui:GetChildren()[102].SurfaceGui:FindFirstChild("Container")
    return taskContainerPlayer, taskContainerPet
end

return {
    getPlayerGui = getPlayerGui,
    getTaskContainers = getTaskContainers
}
