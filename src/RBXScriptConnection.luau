--[[
	The RBXScriptConnection data type is a special object returned by the Connect() method of an event (RBXScriptSignal). This is used primarily to disconnect a listener from an RBXScriptSignal.
]]
export type RBXScriptConnection = {
	--[[
		The state of the RBXScriptConnection.
	]]
	Connected: boolean,

	--[[
		The state of the RBXScriptConnection.
	]]
	Disconnect: () -> (),
}

return {}
