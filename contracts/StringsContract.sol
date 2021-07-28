pragma solidity >=0.4.22 <0.9.0;

contract StringsContract {
    function getElementAt (string memory str, uint  index) public view returns(byte) {
        bytes memory stringByteArray = bytes(str);
        return stringByteArray[index];        
    }

}