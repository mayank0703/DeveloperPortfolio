# System Profile — Mayank Bodwal (2601730239)

> **Date:** 25 November 2026  
> **OS Environment:** Ubuntu 22.04 LTS (via WSL / Native Linux)

---

## 🖥️ Hardware Specifications

The following specifications were collected using terminal commands: `lscpu`, `free -h`, `lsblk`, and `uname -a`.

| Component | Specification |
|-----------|---------------|
| **CPU Model Name** | 13th Gen Intel(R) Core(TM) i7-13645HX |
| **Number of Cores** | 14 (20 threads) |
| **Total RAM** | 16 GB |
| **Available RAM** | 13.6 GB |
| **Primary Storage Size** | 1 TB |
| **Storage Type** | SSD (NVMe) |
| **Operating System** | Ubuntu 22.04.3 LTS |
| **Kernel Version** | 5.15.153.1-microsoft-standard-WSL2 |

### Commands Used

```bash
lscpu                # CPU model, cores, architecture
free -h              # RAM total and available
lsblk                # Storage devices, sizes, types
uname -a             # OS name and kernel version
```

---

## 🔢 Binary Number Representation

### Decimal 75 → Binary (Division-by-2 Method)

We repeatedly divide the decimal number by 2 and record the remainder at each step. The binary result is obtained by reading the remainders **from bottom to top**.

| Step | Division | Quotient | Remainder |
|------|----------|----------|-----------|
| 1 | 75 ÷ 2 | 37 | **1** |
| 2 | 37 ÷ 2 | 18 | **1** |
| 3 | 18 ÷ 2 | 9 | **0** |
| 4 | 9 ÷ 2 | 4 | **1** |
| 5 | 4 ÷ 2 | 2 | **0** |
| 6 | 2 ÷ 2 | 1 | **0** |
| 7 | 1 ÷ 2 | 0 | **1** |

📌 **Reading remainders bottom → top: `1001011`**

✅ **Result: (75)₁₀ = (1001011)₂**

---

### Binary 110101 → Decimal (Positional Weight Method)

Each binary digit is multiplied by its positional power of 2 (starting from 2⁰ on the right).

| Position (left→right) | Bit | Weight (2ⁿ) | Value |
|------------------------|-----|-------------|-------|
| 5 | 1 | 2⁵ = 32 | 32 |
| 4 | 1 | 2⁴ = 16 | 16 |
| 3 | 0 | 2³ = 8 | 0 |
| 2 | 1 | 2² = 4 | 4 |
| 1 | 0 | 2¹ = 2 | 0 |
| 0 | 1 | 2⁰ = 1 | 1 |

**Calculation:** 32 + 16 + 0 + 4 + 0 + 1 = **53**

✅ **Result: (110101)₂ = (53)₁₀**

---

### Why Do Computers Use Binary?

Computers use binary (base-2) internally because their electronic circuits are built from transistors that have only two stable states — **ON (1)** and **OFF (0)** — making binary the most reliable and efficient number system for digital hardware to process, store, and transmit data.
