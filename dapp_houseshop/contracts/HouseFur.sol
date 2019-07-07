pragma solidity ^0.5.0;

contract HouseFur {

    //房東提供的東東houseFurniture
  struct hF{
    // （是否有）熱水器
    bool waterHeater;
    // 瓦斯
    bool gasNutual;
    // 冰箱
    bool refrigerator;
    // 冷氣
    bool airConditioner;
    // 洗衣機
    bool washingMachine;
    // 網路
    bool internet;
    // 桌椅
    bool chairnTable;
    // 衣櫃
    bool wardrobe;
    // 床具
    bool bed;
    // 沙發
    bool sofa;
    // 電視
    bool tv;
    // 第四台
    bool theForth;

    // 壞掉是否需要自行負擔維修
    bool selfFixing;
  }

  mapping(string =>  hF) public renthFMessage;
    function sethFMessage(string memory hId) public returns(bool waterHeater,bool gasNutual,bool refrigerator,bool airConditioner,bool washingMachine,bool internet,bool chairnTable,bool wardrobe,bool bed,bool sofa,bool tv,bool theForth,bool selfFixing) {
        hF memory hFData = renthFMessage[hId];
        return(hFData.waterHeater,hFData.gasNutual,hFData.refrigerator,hFData.airConditioner,hFData.washingMachine,hFData.internet,hFData.chairnTable,hFData.wardrobe,hFData.bed,hFData.sofa,hFData.tv,hFData.theForth,hFData.selfFixing);
    }
}