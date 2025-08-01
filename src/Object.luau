--[[
	Object is the base class for all classes in the Roblox class hierarchy. Every other class that the Roblox Engine defines inherits all of the members of Object. It is not possible to directly create Object.
]]
export type Object = {
	--[[
		A read-only string representing the class this Object belongs to.
	]]
	ClassName: string,

	--[[
		Get an event that fires when a given property of the object changes.
	]]
	GetPropertyChangedSignal: (property: string) -> RBXScriptSignal,

	--[[
		Returns true if an object's class matches or inherits from a given class.
	]]
	IsA: (className: string) -> boolean,

	Changed: RBXScriptSignal,
}

return {}
