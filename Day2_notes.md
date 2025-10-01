# Day 2 Notes

## Ch-4: Zombie Battle System
- Zombies ab ek dusre se fight karte hai.
- Har zombie ka win aur lose record rakha jata hai.
- Random winner decide karne ke liye `keccak256` hashing function aur `%` ka use hota hai.
- Agar zombie jeet jaye → uska **level up** hota hai.
- Agar zombie haar jaye → zombie **cooldown** par chala jata hai (thodi der wait karna padta hai).

---

## Ch-5: Zombie Feeding (DNA Mixing)
- Zombie CryptoKitties ko “feed” karta hai.
- Feeding ke baad ek **new zombie** banta hai.
- New zombie ka DNA = (Zombie DNA + Kitty DNA) → dono ka mix.
- Randomness ke liye `keccak256` hash function ka use hota hai.
- Is feature se game unique aur fun banti hai.

---

## Ch-6: ERC721 & Zombie Ownership
- ERC721 ek **NFT standard token** hai jo unique assets represent karta hai.
- Har zombie ek **NFT** hai (duplicate nhi ho sakta).
- Zombie owner ke wallet me store hota hai.
- Owner apne zombie ko **transfer, sell, ya trade** kar sakta hai.
- Is step ke baad game blockchain standard follow karti hai.
