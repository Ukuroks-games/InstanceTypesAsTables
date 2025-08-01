--[[
	The `RBXScriptSignal` data type, more commonly known as an Event, provides a way for user-defined functions, called listeners, to call when something happens in the game. When an event happens, the RBXScriptSignal fires and calls any listeners that are connected to it. An RBXScriptSignal may also pass arguments to each listener to provide extra information about the event.
]]
export type RBXScriptSignal<T> = {
	--[[
		Connects the given function to the event and returns an `RBXScriptConnection` that represents it.

		Establishes a function to be called when the event fires. Returns an RBXScriptConnection object associated with the connection.
	]]
	Connect: (func: T) -> RBXScriptConnection,

	--[[
		Connects the given function to the event and returns an `RBXScriptConnection` that represents it.

		Establishes a function to be called when the event fires. Returns an `RBXScriptConnection` object associated with the connection. When the event fires, the signal callback is executed in a desynchronized state. Using `ConnectParallel` is similar to, but more efficient than, using Connect followed by a call to `task.desynchronize()` in the signal handler.

		> Note: Scripts that connect in parallel must be rooted under an Actor.
	]]
	ConnectParallel: (func: T) -> RBXScriptConnection,

	--[[
		Connects the given function to the event (for a single invocation) and returns an `RBXScriptConnection` that represents it.

		Establishes a function to be called when the event fires. Returns an `RBXScriptConnection` object associated with the connection. The behavior of `Once` is similar to `Connect`. However, instead of allowing multiple events to be received by the specified function, only the first event will be delivered. Using `Once` also ensures that the connection to the function will be automatically disconnected prior the function being called.
	]]
	Once: (func: T) -> RBXScriptConnection,

	--[[
		Yields the current thread until the signal fires and returns the arguments provided by the signal.
	]]
	Wait: () -> any,
}

return {}
