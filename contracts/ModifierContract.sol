pragma solidity >=0.4.22 <0.9.0;

contract ModifierContract {
    uint  public minimum_bidding_amount = 10;

    modifier MustBeGreaterThanMinimum  {
        if(msg.value <= minimum_bidding_amount ) {
            revert();
        }
        _;
    }

    function bid() payable public MustBeGreaterThanMinimum returns (bool) {
        return true;            
    }

}