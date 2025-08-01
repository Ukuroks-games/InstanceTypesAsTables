local Object = require(script.Parent.Object)

--[[
	Instance is the base class for all classes in the Roblox class hierarchy which can be part of the DataModel tree.

	It is not possible to directly create root Instance objects, but the special `Instance.new()` constructor creates objects via code, taking the name of the class as a parameter and returning the created object.
]]
export type Instance = {
	--[[
		Determines if an Instance and its descendants can be cloned using `Instance:Clone()`, and can be saved/published.
	]]
	Archivable: boolean,

	--[[
		The set of capabilities allowed to be used for scripts inside this container.
	]]
	Capabilities: any, --SecurityCapabilities

	--[[
		A non-unique identifier of the Instance.
	]]
	Name: string,

	--[[
		Determines the hierarchical parent of the Instance.
	]]
	Parent: Instance,

	--[[
		Turns the instance to be a sandboxed container.
	]]
	Sandboxed: boolean,

	--[[
		
	]]
	RobloxLocked: boolean,

	--[[
		A unique identifier for the instance.
	]]
	UniqueId: any,

	--[[
		Applies a tag to the instance.
	]]
	AddTag: (tag: string) -> (),

	--[[
		This function destroys all of an instance's children.
	]]
	ClearAllChildren: () -> (),

	--[[
		Create a copy of an instance and all its descendants, ignoring instances that are not Archivable.
	]]
	Clone: () -> Instance,

	--[[
		Sets the `Instance.Parent` property to nil, locks the `Instance.Parent` property, disconnects all connections, and calls `Destroy()` on all children.
	]]
	Destroy: () -> (),

	--[[
		Returns the first ancestor of the Instance whose Instance.Name is equal to the given name.
	]]
	FindFirstAncestor: (name: string) -> Instance,

	--[[
		Returns the first ancestor of the Instance whose `Object.ClassName` is equal to the given className.
	]]
	FindFirstAncestorOfClass: (className: string) -> Instance,

	--[[
		Returns the first ancestor of the Instance for whom `Object:IsA()` returns true for the given className.
	]]
	FindFirstAncestorWhichIsA: (className: string) -> Instance,

	--[[
		Returns the first descendant found with the given Instance.Name.
	]]
	FindFirstDescendant: (name: string) -> Instance,

	--[[
		Returns the Actor associated with the Instance, if any.
	]]
	GetActor: () -> Actor,

	--[[
		Returns the value which has been assigned to the given attribute name.
	]]
	GetAttribute: (attribute: string) -> any,

	--[[
		Returns an event that fires when the given attribute changes.
	]]
	GetAttributeChangedSignal: (attribute: string) -> RBXScriptSignal,

	--[[
		Returns a dictionary of the instance's attributes.
	]]
	GetAttributes: () -> any,

	--[[
		Returns an array containing all of the instance's children.
	]]
	GetChildren: () -> { Instance },

	--[[
		Returns a coded string of the debug ID used internally by Roblox.
	]]
	GetDebugId: (scopeLength: number) -> string,

	--[[
		Returns an array containing all of the descendants of the instance.
	]]
	GetDescendants: () -> { Instance },

	--[[
		Returns a string describing the instance's ancestry.
	]]
	GetFullName: () -> string,

	--[[
		Returns the styled or explicitly modified value of the specified property, or else the default property value if it hasn't been styled/modified.
	]]
	GetStyled: (name: string) -> any,

	GetStyledPropertyChangedSignal: (property: string) -> RBXScriptSignal,

	--[[
		Gets an array of all tags applied to the instance.
	]]
	GetTags: () -> {},

	--[[
		Check whether the instance has a given tag.
	]]
	HasTag: (tag: string) -> boolean,

	--[[
		Returns true if an Instance is an ancestor of the given descendant.
	]]
	IsAncestorOf: (descendant: Instance) -> boolean,

	--[[
		Returns true if an Instance is a descendant of the given ancestor.
	]]
	IsDescendantOf: (ancestor: Instance) -> boolean,

	--[[
		Returns true if the value stored in the specified property is equal to the code-instantiated default.
	]]
	IsPropertyModified: (property: string) -> boolean,

	--[[
		Removes a tag from the instance.
	]]
	RemoveTag: (tag: string) -> (),

	--[[
		Resets a property to its default value.
	]]
	ResetPropertyToDefault: (property: string) -> (),

	--[[
		Sets the attribute with the given name to the given value.
	]]
	SetAttribute: (attribute: string, value: any) -> (),

	--[[
		Returns the child of the Instance with the given name. If the child does not exist, it will yield the current thread until it does.
	]]
	WaitForChild: (childName: string, timeOut: number) -> Instance,

	--[[
		Fires when the `Instance.Parent` property of the object or one of its ancestors is changed.
	]]
	AncestryChanged: RBXScriptSignal,

	--[[
		Fires whenever an attribute is changed on the `Instance`.
	]]
	AttributeChanged: RBXScriptSignal,

	--[[
		Fires after an object is parented to this `Instance`.
	]]
	ChildAdded: RBXScriptSignal,

	--[[
		Fires after a child is removed from this `Instance`.
	]]
	ChildRemoved: RBXScriptSignal,

	--[[
		Fires after a descendant is added to the `Instance`.
	]]
	DescendantAdded: RBXScriptSignal,

	--[[
		Fires immediately before a descendant of the `Instance` is removed.
	]]
	DescendantRemoving: RBXScriptSignal,

	--[[
		Fires immediately before (or is deferred until after) the instance is destroyed via `Instance:Destroy()`.
	]]
	Destroying: RBXScriptSignal,

	--[[
		Fires whenever any style property is changed on the instance, including when a property is set to `nil`.
	]]
	StyledPropertiesChanged: RBXScriptSignal,
} & Object.Object

return {}
