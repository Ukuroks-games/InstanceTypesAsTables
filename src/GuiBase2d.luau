local Instance = require(script.Parent.Instance)

--[[
	`GuiBase2d` is an abstract class inherited by 2D `GuiObject`s.
]]
export type GuiBase2d = {
	--[[
		Describes the actual screen position of a `GuiBase2d` element, in pixels.

		AbsolutePosition is a read-only property that provides the screen position of a `GuiBase2d` element in pixels. This represents the actual pixel position at which an element renders as a result of its ancestors' sizes and positions. Note that AbsolutePosition always represents the top-left corner of the `GuiBase2d` element.

		If the `GuiBase2d` is in a `ScreenGui`, the AbsolutePosition property uses the `CoreUISafeInsets` viewport coordinate system. The origin of this coordinate system is located at the bottom-left corner of the Roblox top bar. Note that this is the same coordinate system used by the `InputObject.Position` property.
	]]
	AbsolutePosition: Vector2,

	--[[
		Describes the actual screen rotation of a `GuiBase2d` element, in degrees.
	]]
	AbsoluteRotation: number,

	--[[
		Describes the actual screen size of a `GuiBase2d` element, in pixels.
	]]
	AbsoluteSize: Vector2,

	--[[
		When set to true, localization will be applied to this `GuiBase2d` and its descendants.
	]]
	AutoLocalize: boolean,

	--[[
		A reference to a `LocalizationTable` to be used to apply automated localization to this `GuiBase2d` and its descendants.
	]]
	RootLocalizationTable: LocalizationTable,

	--[[
		Customizes gamepad selection behavior in the down direction.
	]]
	SelectionBehaviorDown: Enum.SelectionBehavior,

	--[[
		Customizes gamepad selection behavior in the left direction.
	]]
	SelectionBehaviorLeft: Enum.SelectionBehavior,

	--[[
		Customizes gamepad selection behavior in the right direction.
	]]
	SelectionBehaviorRight: Enum.SelectionBehavior,

	--[[
		Customizes gamepad selection behavior in the up direction.
	]]
	SelectionBehaviorUp: Enum.SelectionBehavior,

	--[[
		Allows customization of gamepad selection movement.
	]]
	SelectionGroup: boolean,

	--[[
		Fires when the gamepad selection moves to, leaves, or changes within the connected `GuiBase2d` or any descendant `GuiObjects`.
	]]
	SelectionChanged: RBXScriptSignal,
} & Instance.Instance

return {}
