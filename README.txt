# 🌱 Solidity Learning Journey — From Basics to LiskGarden Game

This repository documents my learning process as I build up from basic Solidity concepts to creating my first decentralized **Web3 plant-growing game** called **LiskGarden**.

---

## ✅ What I Learned (Each File Summary)

| File                              | Topic               | What I Learned                                |
| --------------------------------- | ------------------- | --------------------------------------------- |
| **01_LearnString.sol**            | String basics       | How to store text in blockchain state         |
| **02_LearnNumber.sol**            | Integers            | Math using uint, constraints like no negative |
| **03_LearnBoolean.sol**           | Boolean logic       | True/false & require() for validation         |
| **04_LearnAddress.sol**           | Wallet addresses    | Store and use Ethereum addresses              |
| **05_SimplePlant.sol**            | Simple struct       | First plant data storage concept              |
| **06_LearnEnum.sol**              | Enum data type      | Custom “options” like growth stages           |
| **07_LearnStruct.sol**            | Struct details      | Group variables into one object               |
| **08_LearnMapping.sol**           | Mapping             | Key → value lookup, like dictionary           |
| **09_LearnArray.sol**             | Dynamic arrays      | Push, index, store multiple items             |
| **10_MultiplePlants.sol**         | Many plants         | Track multiple structs using array            |
| **11_LearnRequire.sol**           | Input validation    | Protect contract from bad calls               |
| **12_LearnModifier.sol**          | Reusable checks     | Create ownership or access rules              |
| **13_LearnEvents.sol**            | Blockchain logs     | Notify UI when something happens              |
| **14_LearnPayable.sol**           | Payable functions   | Accept and store ETH in contract              |
| **15_LearnSendETH.sol**           | ETH transfers       | Send ETH safely using call()                  |
| **16_LearnScopes.sol**            | Visibility scope    | Local vs storage variables                    |
| **17_LearnVisibility.sol**        | Function visibility | public / private / internal / external        |
| **18_LearnFunctionModifiers.sol** | Advanced modifiers  | Cleaner require rules                         |
| **19_LearnErrorHandling.sol**     | Revert, require     | Safe fail behavior                            |
| **20_LiskGarden.sol**             | Final project 🎯    | A complete blockchain game                    |

---

## 🌾 Final Project: LiskGarden

### 🎯 Game Concept

A virtual Web3 garden where players:
✅ Plant seeds (pay small ETH fee)
✅ Keep plants alive by watering
✅ Wait real time for growth
✅ Harvest fully-grown plants to earn ETH rewards 🌸💰

Growth happens through **4 stages** using an enum:

```
SEED → SPROUT → GROWING → BLOOMING
```

If water reaches 0 → Plant dies 💀

---

### 🔑 Core Features

| Feature                  | Solidity Concept Used                 |
| ------------------------ | ------------------------------------- |
| Plant data tracking      | Structs + Mappings                    |
| Multiple plants per user | Arrays + Mapping(address → ids)       |
| Growth over time         | block.timestamp                       |
| Water system + death     | Internal calculations + state updates |
| ETH entry fee & rewards  | Payable + balance checking            |
| Events for the UI        | Emit events on plant actions          |
| Security checks          | require() + ownership checks          |

---

### 🧠 Game Logic Flow (Clean Summary)

```
plantSeed() →
  deduct entry fee
  create new plant struct
  store in mapping + arrays
  emit event

updateWaterLevel() →
  reduce water based on time
  if water zero → mark dead + emit event

updatePlantStage() →
  check how long planted
  change stage (if enough time)
  emit event if stage advanced

harvestPlant() →
  require plant is blooming & alive
  remove plant
  send reward ETH
  emit harvest event
```

---

### 💰 Economy Overview

| Action               | ETH Flow                 |
| -------------------- | ------------------------ |
| Plant seed           | Player → Contract        |
| Harvest plant        | Contract → Player reward |
| Owner withdraw funds | Contract → Owner         |

Owner can collect **remaining balance** after rewards.

---

## ✅ Deployment & Testing Checklist

1️⃣ Deploy contract
2️⃣ Send ETH → plantSeed (0.01 ETH recommended)
3️⃣ Wait >3 minutes
4️⃣ updatePlantStage
5️⃣ harvestPlant → receive reward
6️⃣ owner withdraw() → take remaining funds

---

## 🌟 What I Take Away From This Project

📌 Smart contracts are **state machines**
📌 Blockchain doesn’t auto-update — must be triggered
📌 Mappings & structs organize game data
📌 Events power the UI
📌 ETH handling must always check safety
📌 Reverting protects game consistency
📌 Good code structure = better security + readability

This was my first real decentralized game — and my foundation to becoming a blockchain developer 🚀