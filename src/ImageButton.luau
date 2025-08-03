local GuiButton = require(script.Parent.GuiButton)
local GuiImage = require(script.Parent.GuiImage)

--[[
	An `ImageButton` behaves similarly to an `ImageLabel` in regards to rendering, with the additional behaviors of a `GuiButton`.
]]
export type ImageButton = GuiImage.GuiImage & GuiButton.GuiButton

return {}
