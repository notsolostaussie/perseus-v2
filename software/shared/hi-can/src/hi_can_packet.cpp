#include "hi_can_packet.hpp"

using namespace hi_can;

Packet::Packet(const address::raw_address_t& address, const uint8_t data[], size_t dataLen, const bool& isRTR)
{
    setData(data, dataLen);
    setAddress(address);
    setIsRTR(isRTR);
}

void Packet::setData(const uint8_t data[], size_t dataLen)
{
    if (dataLen > address::MAX_PACKET_LEN)
        throw std::invalid_argument("Data is longer than the maximum packet length");

    _dataLen = dataLen;
    std::copy_n(data, dataLen, _data.begin());
}

void Packet::setAddress(const address::raw_address_t& address)
{
    if (address > address::MAX_ADDRESS)
        throw std::invalid_argument("Address is invalid");
    _address = address;
}