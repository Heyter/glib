if GLib.Stage2 then return end
GLib.Stage2 = true

include ("bitconverter.lua")

include ("colors.lua")

include ("coroutine.lua")
include ("glue.lua")

include ("memoryusagereport.lua")
include ("stringtable.lua")

-- IO
include ("io/inbuffer.lua")
include ("io/outbuffer.lua")
include ("io/stringinbuffer.lua")
include ("io/stringoutbuffer.lua")

-- Threading
GLib.Threading = {}
include ("threading/iwaitable.lua")
include ("threading/waitendreason.lua")

include ("threading/threading.lua")
include ("threading/threadstate.lua")
include ("threading/thread.lua")
include ("threading/mainthread.lua")
include ("threading/threadrunner.lua")

-- Serialization
GLib.Serialization = {}
include ("serialization/iserializable.lua")
include ("serialization/serializationinfo.lua")
include ("serialization/customserializationinfo.lua")
include ("serialization/serializableregistry.lua")
include ("serialization/serialization.lua")

-- Lua
GLib.Lua = {}
include ("lua/lua.lua")
include ("lua/sessionvariables.lua")
include ("lua/backup.lua")
include ("lua/detours.lua")

include ("lua/namecache.lua")

-- Lua Reflection
include ("lua/reflection/function.lua")
include ("lua/reflection/functioncache.lua")
include ("lua/reflection/parameter.lua")
include ("lua/reflection/parameterlist.lua")
include ("lua/reflection/argumentlist.lua")

include ("lua/reflection/stackframe.lua")
include ("lua/reflection/stacktrace.lua")
include ("lua/reflection/stacktracecache.lua")
include ("lua/reflection/stackcaptureoptions.lua")

include ("lua/reflection/variableframe.lua")
include ("lua/reflection/localvariableframe.lua")
include ("lua/reflection/upvalueframe.lua")

function GLib.StackTrace (levels, frameOffset)
	frameOffset = frameOffset or 0
	frameOffset = frameOffset + 1
	return GLib.Lua.StackTrace (levels, frameOffset, GLib.Lua.StackCaptureOptions.Arguments):ToString ()
end

-- Lua Bytecode Decompiler
include ("lua/decompiler/garbagecollectedconstanttype.lua")
include ("lua/decompiler/garbagecollectedconstant.lua")
include ("lua/decompiler/functionconstant.lua")
include ("lua/decompiler/tableconstant.lua")
include ("lua/decompiler/stringconstant.lua")

include ("lua/decompiler/tablekeyvaluetype.lua")

include ("lua/decompiler/operandtype.lua")
include ("lua/decompiler/opcodeinfo.lua")
include ("lua/decompiler/opcodes.lua")
include ("lua/decompiler/opcode.lua")
include ("lua/decompiler/precedence.lua")
include ("lua/decompiler/instruction.lua")
include ("lua/decompiler/loadstore.lua")
include ("lua/decompiler/framevariable.lua")
include ("lua/decompiler/functionbytecodereader.lua")
include ("lua/decompiler/bytecodereader.lua")

-- Unicode
include ("unicode/unicodecategory.lua")
include ("unicode/wordtype.lua")
include ("unicode/utf8.lua")
include ("unicode/unicode.lua")
include ("unicode/unicodecategorytable.lua")
include ("unicode/transliteration.lua")

-- Formatting
include ("formatting/date.lua")
include ("formatting/tableformatter.lua")

-- Servers
include ("servers/iserver.lua")
include ("servers/iuserlist.lua")
include ("servers/iplayermonitor.lua")
include ("servers/playermonitorproxy.lua")
include ("garrysmod/servers/playermonitorentry.lua")
include ("garrysmod/servers/playermonitor.lua")

-- Networking
GLib.Networking = {}
include ("networking/networkable.lua")
include ("networking/networkablestate.lua")
include ("networking/networkablecontainer.lua")
include ("networking/networkablehost.lua")
include ("networking/subscriberset.lua")

-- Containers
GLib.Containers = {}
include ("containers/binarytree.lua")
include ("containers/binarytreenode.lua")
include ("containers/linkedlist.lua")
include ("containers/linkedlistnode.lua")
include ("containers/list.lua")
include ("containers/orderedset.lua")
include ("containers/queue.lua")
include ("containers/stack.lua")
include ("containers/tree.lua")

-- Networking Containers
include ("containers/networkable/list.lua")

-- Networking
GLib.Net = {}
include ("net/net.lua")
include ("net/datatype.lua")
include ("net/inbuffer.lua")
include ("net/outbuffer.lua")
include ("garrysmod/net/net.lua")

-- Physical layer
GLib.Net.Layer1 = {}
include ("net/layer1/channel.lua")
include ("garrysmod/net/layer1/usermessagechannel.lua")
include ("garrysmod/net/layer1/usermessagedispatcher.lua")
include ("garrysmod/net/layer1/usermessageinbuffer.lua")
include ("garrysmod/net/layer1/pinnedusermessageinbuffer.lua")
include ("garrysmod/net/layer1/netchannel.lua")
include ("garrysmod/net/layer1/netdispatcher.lua")
include ("garrysmod/net/layer1/netinbuffer.lua")

-- Unlimited packet lengths and queueing for closed channels
GLib.Net.Layer2 = {}
include ("net/layer2/channel.lua")
include ("net/layer2/splitpacketchannel.lua")
include ("net/layer2/splitpackettype.lua")
include ("net/layer2/inboundsplitpacket.lua")
include ("net/layer2/outboundsplitpacket.lua")
include ("garrysmod/net/layer2/channel.lua")
include ("garrysmod/net/layer2/layer2.lua")
include ("garrysmod/net/layer2/channelstatenetworker.lua")

-- Network layer
GLib.Net.Layer3 = {}

-- Session layer
GLib.Net.Layer5 = {}
include ("net/layer5/connectionchannel.lua")
include ("net/layer5/connection.lua")
include ("net/layer5/connectionclosurereason.lua")
include ("net/layer5/connectionpackettype.lua")
include ("net/layer5/connectionstate.lua")

include ("protocol/protocol.lua")
include ("protocol/channel.lua")
include ("protocol/endpoint.lua")
include ("protocol/endpointmanager.lua")
include ("protocol/session.lua")

-- Math
include ("math/complex.lua")
include ("math/polynomial.lua")

include ("math/matrix.lua")
include ("math/vector.lua")
include ("math/columnvector.lua")
include ("math/rowvector.lua")

include ("math/vmatrix.lua")

-- Geometry
GLib.Geometry = {}
include ("geometry/parametricgeometry.lua")
include ("geometry/iparametriccurve.lua")
include ("geometry/iparametricsurface.lua")
include ("geometry/bezierspline.lua")
include ("geometry/quadraticbezierspline.lua")
include ("geometry/cubicbezierspline.lua")
include ("geometry/parametriccurverenderer.lua")

-- Interfaces
GLib.Interfaces = {}
include ("interfaces/interfaces.lua")

-- Rendering
GLib.Rendering = {}
include ("rendering/igraphicsdevice.lua")
include ("rendering/igraphicsview.lua")
include ("rendering/irendercontext.lua")
include ("rendering/ibaserendercontext2d.lua")
include ("rendering/irendercontext2d.lua")
include ("rendering/irendercontext2d2.lua")
include ("rendering/irendercontext3d.lua")
include ("rendering/matrixpushoperation.lua")

-- Buffers
GLib.Rendering.Buffers = {}
include ("rendering/buffers/bufferelementsemantic.lua")
include ("rendering/buffers/bufferelementtype.lua")
include ("rendering/buffers/bufferelementtypes.lua")
include ("rendering/buffers/bufferelement.lua")
include ("rendering/buffers/bufferlayout.lua")
include ("rendering/buffers/bufferflags.lua")

include ("rendering/buffers/igraphicsbuffer.lua")
include ("rendering/buffers/iindexbuffer.lua")
include ("rendering/buffers/ivertexbuffer.lua")

-- Matrices
GLib.Rendering.Matrices = {}
include ("rendering/matrices/imatrixstack.lua")
include ("rendering/matrices/matrixstack.lua")
include ("rendering/matrices/projections.lua")

-- Meshes
GLib.Rendering.Meshes = {}
include ("rendering/meshes/meshflags.lua")
include ("rendering/meshes/primitivetopology.lua")
include ("rendering/meshes/rendergroup.lua")
include ("rendering/meshes/imesh.lua")
include ("rendering/meshes/mesh.lua")

-- Textures
GLib.Rendering.Textures = {}
include ("rendering/textures/pixelformat.lua")
include ("rendering/textures/itexture2d.lua")

-- Addons
include ("addons.lua")

GLib.CallDelayed (
	function ()
		hook.Call ("GLibSystemLoaded", GAMEMODE or GM, "GLibStage2")
		hook.Call ("GLibStage2Loaded", GAMEMODE or GM)
	end
)