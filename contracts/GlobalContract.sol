pragma solidity >=0.4.22 <0.9.0;

contract GlobalContract {
    string public lastCaller = "not-set";

    function etherUnitsTest() public pure returns (bool) {
        bool value = (1 ether == 1000 finney);
        return value;
    }

    function timeUnits() public view returns (uint) {
        uint timeNow = now;

        if (timeNow == 1000 days) {
            return timeNow;
        }
    }

    function getBlockInformation() public view returns (uint number, bytes32 hash, address coinbase, uint difficulty) {
        number = block.number;
        hash = blockhash(number - 1);

        coinbase = block.coinbase;
        difficulty = block.difficulty;
    }

    function getMsgInformation() public view returns (bytes memory data, bytes4 sig, address sender) {
        data = msg.data;
        sig = msg.sig;
        sender = msg.sender;
    }
}