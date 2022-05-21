// SPDX-License-Identifier: MIT LICENSE

pragma solidity 0.8.4;

import "https://github.com/shubhampandey3008/Solidity/blob/main/NFT_staking/E20_reward.sol";
import "https://github.com/shubhampandey3008/Solidity/blob/main/NFT_staking/collection.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract nft_staking is Ownable , IERC721Receiver{
        
        uint256 public  totalStaked;

        struct Staked{
            uint24 tokenId;
            uint48 timeStamp;
            uint256 owner;
        }

        event staked(uint tokenId , address owner , uint timeStamp);
        event unstaked(uint tokenId ,address owner , uint timeStamp);
        event claimed(address owner , uint amount);

        Collection nft;
        N2DRewards token;

        mapping (uint => Staked) wallet;

        constructor(Collection _nft , N2DRewards _token)
        {
            nft = _nft;
            token = _token;
        }

        

}
