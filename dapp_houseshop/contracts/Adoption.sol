pragma solidity ^0.5.0;

contract Adoption {

  // address[16] public adopters;  // 保存租屋者的地址

// houseMerchandise
  struct hM {
    // db物件編號
    uint id;
    // 物件名稱
    string houseName;
    // 月租
    uint rantal;
    // 樓層
    uint floors;
    // 地址
    string houseAddr;
    // 房型
    // string houseType;
    uint houseType;

    // 坪數
    string area;
    // 押金（月）
    uint deposit;
    // 最短租期(days)
    string minPeriod;
    // 車位
    // bool parkinglot;
    // 性別要求
    // string genderRequire;
    // 可否開伙
    bool cooking;
    // 可否養寵物
    // bool petKeeping;
    // 可遷入日(yyyy/mm/dd)
    uint date;
    // 隔間材料
    // string material;

    
  }
  //initialize
  // houseMerchandise initHm = houseMerchandise();
    //initialize

    // function Inbox(houseMerchandise initHm) internal  {
        // message = initHm;
    // }
    mapping(string =>  hM) public rentMessage;
    // hM initHm;
    //租房合約message， 填入houseMerchandise租房資料

    function setRentMessage(string memory hId) public returns(string memory houseName,uint rantal,uint floors,string memory houseAddr,uint houseType,string memory area,uint deposit,string memory minPeriod,bool cooking,uint date) {
        hM memory rentData = rentMessage[hId];
        // message = initHm;
        // return initHm;
        return(rentData.houseName,rentData.rantal,rentData.floors,rentData.houseAddr,rentData.houseType,rentData.area,rentData.deposit,rentData.minPeriod,rentData.cooking,rentData.date);
    }
    //取得這個合約中的message變量
    // function getRentMessage() internal view returns(string memory) {
        // return rentMessage;
    // }

  address[16] public adopters;  // 保存房客的地址

  function adopt(uint petId) public returns (uint) {
    // id長度限制
    require(petId >= 0 && petId <= 15);  

    adopters[petId] = msg.sender;        // 保存到房客地址 
    return petId;
  }

  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }

}
