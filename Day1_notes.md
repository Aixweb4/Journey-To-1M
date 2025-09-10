# 📘 Day 1 Notes (Hindi)

## Chapter 1: Zombie Factory
- **Contract kya hai?**  
  - Solidity me contract = ek class jaisa hota hai.  
  - Ye blockchain par code aur data store karta hai.  

- **Variables:**  
  - `uint` = unsigned integer (sirf positive numbers).  
  - Example:  
    ```solidity
    uint dnaDigits = 16;
    ```

---

## Chapter 2: Math Operations
- Solidity me `+`, `-`, `*`, `/` operators use hote hain.  
- **Power of 10 nikalna**:  
  ```solidity
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits; // 10 ki power 16
