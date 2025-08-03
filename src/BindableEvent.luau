local Instance = require(script.Parent.Instance)

--[[
	The `BindableEvent` object enables custom events through asynchronous one-way communication between scripts on the same side of the [client-server](https://create.roblox.com/docs/projects/client-server) boundary. When you fire a `BindableEvent` through the `BindableEvent:Fire()` method, the firing script does not yield and the target function receives the passed arguments with certain limitations. BindableEvents create threads of each connected function, so even if one firing errors, others continue.

	As an alternative for two-way communication between two scripts on the same side of the client-server boundary, consider BindableFunction.

	As stated, BindableEvents do not allow for communication between the server and clients. If you are looking for this functionality, use a RemoteEvent as outlined in Remote Events and Callbacks.

	See Bindable events and callbacks for code samples and further details on `BindableEvent`.
	Parameter Limitations

	Any type of Roblox object such as an Enum, Instance, or others can be passed as a parameter when a BindableEvent is fired, as well as Luau types such as numbers, strings, and booleans, although you should carefully explore the [limitations](https://create.roblox.com/docs/scripting/events/bindable#argument-limitations).
]]
export type BinableEvent<T> = {
	Fire: (...T) -> (),
	Event: RBXScriptSignal,
} & Instance.Instance
