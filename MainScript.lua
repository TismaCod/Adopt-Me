local taskModule = require(game.ServerScriptService:WaitForChild("TaskModule"))
local guiModule = require(game.ServerScriptService:WaitForChild("GuiModule"))

local playerGui = guiModule.getPlayerGui()
local taskContainerPlayer, taskContainerPet = guiModule.getTaskContainers(playerGui)

local playerTasks = taskModule.getTasks(taskContainerPlayer)
local petTasks = taskModule.getTasks(taskContainerPet)

print("Tâches du joueur :", table.concat(playerTasks, ", "))
print("Tâches du pet :", table.concat(petTasks, ", "))
