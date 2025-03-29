local taskList = {
    ["rbxassetid://18861586659"] = "Drink",
    ["rbxassetid://18861598641"] = "Sleep",
    ["rbxassetid://18861597514"] = "Shower",
    ["rbxassetid://18861587647"] = "Food",
    ["rbxassetid://18861579446"] = "Beach",
    ["rbxassetid://18861601959"] = "Toilet",
    ["rbxassetid://18861603059"] = "Walk",
    ["rbxassetid://18861591842"] = "Pizza",
    ["rbxassetid://18861596457"] = "Barber",
    ["rbxassetid://18861582601"] = "Car",
    ["rbxassetid://18861599789"] = "Slide"
}

local function getTasks(container)
    if not container then
        return {}
    end

    local foundTasks = {}

    for _, taskFrame in pairs(container:GetChildren()) do
        if taskFrame and taskFrame:FindFirstChild("Background") and taskFrame.Background:FindFirstChild("Icon") then
            local taskIcon = taskFrame.Background.Icon.Image
            if taskList[taskIcon] then
                table.insert(foundTasks, taskList[taskIcon])
            end
        end
    end

    return foundTasks
end

return {
    taskList = taskList,
    getTasks = getTasks
}
