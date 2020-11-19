pragma solidity ^0.6.7;

import { AggregatorV3Interface } from "./interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed;

    /** 
    Network: Kovan
    Aggregator: ETH/USD
    Address: 0x9326BFA02ADD2366b30bacB125260Af641031331
    */

    constructor() public {
        priceFeed = AggregatorV3Interface(0x9326BFA02ADD2366b30bacB125260Af641031331);
    }

    /** 
    Returns latest ETHUSD price
    */
    function getLatestPrice() public view returns (int256) {
        (
            uint80 roundID,
            int256 price,
            uint256 startedAt,
            uint256 timestamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }

}
