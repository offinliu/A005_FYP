<?xml version="1.0"?><doc>
<members>
<member name="T:dynamixel.PortHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="54">
@brief The class for port control that inherits PortHandlerLinux, PortHandlerWindows, PortHandlerMac, or PortHandlerArduino
</member>
<member name="M:dynamixel.PortHandler.getPortHandler(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="62">
@brief The function that gets PortHandler class inheritance
@description The function gets class inheritance (PortHandlerLinux / PortHandlerWindows / PortHandlerMac / PortHandlerArduino.
</member>
<member name="M:dynamixel.PortHandler.openPort" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="72">
@brief The function that opens the port
@description The function calls PortHandlerLinux::setBaudRate() to open the port.
@return communication results which come from PortHandlerLinux::setBaudRate()
</member>
<member name="M:dynamixel.PortHandler.closePort" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="79">
@brief The function that closes the port
@description The function closes the port.
</member>
<member name="M:dynamixel.PortHandler.clearPort" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="85">
@brief The function that clears the port
@description The function clears the port.
</member>
<member name="M:dynamixel.PortHandler.setPortName(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="91">
@brief The function that sets port name into the port handler
@description The function sets port name into the port handler.
@param port_name Port name
</member>
<member name="M:dynamixel.PortHandler.getPortName" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="98">
@brief The function that returns port name set into the port handler
@description The function returns current port name set into the port handler.
@return Port name
</member>
<member name="M:dynamixel.PortHandler.setBaudRate(System.Int32!System.Runtime.CompilerServices.IsConst)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="105">
@brief The function that sets baudrate into the port handler
@description The function sets baudrate into the port handler.
@param baudrate Baudrate
@return false
@return   when error was occurred during port opening
@return or true
</member>
<member name="M:dynamixel.PortHandler.getBaudRate" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="115">
@brief The function that returns current baudrate set into the port handler
@description The function returns current baudrate set into the port handler.
@return Baudrate
</member>
<member name="M:dynamixel.PortHandler.getBytesAvailable" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="122">
@brief The function that checks how much bytes are able to be read from the port buffer
@description The function checks how much bytes are able to be read from the port buffer
@description and returns the number.
@return Length of read-able bytes in the port buffer
</member>
<member name="M:dynamixel.PortHandler.readPort(System.Byte*,System.Int32)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="130">
@brief The function that reads bytes from the port buffer
@description The function gets bytes from the port buffer,
@description and returns a number of bytes read.
@param packet Buffer for the packet received
@param length Length of the buffer for read
@return -1
@return   when error was occurred
@return or Length of bytes read
</member>
<member name="M:dynamixel.PortHandler.writePort(System.Byte*,System.Int32)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="142">
@brief The function that writes bytes on the port buffer
@description The function writes bytes on the port buffer,
@description and returns a number of bytes which are successfully written.
@param packet Buffer which would be written on the port buffer
@param length Length of the buffer for write
@return -1
@return   when error was occurred
@return or Length of bytes written
</member>
<member name="M:dynamixel.PortHandler.setPacketTimeout(System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="154">
@brief The function that sets and starts stopwatch for watching packet timeout
@description The function sets the stopwatch by getting current time and the time of packet timeout with packet_length.
@param packet_length Length of the packet expected to be received
</member>
<member name="M:dynamixel.PortHandler.setPacketTimeout(System.Double)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="161">
@brief The function that sets and starts stopwatch for watching packet timeout
@description The function sets the stopwatch by getting current time and the time of packet timeout with msec.
@param packet_length Length of the packet expected to be received
</member>
<member name="M:dynamixel.PortHandler.isPacketTimeout" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler.h" line="168">
@brief The function that checks whether packet timeout is occurred
@description The function checks whether current time is passed by the time of packet timeout from the time set by PortHandlerLinux::setPacketTimeout().
</member>
<member name="T:dynamixel.PacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="80">
@brief The class that inherits Protocol1PacketHandler class or Protocol2PacketHandler class
</member>
<member name="M:dynamixel.PacketHandler.getPacketHandler(System.Single)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="89">
@brief The function that returns PacketHandler instance
@return PacketHandler instance
</member>
<member name="M:dynamixel.PacketHandler.getProtocolVersion" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="97">
@brief The function that returns Protocol version
@return protocol version
</member>
<member name="M:dynamixel.PacketHandler.getTxRxResult(System.Int32)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="103">
@brief The function that gets description of communication result
@param result Communication result which might be gotten by the tx rx functions
@return description of communication result in const char* (string)
</member>
<member name="M:dynamixel.PacketHandler.getRxPacketError(System.Byte)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="110">
@brief The function that gets description of hardware error
@param error Dynamixel hardware error which might be gotten by the tx rx functions
@return description of hardware error in const char* (string)
</member>
<member name="M:dynamixel.PacketHandler.txPacket(dynamixel.PortHandler*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="117">
@brief The function that transmits the instruction packet txpacket via PortHandler port.
@description The function clears the port buffer by PortHandler::clearPort() function,
@description   then transmits txpacket by PortHandler::writePort() function.
@description The function activates only when the port is not busy and when the packet is already written on the port buffer
@param port PortHandler instance
@param txpacket packet for transmission
@return COMM_PORT_BUSY
@return   when the port is already in use
@return COMM_TX_ERROR
@return   when txpacket is out of range described by TXPACKET_MAX_LEN
@return COMM_TX_FAIL
@return   when written packet is shorter than expected
@return or COMM_SUCCESS
</member>
<member name="M:dynamixel.PacketHandler.rxPacket(dynamixel.PortHandler*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="134">
@brief The function that receives packet (rxpacket) during designated time via PortHandler port
@description The function repeatedly tries to receive rxpacket by PortHandler::readPort() function.
@description It breaks out
@description when PortHandler::isPacketTimeout() shows the timeout,
@description when rxpacket seemed as corrupted, or
@description when nothing received
@param port PortHandler instance
@param rxpacket received packet
@return COMM_RX_CORRUPT
@return   when it received the packet but it couldn't find header in the packet
@return   when it found header in the packet but the id, length or error value is out of range
@return   when it received the packet but it is shorted than expected
@return COMM_RX_TIMEOUT
@return   when there is no rxpacket received until PortHandler::isPacketTimeout() shows the timeout
@return COMM_SUCCESS
@return   when rxpacket passes checksum test
@return or COMM_RX_FAIL
</member>
<member name="M:dynamixel.PacketHandler.txRxPacket(dynamixel.PortHandler*,System.Byte*,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="155">
@brief The function that transmits packet (txpacket) and receives packet (rxpacket) during designated time via PortHandler port
@description The function calls PacketHandler::txPacket(),
@description and calls PacketHandler::rxPacket() if it succeeds PacketHandler::txPacket().
@description It breaks out
@description when it fails PacketHandler::txPacket(),
@description when txpacket is called by PacketHandler::broadcastPing() / PacketHandler::syncWriteTxOnly() / PacketHandler::regWriteTxOnly / PacketHandler::action
@param port PortHandler instance
@param txpacket packet for transmission
@param rxpacket received packet
@return COMM_SUCCESS
@return   when it succeeds PacketHandler::txPacket() and PacketHandler::rxPacket()
@return or the other communication results which come from PacketHandler::txPacket() and PacketHandler::rxPacket()
</member>
<member name="M:dynamixel.PacketHandler.ping(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="171">
@brief The function that pings Dynamixel but doesn't take its model number
@description The function calls PacketHandler::ping() which gets Dynamixel model number,
@description but doesn't carry the model number
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::ping()
</member>
<member name="M:dynamixel.PacketHandler.ping(dynamixel.PortHandler*,System.Byte,System.UInt16*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="182">
@brief The function that pings Dynamixel and takes its model number
@description The function makes an instruction packet with INST_PING,
@description transmits the packet with PacketHandler::txRxPacket(),
@description and call PacketHandler::readTxRx to read model_number in the rx buffer.
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return COMM_SUCCESS
@return   when it succeeds to ping Dynamixel and get model_number from it
@return or the other communication results which come from PacketHandler::txRxPacket() and PacketHandler::readTxRx()
</member>
<member name="M:dynamixel.PacketHandler.broadcastPing(dynamixel.PortHandler*,std.vector&lt;System.Byte,std.allocator&lt;System.Byte&gt;&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="200">
@brief (Available only in Protocol 2.0) The function that pings all connected Dynamixel
@param port PortHandler instance
@param id_list ID list of Dynamixels which are found by broadcast ping
@return COMM_NOT_AVAILABLE
</member>
<member name="M:dynamixel.PacketHandler.action(dynamixel.PortHandler*,System.Byte)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="208">
@brief The function that makes Dynamixels run as written in the Dynamixel register
@description The function makes an instruction packet with INST_ACTION,
@description transmits the packet with PacketHandler::txRxPacket().
@description To use this function, Dynamixel register should be set by PacketHandler::regWriteTxOnly() or PacketHandler::regWriteTxRx()
@param port PortHandler instance
@param id Dynamixel ID
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.reboot(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="219">
@brief The function that makes Dynamixel reboot
@description The function makes an instruction packet with INST_REBOOT,
@description transmits the packet with PacketHandler::txRxPacket(),
@description then Dynamixel reboots.
@description During reboot, its LED will blink.
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
</member>
<member name="M:dynamixel.PacketHandler.clearMultiTurn(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="232">
@brief The function that reset multi-turn revolution information of Dynamixel
@description The function makes an instruction packet with INST_CLEAR,
@description transmits the packet with PacketHandler::txRxPacket().
@description Applied Products : MX with Protocol 2.0 (Firmware v42 or above),
@description Dynamixel X-series (Firmware v42 or above).
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.factoryReset(dynamixel.PortHandler*,System.Byte,System.Byte,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="245">
@brief The function that makes Dynamixel reset as it was produced in the factory
@description The function makes an instruction packet with INST_FACTORY_RESET,
@description transmits the packet with PacketHandler::txRxPacket().
@description Be careful of the use.
@param port PortHandler instance
@param id Dynamixel ID
@param option Reset option
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.readTx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="258">
@brief The function that transmits INST_READ instruction packet
@description The function makes an instruction packet with INST_READ,
@description transmits the packet with PacketHandler::txPacket().
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return or the other communication results which come from PacketHandler::txPacket()
</member>
<member name="M:dynamixel.PacketHandler.readRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="274">
@brief The function that receives the packet and reads the data in the packet
@description The function receives the packet which might be come by previous INST_READ instruction packet transmission,
@description gets the data from the packet.
@param port PortHandler instance
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::rxPacket()
</member>
<member name="M:dynamixel.PacketHandler.readTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="286">
@brief The function that transmits INST_READ instruction packet, and read data from received packet
@description The function makes an instruction packet with INST_READ,
@description transmits and receives the packet with PacketHandler::txRxPacket(),
@description gets the data from the packet.
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return or the other communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.read1ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="305">
@brief The function that calls PacketHandler::readTx() function for reading 1 byte data
@description The function calls PacketHandler::readTx() function for reading 1 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from PacketHandler::readTx()
</member>
<member name="M:dynamixel.PacketHandler.read1ByteRx(dynamixel.PortHandler*,System.Byte,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="315">
@brief The function that calls PacketHandler::readRx() function and reads 1 byte data on the packet
@description The function calls PacketHandler::readRx() function,
@description gets 1 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::readRx()
</member>
<member name="M:dynamixel.PacketHandler.read1ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="326">
@brief The function that calls PacketHandler::readTxRx() function for reading 1 byte data
@description The function calls PacketHandler::readTxRx(),
@description gets 1 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.read2ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="340">
@brief The function that calls PacketHandler::readTx() function for reading 2 byte data
@description The function calls PacketHandler::readTx() function for reading 2 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from PacketHandler::readTx()
</member>
<member name="M:dynamixel.PacketHandler.read2ByteRx(dynamixel.PortHandler*,System.Byte,System.UInt16*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="350">
@brief The function that calls PacketHandler::readRx() function and reads 2 byte data on the packet
@description The function calls PacketHandler::readRx() function,
@description gets 2 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::readRx()
</member>
<member name="M:dynamixel.PacketHandler.read2ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="361">
@brief The function that calls PacketHandler::readTxRx() function for reading 2 byte data
@description The function calls PacketHandler::readTxRx(),
@description gets 2 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.read4ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="375">
@brief The function that calls PacketHandler::readTx() function for reading 4 byte data
@description The function calls PacketHandler::readTx() function for reading 4 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from PacketHandler::readTx()
</member>
<member name="M:dynamixel.PacketHandler.read4ByteRx(dynamixel.PortHandler*,System.Byte,System.UInt32*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="385">
@brief The function that calls PacketHandler::readRx() function and reads 4 byte data on the packet
@description The function calls PacketHandler::readRx() function,
@description gets 4 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::readRx()
</member>
<member name="M:dynamixel.PacketHandler.read4ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="396">
@brief The function that calls PacketHandler::readTxRx() function for reading 4 byte data
@description The function calls PacketHandler::readTxRx(),
@description gets 4 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.writeTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="410">
@brief The function that transmits INST_WRITE instruction packet with the data for write
@description The function makes an instruction packet with INST_WRITE and the data for write,
@description transmits the packet with PacketHandler::txPacket().
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@return communication results which come from PacketHandler::txPacket()
</member>
<member name="M:dynamixel.PacketHandler.writeTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="423">
@brief The function that transmits INST_WRITE instruction packet with the data for write, and receives the packet
@description The function makes an instruction packet with INST_WRITE and the data for write,
@description transmits and receives the packet with PacketHandler::txRxPacket(),
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.write1ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="438">
@brief The function that calls PacketHandler::writeTxOnly() for writing 1 byte data
@description The function calls PacketHandler::writeTxOnly() for writing 1 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.PacketHandler.write1ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="449">
@brief The function that calls PacketHandler::writeTxRx() for writing 1 byte data and receives the packet
@description The function calls PacketHandler::writeTxRx() for writing 1 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.PacketHandler.write2ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="462">
@brief The function that calls PacketHandler::writeTxOnly() for writing 2 byte data
@description The function calls PacketHandler::writeTxOnly() for writing 2 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.PacketHandler.write2ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="473">
@brief The function that calls PacketHandler::writeTxRx() for writing 2 byte data and receives the packet
@description The function calls PacketHandler::writeTxRx() for writing 2 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.PacketHandler.write4ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="486">
@brief The function that calls PacketHandler::writeTxOnly() for writing 4 byte data
@description The function calls PacketHandler::writeTxOnly() for writing 4 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.PacketHandler.write4ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="497">
@brief The function that calls PacketHandler::writeTxRx() for writing 4 byte data and receives the packet
@description The function calls PacketHandler::writeTxRx() for writing 4 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.PacketHandler.regWriteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="510">
@brief The function that transmits INST_REG_WRITE instruction packet with the data for writing on the Dynamixel register
@description The function makes an instruction packet with INST_REG_WRITE and the data for writing on the Dynamixel register,
@description transmits the packet with PacketHandler::txPacket().
@description The data written in the register will act when INST_ACTION instruction packet is transmitted to the Dynamixel.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@return communication results which come from PacketHandler::txPacket()
</member>
<member name="M:dynamixel.PacketHandler.regWriteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="524">
@brief The function that transmits INST_REG_WRITE instruction packet with the data for writing on the Dynamixel register, and receives the packet
@description The function makes an instruction packet with INST_REG_WRITE and the data for writing on the Dynamixel register,
@description transmits and receives the packet with PacketHandler::txRxPacket(),
@description gets the error from the packet.
@description The data written in the register will act when INST_ACTION instruction packet is transmitted to the Dynamixel.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.syncReadTx(dynamixel.PortHandler*,System.UInt16,System.UInt16,System.Byte*,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="540">
@brief The function that transmits INST_SYNC_READ instruction packet
@description The function makes an instruction packet with INST_SYNC_READ,
@description transmits the packet with PacketHandler::txPacket().
@param port PortHandler instance
@param start_address Address of the data for Sync Read
@param data_length Length of the data for Sync Read
@param param Parameter for Sync Read
@param param_length Length of the data for Sync Read
@return communication results which come from PacketHandler::txPacket()
</member>
<member name="M:dynamixel.PacketHandler.syncWriteTxOnly(dynamixel.PortHandler*,System.UInt16,System.UInt16,System.Byte*,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="555">
@brief The function that transmits INST_SYNC_WRITE instruction packet
@description The function makes an instruction packet with INST_SYNC_WRITE,
@description transmits the packet with PacketHandler::txRxPacket().
@param port PortHandler instance
@param start_address Address of the data for Sync Write
@param data_length Length of the data for Sync Write
@param param Parameter for Sync Write
@param param_length Length of the data for Sync Write
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.PacketHandler.bulkReadTx(dynamixel.PortHandler*,System.Byte*,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="568">
@brief The function that transmits INST_BULK_READ instruction packet
@description The function makes an instruction packet with INST_BULK_READ,
@description transmits the packet with PacketHandler::txPacket().
@param port PortHandler instance
@param param Parameter for Bulk Read
@param param_length Length of the data for Bulk Read
@return communication results which come from PacketHandler::txPacket()
</member>
<member name="M:dynamixel.PacketHandler.bulkWriteTxOnly(dynamixel.PortHandler*,System.Byte*,System.UInt16)" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\packet_handler.h" line="581">
@brief The function that transmits INST_BULK_WRITE instruction packet
@description The function makes an instruction packet with INST_BULK_WRITE,
@description transmits the packet with PacketHandler::txRxPacket().
@param port PortHandler instance
@param param Parameter for Bulk Write
@param param_length Length of the data for Bulk Write
@return communication results which come from PacketHandler::txRxPacket()
</member>
<member name="T:dynamixel.GroupBulkRead" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="35">
@brief The class for reading multiple Dynamixel data from different addresses with different lengths at once
</member>
<member name="M:dynamixel.GroupBulkRead.#ctor(dynamixel.PortHandler*,dynamixel.PacketHandler*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="58">
@brief The function that Initializes instance for Bulk Read
@param port PortHandler instance
@param ph PacketHandler instance
</member>
<member name="M:dynamixel.GroupBulkRead.Dispose" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="65">
@brief The function that calls clearParam function to clear the parameter list for Bulk Read
</member>
<member name="M:dynamixel.GroupBulkRead.getPortHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="70">
@brief The function that returns PortHandler instance
@return PortHandler instance
</member>
<member name="M:dynamixel.GroupBulkRead.getPacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="76">
@brief The function that returns PacketHandler instance
@return PacketHandler instance
</member>
<member name="M:dynamixel.GroupBulkRead.addParam(System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="82">
@brief The function that adds id, start_address, data_length to the Bulk Read list
@param id Dynamixel ID
@param start_address Address of the data for read
@data_length Length of the data for read
@return false
@return   when the ID exists already in the list
@return or true
</member>
<member name="M:dynamixel.GroupBulkRead.removeParam(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="93">
@brief The function that removes id from the Bulk Read list
@param id Dynamixel ID
</member>
<member name="M:dynamixel.GroupBulkRead.clearParam" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="99">
@brief The function that clears the Bulk Read list
</member>
<member name="M:dynamixel.GroupBulkRead.txPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="104">
@brief The function that transmits the Bulk Read instruction packet which might be constructed by GroupBulkRead::addParam function
@return COMM_NOT_AVAILABLE
@return   when the list for Bulk Read is empty
@return or the other communication results which come from PacketHandler::bulkReadTx
</member>
<member name="M:dynamixel.GroupBulkRead.rxPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="112">
@brief The function that receives the packet which might be come from the Dynamixel
@return COMM_NOT_AVAILABLE
@return   when the list for Bulk Read is empty
@return COMM_RX_FAIL
@return   when there is no packet recieved
@return COMM_SUCCESS
@return   when there is packet recieved
@return or the other communication results
</member>
<member name="M:dynamixel.GroupBulkRead.txRxPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="124">
@brief The function that transmits and receives the packet which might be come from the Dynamixel
@return COMM_RX_FAIL
@return   when there is no packet recieved
@return COMM_SUCCESS
@return   when there is packet recieved
@return or the other communication results which come from GroupBulkRead::txPacket or GroupBulkRead::rxPacket
</member>
<member name="M:dynamixel.GroupBulkRead.isAvailable(System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="134">
@brief The function that checks whether there are available data which might be received by GroupBulkRead::rxPacket or GroupBulkRead::txRxPacket
@param id Dynamixel ID
@param address Address of the data for read
@param data_length Length of the data for read
@return false
@return  when there are no data available
@return or true
</member>
<member name="M:dynamixel.GroupBulkRead.getData(System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="145">
@brief The function that gets the data which might be received by GroupBulkRead::rxPacket or GroupBulkRead::txRxPacket
@param id Dynamixel ID
@param address Address of the data for read
@data_length Length of the data for read
@return data value
</member>
<member name="M:dynamixel.GroupBulkRead.getError(System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_read.h" line="154">
@brief The function that gets the error which might be received by GroupBulkRead::rxPacket or GroupBulkRead::txRxPacket
@param id Dynamixel ID
@error error of Dynamixel
@return true
@return   when Dynamixel returned specific error byte
@return or false 
</member>
<member name="T:dynamixel.GroupBulkWrite" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="35">
@brief The class for writing multiple Dynamixel data from different addresses with different lengths at once
</member>
<member name="M:dynamixel.GroupBulkWrite.#ctor(dynamixel.PortHandler*,dynamixel.PacketHandler*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="57">
@brief The function that Initializes instance for Bulk Write
@param port PortHandler instance
@param ph PacketHandler instance
</member>
<member name="M:dynamixel.GroupBulkWrite.Dispose" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="64">
@brief The function that calls clearParam function to clear the parameter list for Bulk Write
</member>
<member name="M:dynamixel.GroupBulkWrite.getPortHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="69">
@brief The function that returns PortHandler instance
@return PortHandler instance
</member>
<member name="M:dynamixel.GroupBulkWrite.getPacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="75">
@brief The function that returns PacketHandler instance
@return PacketHandler instance
</member>
<member name="M:dynamixel.GroupBulkWrite.addParam(System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="81">
@brief The function that adds id, start_address, data_length to the Bulk Write list
@param id Dynamixel ID
@param start_address Address of the data for write
@param data_length Length of the data for write
@return false
@return   when the ID exists already in the list
@return or true
</member>
<member name="M:dynamixel.GroupBulkWrite.removeParam(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="92">
@brief The function that removes id from the Bulk Write list
@param id Dynamixel ID
</member>
<member name="M:dynamixel.GroupBulkWrite.changeParam(System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="98">
@brief The function that changes the data for write in id -&gt; start_address -&gt; data_length to the Bulk Write list
@param id Dynamixel ID
@param start_address Address of the data for write
@param data_length Length of the data for write
@param data for replacement
@return false
@return   when the ID doesn't exist in the list
@return or true
</member>
<member name="M:dynamixel.GroupBulkWrite.clearParam" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="110">
@brief The function that clears the Bulk Write list
</member>
<member name="M:dynamixel.GroupBulkWrite.txPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_bulk_write.h" line="115">
@brief The function that transmits the Bulk Write instruction packet which might be constructed by GroupBulkWrite::addParam function
@return COMM_NOT_AVAILABLE
@return   when the list for Bulk Write is empty
@return   when Protocol1.0 has been used
@return or the other communication results which come from PacketHandler::bulkWriteTxOnly
</member>
<member name="T:dynamixel.GroupSyncRead" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="35">
@brief The class for reading multiple Dynamixel data from same address with same length at once
</member>
<member name="M:dynamixel.GroupSyncRead.#ctor(dynamixel.PortHandler*,dynamixel.PacketHandler*,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="58">
@brief The function that Initializes instance for Sync Read
@param port PortHandler instance
@param ph PacketHandler instance
@param start_address Address of the data for read
@param data_length Length of the data for read
</member>
<member name="M:dynamixel.GroupSyncRead.Dispose" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="67">
@brief The function that calls clearParam function to clear the parameter list for Sync Read
</member>
<member name="M:dynamixel.GroupSyncRead.getPortHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="72">
@brief The function that returns PortHandler instance
@return PortHandler instance
</member>
<member name="M:dynamixel.GroupSyncRead.getPacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="78">
@brief The function that returns PacketHandler instance
@return PacketHandler instance
</member>
<member name="M:dynamixel.GroupSyncRead.addParam(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="84">
@brief The function that adds id, start_address, data_length to the Sync Read list
@param id Dynamixel ID
@return false
@return   when the ID exists already in the list
@return   when the protocol1.0 has been used
@return or true
</member>
<member name="M:dynamixel.GroupSyncRead.removeParam(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="94">
@brief The function that removes id from the Sync Read list
@param id Dynamixel ID
</member>
<member name="M:dynamixel.GroupSyncRead.clearParam" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="100">
@brief The function that clears the Sync Read list
</member>
<member name="M:dynamixel.GroupSyncRead.txPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="105">
@brief The function that transmits the Sync Read instruction packet which might be constructed by GroupSyncRead::addParam function
@return COMM_NOT_AVAILABLE
@return   when the list for Sync Read is empty
@return   when the protocol1.0 has been used
@return or the other communication results which come from PacketHandler::syncReadTx
</member>
<member name="M:dynamixel.GroupSyncRead.rxPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="114">
@brief The function that receives the packet which might be come from the Dynamixel
@return COMM_NOT_AVAILABLE
@return   when the list for Sync Read is empty
@return   when the protocol1.0 has been used
@return COMM_SUCCESS
@return   when there is packet recieved
@return or the other communication results
</member>
<member name="M:dynamixel.GroupSyncRead.txRxPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="125">
@brief The function that transmits and receives the packet which might be come from the Dynamixel
@return COMM_NOT_AVAILABLE
@return   when the protocol1.0 has been used
@return COMM_RX_FAIL
@return   when there is no packet recieved
@return COMM_SUCCESS
@return   when there is packet recieved
@return or the other communication results which come from GroupBulkRead::txPacket or GroupBulkRead::rxPacket
</member>
<member name="M:dynamixel.GroupSyncRead.isAvailable(System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="137">
@brief The function that checks whether there are available data which might be received by GroupSyncRead::rxPacket or GroupSyncRead::txRxPacket
@param id Dynamixel ID
@param address Address of the data for read
@param data_length Length of the data for read
@return false
@return   when there are no data available
@return   when the protocol1.0 has been used
@return or true
</member>
<member name="M:dynamixel.GroupSyncRead.getData(System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="149">
@brief The function that gets the data which might be received by GroupSyncRead::rxPacket or GroupSyncRead::txRxPacket
@param id Dynamixel ID
@param address Address of the data for read
@data_length Length of the data for read
@return data value
</member>
<member name="M:dynamixel.GroupSyncRead.getError(System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_read.h" line="158">
@brief The function that gets the error which might be received by GroupSyncRead::rxPacket or GroupSyncRead::txRxPacket
@param id Dynamixel ID
@error error of Dynamixel
@return true
@return   when Dynamixel returned specific error byte
@return or false 
</member>
<member name="T:dynamixel.GroupSyncWrite" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="35">
@brief The class for writing multiple Dynamixel data from same address with same length at once
</member>
<member name="M:dynamixel.GroupSyncWrite.#ctor(dynamixel.PortHandler*,dynamixel.PacketHandler*,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="56">
@brief The function that Initializes instance for Sync Write
@param port PortHandler instance
@param ph PacketHandler instance
@param start_address Address of the data for write
@param data_length Length of the data for write
</member>
<member name="M:dynamixel.GroupSyncWrite.Dispose" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="65">
@brief The function that calls clearParam function to clear the parameter list for Sync Write
</member>
<member name="M:dynamixel.GroupSyncWrite.getPortHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="70">
@brief The function that returns PortHandler instance
@return PortHandler instance
</member>
<member name="M:dynamixel.GroupSyncWrite.getPacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="76">
@brief The function that returns PacketHandler instance
@return PacketHandler instance
</member>
<member name="M:dynamixel.GroupSyncWrite.addParam(System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="82">
@brief The function that adds id, start_address, data_length to the Sync Write list
@param id Dynamixel ID
@param data Data for write
@return false
@return   when the ID exists already in the list
@return or true
</member>
<member name="M:dynamixel.GroupSyncWrite.removeParam(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="92">
@brief The function that removes id from the Sync Write list
@param id Dynamixel ID
</member>
<member name="M:dynamixel.GroupSyncWrite.changeParam(System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="98">
@brief The function that changes the data for write in id -&gt; start_address -&gt; data_length to the Sync Write list
@param id Dynamixel ID
@param data for replacement
@return false
@return   when the ID doesn't exist in the list
@return or true
</member>
<member name="M:dynamixel.GroupSyncWrite.clearParam" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="108">
@brief The function that clears the Sync Write list
</member>
<member name="M:dynamixel.GroupSyncWrite.txPacket" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\group_sync_write.h" line="113">
@brief The function that transmits the Sync Write instruction packet which might be constructed by GroupSyncWrite::addParam function
@return COMM_NOT_AVAILABLE
@return   when the list for Sync Write is empty
@return or the other communication results which come from PacketHandler::syncWriteTxOnly
</member>
<member name="T:_EXCEPTION_DISPOSITION" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="18">
@file The file for port control in Windows
@author Leon (RyuWoon Jung)
</member>
<member name="T:dynamixel.PortHandlerWindows" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="33">
@brief The class for control port in Windows
</member>
<member name="M:dynamixel.PortHandlerWindows.#ctor(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="55">
@brief The function that initializes instance of PortHandler and gets port_name
@description The function initializes instance of PortHandler and gets port_name.
</member>
<member name="M:dynamixel.PortHandlerWindows.Dispose" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="61">
@brief The function that closes the port
@description The function calls PortHandlerWindows::closePort() to close the port.
</member>
<member name="M:dynamixel.PortHandlerWindows.openPort" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="67">
@brief The function that opens the port
@description The function calls PortHandlerWindows::setBaudRate() to open the port.
@return communication results which come from PortHandlerWindows::setBaudRate()
</member>
<member name="M:dynamixel.PortHandlerWindows.closePort" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="74">
@brief The function that closes the port
@description The function closes the port.
</member>
<member name="M:dynamixel.PortHandlerWindows.clearPort" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="80">
@brief The function that clears the port
@description The function clears the port.
</member>
<member name="M:dynamixel.PortHandlerWindows.setPortName(System.SByte!System.Runtime.CompilerServices.IsSignUnspecifiedByte!System.Runtime.CompilerServices.IsConst*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="86">
@brief The function that sets port name into the port handler
@description The function sets port name into the port handler.
@param port_name Port name
</member>
<member name="M:dynamixel.PortHandlerWindows.getPortName" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="93">
@brief The function that returns port name set into the port handler
@description The function returns current port name set into the port handler.
@return Port name
</member>
<member name="M:dynamixel.PortHandlerWindows.setBaudRate(System.Int32!System.Runtime.CompilerServices.IsConst)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="100">
@brief The function that sets baudrate into the port handler
@description The function sets baudrate into the port handler.
@param baudrate Baudrate
@return false
@return   when error was occurred during port opening
@return or true
</member>
<member name="M:dynamixel.PortHandlerWindows.getBaudRate" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="110">
@brief The function that returns current baudrate set into the port handler
@description The function returns current baudrate set into the port handler.
@return Baudrate
</member>
<member name="M:dynamixel.PortHandlerWindows.getBytesAvailable" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="117">
@brief The function that checks how much bytes are able to be read from the port buffer
@description The function checks how much bytes are able to be read from the port buffer
@description and returns the number.
@return Length of read-able bytes in the port buffer
</member>
<member name="M:dynamixel.PortHandlerWindows.readPort(System.Byte*,System.Int32)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="125">
@brief The function that reads bytes from the port buffer
@description The function gets bytes from the port buffer,
@description and returns a number of bytes read.
@param packet Buffer for the packet received
@param length Length of the buffer for read
@return -1
@return   when error was occurred
@return or Length of bytes read
</member>
<member name="M:dynamixel.PortHandlerWindows.writePort(System.Byte*,System.Int32)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="137">
@brief The function that writes bytes on the port buffer
@description The function writes bytes on the port buffer,
@description and returns a number of bytes which are successfully written.
@param packet Buffer which would be written on the port buffer
@param length Length of the buffer for write
@return -1
@return   when error was occurred
@return or Length of bytes written
</member>
<member name="M:dynamixel.PortHandlerWindows.setPacketTimeout(System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="149">
@brief The function that sets and starts stopwatch for watching packet timeout
@description The function sets the stopwatch by getting current time and the time of packet timeout with packet_length.
@param packet_length Length of the packet expected to be received
</member>
<member name="M:dynamixel.PortHandlerWindows.setPacketTimeout(System.Double)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="156">
@brief The function that sets and starts stopwatch for watching packet timeout
@description The function sets the stopwatch by getting current time and the time of packet timeout with msec.
@param packet_length Length of the packet expected to be received
</member>
<member name="M:dynamixel.PortHandlerWindows.isPacketTimeout" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\port_handler_windows.h" line="163">
@brief The function that checks whether packet timeout is occurred
@description The function checks whether current time is passed by the time of packet timeout from the time set by PortHandlerWindows::setPacketTimeout().
</member>
<member name="T:dynamixel.Protocol2PacketHandler" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="32">
@brief The class for control Dynamixel by using Protocol2.0
</member>
<member name="M:dynamixel.Protocol2PacketHandler.getInstance" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="47">
@brief The function that returns Protocol2PacketHandler instance
@return Protocol2PacketHandler instance
</member>
<member name="M:dynamixel.Protocol2PacketHandler.getProtocolVersion" decl="false" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="55">
@brief The function that returns Protocol version used in Protocol2PacketHandler (2.0)
@return 2.0
</member>
<member name="M:dynamixel.Protocol2PacketHandler.getTxRxResult(System.Int32)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="61">
@brief The function that gets description of communication result
@param result Communication result which might be gotten by the tx rx functions
@return description of communication result in const char* (string)
</member>
<member name="M:dynamixel.Protocol2PacketHandler.getRxPacketError(System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="68">
@brief The function that gets description of hardware error
@param error Dynamixel hardware error which might be gotten by the tx rx functions
@return description of hardware error in const char* (string)
</member>
<member name="M:dynamixel.Protocol2PacketHandler.txPacket(dynamixel.PortHandler*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="75">
@brief The function that transmits the instruction packet txpacket via PortHandler port.
@description The function clears the port buffer by PortHandler::clearPort() function,
@description   then transmits txpacket by PortHandler::writePort() function.
@description The function activates only when the port is not busy and when the packet is already written on the port buffer
@param port PortHandler instance
@param txpacket packet for transmission
@return COMM_PORT_BUSY
@return   when the port is already in use
@return COMM_TX_ERROR
@return   when txpacket is out of range described by TXPACKET_MAX_LEN
@return COMM_TX_FAIL
@return   when written packet is shorter than expected
@return or COMM_SUCCESS
</member>
<member name="M:dynamixel.Protocol2PacketHandler.rxPacket(dynamixel.PortHandler*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="92">
@brief The function that receives packet (rxpacket) during designated time via PortHandler port
@description The function repeatedly tries to receive rxpacket by PortHandler::readPort() function.
@description It breaks out
@description when PortHandler::isPacketTimeout() shows the timeout,
@description when rxpacket seemed as corrupted, or
@description when nothing received
@param port PortHandler instance
@param rxpacket received packet
@return COMM_RX_CORRUPT
@return   when it received the packet but it couldn't find header in the packet
@return   when it found header in the packet but the id, length or error value is out of range
@return   when it received the packet but it is shorted than expected
@return COMM_RX_TIMEOUT
@return   when there is no rxpacket received until PortHandler::isPacketTimeout() shows the timeout
@return COMM_SUCCESS
@return   when rxpacket passes checksum test
@return or COMM_RX_FAIL
</member>
<member name="M:dynamixel.Protocol2PacketHandler.txRxPacket(dynamixel.PortHandler*,System.Byte*,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="113">
@brief The function that transmits packet (txpacket) and receives packet (rxpacket) during designated time via PortHandler port
@description The function calls Protocol2PacketHandler::txPacket(),
@description and calls Protocol2PacketHandler::rxPacket() if it succeeds Protocol2PacketHandler::txPacket().
@description It breaks out
@description when it fails Protocol2PacketHandler::txPacket(),
@description when txpacket is called by Protocol2PacketHandler::broadcastPing() / Protocol2PacketHandler::syncWriteTxOnly() / Protocol2PacketHandler::regWriteTxOnly / Protocol2PacketHandler::action
@param port PortHandler instance
@param txpacket packet for transmission
@param rxpacket received packet
@return COMM_SUCCESS
@return   when it succeeds Protocol2PacketHandler::txPacket() and Protocol2PacketHandler::rxPacket()
@return or the other communication results which come from Protocol2PacketHandler::txPacket() and Protocol2PacketHandler::rxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.ping(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="129">
@brief The function that pings Dynamixel but doesn't take its model number
@description The function calls Protocol2PacketHandler::ping() which gets Dynamixel model number,
@description but doesn't carry the model number
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::ping()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.ping(dynamixel.PortHandler*,System.Byte,System.UInt16*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="140">
@brief The function that pings Dynamixel and takes its model number
@description The function makes an instruction packet with INST_PING,
@description transmits the packet with Protocol2PacketHandler::txRxPacket(),
@description and call Protocol2PacketHandler::readTxRx to read model_number in the rx buffer.
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return COMM_SUCCESS
@return   when it succeeds to ping Dynamixel and get model_number from it
@return or the other communication results which come from Protocol2PacketHandler::txRxPacket() and Protocol2PacketHandler::readTxRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.broadcastPing(dynamixel.PortHandler*,std.vector&lt;System.Byte,std.allocator&lt;System.Byte&gt;&gt;*!System.Runtime.CompilerServices.IsImplicitlyDereferenced)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="158">
@brief (Available only in Protocol 2.0) The function that pings all connected Dynamixel
@param port PortHandler instance
@param id_list ID list of Dynamixels which are found by broadcast ping
@return COMM_NOT_AVAILABLE
</member>
<member name="M:dynamixel.Protocol2PacketHandler.action(dynamixel.PortHandler*,System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="166">
@brief The function that makes Dynamixels run as written in the Dynamixel register
@description The function makes an instruction packet with INST_ACTION,
@description transmits the packet with Protocol2PacketHandler::txRxPacket().
@description To use this function, Dynamixel register should be set by Protocol2PacketHandler::regWriteTxOnly() or Protocol2PacketHandler::regWriteTxRx()
@param port PortHandler instance
@param id Dynamixel ID
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.reboot(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="177">
@brief The function that makes Dynamixel reboot
@description The function makes an instruction packet with INST_REBOOT,
@description transmits the packet with Protocol2PacketHandler::txRxPacket(),
@description then Dynamixel reboots.
@description During reboot, its LED will blink.
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
</member>
<member name="M:dynamixel.Protocol2PacketHandler.clearMultiTurn(dynamixel.PortHandler*,System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="190">
@brief The function that reset multi-turn revolution information of Dynamixel
@description The function makes an instruction packet with INST_CLEAR,
@description transmits the packet with Protocol2PacketHandler::txRxPacket().
@description Applied Products : MX with Protocol 2.0 (Firmware v42 or above),
@description Dynamixel X-series (Firmware v42 or above).
@param port PortHandler instance
@param id Dynamixel ID
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.factoryReset(dynamixel.PortHandler*,System.Byte,System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="203">
@brief The function that makes Dynamixel reset as it was produced in the factory
@description The function makes an instruction packet with INST_FACTORY_RESET,
@description transmits the packet with Protocol2PacketHandler::txRxPacket().
@description Be careful of the use.
@param port PortHandler instance
@param id Dynamixel ID
@param option Reset option (0xFF for reset all values / 0x01 for reset all values except ID / 0x02 for reset all values except ID and Baudrate)
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.readTx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="216">
@brief The function that transmits INST_READ instruction packet
@description The function makes an instruction packet with INST_READ,
@description transmits the packet with Protocol2PacketHandler::txPacket().
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return or the other communication results which come from Protocol2PacketHandler::txPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.readRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="232">
@brief The function that receives the packet and reads the data in the packet
@description The function receives the packet which might be come by previous INST_READ instruction packet transmission,
@description gets the data from the packet.
@param port PortHandler instance
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::rxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.readTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="244">
@brief The function that transmits INST_READ instruction packet, and read data from received packet
@description The function makes an instruction packet with INST_READ,
@description transmits and receives the packet with Protocol2PacketHandler::txRxPacket(),
@description gets the data from the packet.
@description It breaks out
@description when it tries to transmit to BROADCAST_ID
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return COMM_NOT_AVAILABLE
@return   when it tries to transmit to BROADCAST_ID
@return or the other communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read1ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="263">
@brief The function that calls Protocol2PacketHandler::readTx() function for reading 1 byte data
@description The function calls Protocol2PacketHandler::readTx() function for reading 1 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from Protocol2PacketHandler::readTx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read1ByteRx(dynamixel.PortHandler*,System.Byte,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="273">
@brief The function that calls Protocol2PacketHandler::readRx() function and reads 1 byte data on the packet
@description The function calls Protocol2PacketHandler::readRx() function,
@description gets 1 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::readRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read1ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="284">
@brief The function that calls Protocol2PacketHandler::readTxRx() function for reading 1 byte data
@description The function calls Protocol2PacketHandler::readTxRx(),
@description gets 1 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read2ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="298">
@brief The function that calls Protocol2PacketHandler::readTx() function for reading 2 byte data
@description The function calls Protocol2PacketHandler::readTx() function for reading 2 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from Protocol2PacketHandler::readTx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read2ByteRx(dynamixel.PortHandler*,System.Byte,System.UInt16*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="308">
@brief The function that calls Protocol2PacketHandler::readRx() function and reads 2 byte data on the packet
@description The function calls Protocol2PacketHandler::readRx() function,
@description gets 2 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::readRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read2ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="319">
@brief The function that calls Protocol2PacketHandler::readTxRx() function for reading 2 byte data
@description The function calls Protocol2PacketHandler::readTxRx(),
@description gets 2 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read4ByteTx(dynamixel.PortHandler*,System.Byte,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="333">
@brief The function that calls Protocol2PacketHandler::readTx() function for reading 4 byte data
@description The function calls Protocol2PacketHandler::readTx() function for reading 4 byte data
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@return communication results which come from Protocol2PacketHandler::readTx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read4ByteRx(dynamixel.PortHandler*,System.Byte,System.UInt32*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="343">
@brief The function that calls Protocol2PacketHandler::readRx() function and reads 4 byte data on the packet
@description The function calls Protocol2PacketHandler::readRx() function,
@description gets 4 byte data from the packet.
@param port PortHandler instance
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::readRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.read4ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="354">
@brief The function that calls Protocol2PacketHandler::readTxRx() function for reading 4 byte data
@description The function calls Protocol2PacketHandler::readTxRx(),
@description gets 4 byte data from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for read
@param length Length of the data for read
@param data Data extracted from the packet
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.writeTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="368">
@brief The function that transmits INST_WRITE instruction packet with the data for write
@description The function makes an instruction packet with INST_WRITE and the data for write,
@description transmits the packet with Protocol2PacketHandler::txPacket().
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@return communication results which come from Protocol2PacketHandler::txPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.writeTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="381">
@brief The function that transmits INST_WRITE instruction packet with the data for write, and receives the packet
@description The function makes an instruction packet with INST_WRITE and the data for write,
@description transmits and receives the packet with Protocol2PacketHandler::txRxPacket(),
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write1ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="396">
@brief The function that calls Protocol2PacketHandler::writeTxOnly() for writing 1 byte data
@description The function calls Protocol2PacketHandler::writeTxOnly() for writing 1 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from Protocol2PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write1ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.Byte,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="407">
@brief The function that calls Protocol2PacketHandler::writeTxRx() for writing 1 byte data and receives the packet
@description The function calls Protocol2PacketHandler::writeTxRx() for writing 1 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write2ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="420">
@brief The function that calls Protocol2PacketHandler::writeTxOnly() for writing 2 byte data
@description The function calls Protocol2PacketHandler::writeTxOnly() for writing 2 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from Protocol2PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write2ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="431">
@brief The function that calls Protocol2PacketHandler::writeTxRx() for writing 2 byte data and receives the packet
@description The function calls Protocol2PacketHandler::writeTxRx() for writing 2 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write4ByteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="444">
@brief The function that calls Protocol2PacketHandler::writeTxOnly() for writing 4 byte data
@description The function calls Protocol2PacketHandler::writeTxOnly() for writing 4 byte data.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@return communication results which come from Protocol2PacketHandler::writeTxOnly()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.write4ByteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt32,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="455">
@brief The function that calls Protocol2PacketHandler::writeTxRx() for writing 4 byte data and receives the packet
@description The function calls Protocol2PacketHandler::writeTxRx() for writing 4 byte data and receves the packet,
@description gets the error from the packet.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::writeTxRx()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.regWriteTxOnly(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="468">
@brief The function that transmits INST_REG_WRITE instruction packet with the data for writing on the Dynamixel register
@description The function makes an instruction packet with INST_REG_WRITE and the data for writing on the Dynamixel register,
@description transmits the packet with Protocol2PacketHandler::txPacket().
@description The data written in the register will act when INST_ACTION instruction packet is transmitted to the Dynamixel.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@return communication results which come from Protocol2PacketHandler::txPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.regWriteTxRx(dynamixel.PortHandler*,System.Byte,System.UInt16,System.UInt16,System.Byte*,System.Byte*)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="482">
@brief The function that transmits INST_REG_WRITE instruction packet with the data for writing on the Dynamixel register, and receives the packet
@description The function makes an instruction packet with INST_REG_WRITE and the data for writing on the Dynamixel register,
@description transmits and receives the packet with Protocol2PacketHandler::txRxPacket(),
@description gets the error from the packet.
@description The data written in the register will act when INST_ACTION instruction packet is transmitted to the Dynamixel.
@param port PortHandler instance
@param id Dynamixel ID
@param address Address of the data for write
@param length Length of the data for write
@param data Data for write
@param error Dynamixel hardware error
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.syncReadTx(dynamixel.PortHandler*,System.UInt16,System.UInt16,System.Byte*,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="499">
@brief The function that transmits INST_SYNC_READ instruction packet
@description The function makes an instruction packet with INST_SYNC_READ,
@description transmits the packet with Protocol2PacketHandler::txPacket().
@param port PortHandler instance
@param start_address Address of the data for Sync Read
@param data_length Length of the data for Sync Read
@param param Parameter for Sync Read
@param param_length Length of the data for Sync Read
@return communication results which come from Protocol2PacketHandler::txPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.syncWriteTxOnly(dynamixel.PortHandler*,System.UInt16,System.UInt16,System.Byte*,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="514">
@brief The function that transmits INST_SYNC_WRITE instruction packet
@description The function makes an instruction packet with INST_SYNC_WRITE,
@description transmits the packet with Protocol2PacketHandler::txRxPacket().
@param port PortHandler instance
@param start_address Address of the data for Sync Write
@param data_length Length of the data for Sync Write
@param param Parameter for Sync Write {ID1, DATA0, DATA1, ..., DATAn, ID2, DATA0, DATA1, ..., DATAn, ID3, DATA0, DATA1, ..., DATAn}
@param param_length Length of the data for Sync Write
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.bulkReadTx(dynamixel.PortHandler*,System.Byte*,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="527">
@brief The function that transmits INST_BULK_READ instruction packet
@description The function makes an instruction packet with INST_BULK_READ,
@description transmits the packet with Protocol2PacketHandler::txPacket().
@param port PortHandler instance
@param param Parameter for Bulk Read {ID1, ADDR_L1, ADDR_H1, LEN_L1, LEN_H1, ID2, ADDR_L2, ADDR_H2, LEN_L2, LEN_H2, ...}
@param param_length Length of the data for Bulk Read
@return communication results which come from Protocol2PacketHandler::txPacket()
</member>
<member name="M:dynamixel.Protocol2PacketHandler.bulkWriteTxOnly(dynamixel.PortHandler*,System.Byte*,System.UInt16)" decl="true" source="C:\Users\liu95\Documents\GitHub\Main Project V2\include\dynamixel_sdk\protocol2_packet_handler.h" line="540">
@brief The function that transmits INST_BULK_WRITE instruction packet
@description The function makes an instruction packet with INST_BULK_WRITE,
@description transmits the packet with Protocol2PacketHandler::txRxPacket().
@param port PortHandler instance
@param param Parameter for Bulk Write {ID1, START_ADDR_L, START_ADDR_H, DATA_LEN_L, DATA_LEN_H, DATA0, DATA1, ..., DATAn, ID2, START_ADDR_L, START_ADDR_H, DATA_LEN_L, DATA_LEN_H, DATA0, DATA1, ..., DATAn}
@param param_length Length of the data for Bulk Write
@return communication results which come from Protocol2PacketHandler::txRxPacket()
</member>
</members>
</doc>