// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.16;

contract SupplyChain {
  uint32 public product_id = 0;
  uint32 public participant_id = 0;
  uint32 public owner_id = 0;

  struct product {
    string modelNumber;
    string partNumber;
    string serialNumber;
    address productOwner;
    uint32 cost;
    uint32 mfgTimeStamp;
  }

  mapping(uint32 => product) public products;

  struct participant {
    string userName;
    string password;
    string participantType;
    address participantAddress;
  }

  mapping(uint32 => participant) public participants;


  struct ownership {
    uint32 productId;
    uint32 ownerId;
    uint32 trxTimeStamp;
    address productOwner;
  }

  mapping(uint32 => ownership) public ownerships;
  mapping(uint32 => uint32[]) public productTrack;

  event TransferOwnership(uint32 productId);

}