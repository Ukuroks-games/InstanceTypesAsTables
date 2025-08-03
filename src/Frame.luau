local GuiObject = require(script.Parent.GuiObject)

--[[
	`Frame` is a `GuiObject` that acts as a container for other GuiObjects. You can use it for UI that either displays on a user's screen or on a surface within the experience.
]]
export type Frame = {
	--[[
		Sets what the frame looks like from a selection of pre-determined styles.
	]]
	Style: Enum.FrameStyle,
} & GuiObject.GuiObject

return {}
