pragma solidity ^0.4.11;

contract SSPermissions {
    address alice = 0x08bcf855503571c673c28fdb31add07c433b005e;
    address bob = 0x3f4ef948fd7307e82b67bb438ad9e14e6aea7c4d;

    // both Alice and Bob can access any document
    function checkPermissions(address _user, bytes32 _document)constant returns (bool){
        if (_user == alice || _user == bob) return true;
        return false;
    }
}
