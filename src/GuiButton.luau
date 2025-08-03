local GuiObject = require(script.Parent.GuiObject)

--[[
	`GuiButton` is an abstract class that inherits from `GuiObject`. It is the base class for the interactive, clickable `ImageButton` and `TextButton` objects. This class also defines several properties for interactive behavior, namely `AutoButtonColor` and `Modal`.

	The most important event of a GuiButton is `Activated`, a multi-platform event that fires when the button is activated. When using a mouse, this means clicking the button and releasing with the cursor still over the UI object. For touch, the same applies but with a touch instead of button press. Finally, for gamepads, Activated fires if a GuiButton is selected when the A button is pressed and released. In short, this event is very useful for multi-platform user interface programming as it provides a nice general interface for a single user input.
]]
export type GuiButton = {
	--[[
		Determines whether the button automatically changes color when the mouse hovers over or clicks on it.
	]]
	AutoButtonColor: boolean,

	--[[
		A HapticEffect instance that will play when the GuiButton is being hovered.
	]]
	HoverHapticEffect: HapticEffect,
	Modal: boolean,
	PressHapticEffect: HapticEffect,
	Selected: boolean,
	Style: Enum.ButtonStyle,
} & GuiObject.GuiObject

return {}
