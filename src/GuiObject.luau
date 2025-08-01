local GuiBase2d = require(script.Parent.GuiBase2d)

--[[


	GuiObject is an abstract class (much like BasePart) for a 2D user interface object. It defines all the properties relating to the display of a graphical user interface (GUI) object such as Size and Position. It also has some useful read‑only properties like AbsolutePosition, AbsoluteSize, and AbsoluteRotation.

	To manipulate the layout of GUI objects in special ways, you can use a layout structure such as list/flex or grid, and you can style them beyond their core properties through appearance modifiers.

	Although it's possible to detect mouse button events on any GUI object using InputBegan and InputEnded, only ImageButton and TextButton have convenient dedicated events such as Activated to detect click/press.
]]
export type GuiObject = {
	--[[
		Determines whether this UI element sinks input.
	]]
	Active: boolean,

	--[[
		Determines the origin point of a GuiObject, relative to its absolute size.
	]]
	AnchorPoint: Vector2,

	--[[
		Determines whether resizing occurs based on child content.
	]]
	AutomaticSize: Enum.AutomaticSize,

	--[[
		Determines the GuiObject background color.
	]]
	BackgroundColor3: Color3,

	--[[
		
	]]
	BackgroundTransparency: number,

	BorderColor3: Color3,

	BorderMode: Enum.BorderMode,

	BorderSizePixel: number,

	ClipsDescendants: boolean,

	GuiState: Enum.GuiState,

	Interactable: boolean,

	LayoutOrder: number,

	NextSelectionDown: GuiObject,

	NextSelectionLeft: GuiObject,

	NextSelectionRight: GuiObject,

	NextSelectionUp: GuiObject,

	Position: UDim2,

	Rotation: number,

	Selectable: boolean,

	SelectionImageObject: GuiObject,

	SelectionOrder: number,

	Size: UDim2,

	SizeConstraint: Enum.SizeConstraint,

	Transparency: number,

	Visible: boolean,

	ZIndex: number,

	AbsolutePosition: Vector2,

	AbsoluteRotation: number,

	AbsoluteSize: Vector2,

	AutoLocalize: boolean,

	RootLocalizationTable: LocalizationTable,

	SelectionBehaviorDown: Enum.SelectionBehavior,

	SelectionBehaviorLeft: Enum.SelectionBehavior,

	SelectionBehaviorRight: Enum.SelectionBehavior,

	SelectionBehaviorUp: Enum.SelectionBehavior,

	SelectionGroup: boolean,

	TweenPosition: (
		endPosition: UDim2,
		easingDirection: Enum.EasingDirection,
		easingStyle: Enum.EasingStyle,
		time: number,
		override: boolean,
		callback: () -> any
	) -> boolean,

	TweenSize: (
		endSize: UDim2,
		easingDirection: Enum.EasingDirection,
		easingStyle: Enum.EasingStyle,
		time: number,
		override: boolean,
		callback: () -> any
	) -> boolean,

	TweenSizeAndPosition: (
		endSize: UDim2,
		endPosition: UDim2,
		easingDirection: Enum.EasingDirection,
		easingStyle: Enum.EasingStyle,
		time: number,
		override: boolean,
		callback: () -> any
	) -> boolean,

	InputBegan: RBXScriptSignal,

	InputChanged: RBXScriptSignal,

	InputEnded: RBXScriptSignal,

	MouseEnter: RBXScriptSignal,

	MouseLeave: RBXScriptSignal,

	MouseMoved: RBXScriptSignal,

	MouseWheelBackward: RBXScriptSignal,

	MouseWheelForward: RBXScriptSignal,

	SelectionGained: RBXScriptSignal,

	SelectionLost: RBXScriptSignal,

	TouchLongPress: RBXScriptSignal,

	TouchPan: RBXScriptSignal,

	TouchPinch: RBXScriptSignal,

	TouchRotate: RBXScriptSignal,

	TouchSwipe: RBXScriptSignal,

	TouchTap: RBXScriptSignal,

	SelectionChanged: RBXScriptSignal,
} & GuiBase2d.GuiBase2d

return {}
