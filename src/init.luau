local Frame = require(script.Frame)
local GuiBase2d = require(script.GuiBase2d)
local GuiObject = require(script.GuiObject)
local ImageLabel = require(script.ImageLabel)
local Instance = require(script.Instance)
local Object = require(script.Object)
local RBXScriptConnection = require(script.RBXScriptConnection)
local RBXScriptSignal = require(script.RBXScriptSignal)

export type Object = Object.Object
export type Instance = Instance.Instance
export type GuiBase2d = GuiBase2d.GuiBase2d
export type GuiObject = GuiObject.GuiObject
export type Frame = Frame.Frame
export type ImageLabel = ImageLabel.ImageLabel

export type RBXScriptConnection = RBXScriptConnection.RBXScriptConnection
export type RBXScriptSignal<T> = RBXScriptSignal.RBXScriptSignal<T>

return {}
