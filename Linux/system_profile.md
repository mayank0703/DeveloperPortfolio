# System Profile — Mayank Bodwal (2601730239)

> **Date:** 25 November 2026  
> **Course:** B.Tech CSE (AI/ML) — Semester 1  
> **University:** KR Mangalam University, Sohna, Gurgaon  
> **OS Environment:** Ubuntu 26.04.1 LTS (via WSL2 / Linux Terminal)

---

## 🖥️ Workstation Hardware Specifications

The hardware specifications were collected using terminal commands (`lscpu`, `free -h`, `lsblk`, `uname -a`) on the developer workstation.

| Component | Specification |
| :--- | :--- |
| **CPU Model Name** | 13th Gen Intel(R) Core(TM) i7-13645HX |
| **Number of Cores** | 14 Physical Cores (20 Logical Processors / Threads) |
| **Total RAM** | 16 GB Physical Memory (7.6 GiB allocated to WSL2 environment) |
| **Available RAM** | 7.1 GiB Available inside active Linux session |
| **Primary Storage Size** | 1 TB (954 GB accessible capacity) |
| **Primary Storage Type** | NVMe Solid State Drive (SSD) — Micron MTFDKCD1T0QGN |
| **Operating System** | Ubuntu 26.04.1 LTS (x86_64) |
| **Kernel Version** | 6.18.58.1-microsoft-standard-WSL2 |

### Terminal Commands Used to Extract Specifications

```bash
# 1. CPU Model Name & Core Count
lscpu | grep -E "Model name|CPU\(s\):|Core\(s\) per socket:"

# 2. Total & Available Memory
free -h

# 3. Storage Size and Disk Type (NVMe / SSD)
lsblk -d -o NAME,SIZE,TYPE,MODEL

# 4. Operating System and Kernel Version
uname -a
```

---

## 🔢 Binary Number Representation

### 1. Decimal 75 to Binary Conversion (Repeated Division-by-2 Method)

To convert a decimal integer to binary, we repeatedly divide the number by 2 and record the quotient and remainder at each step. The final binary representation is read from the **bottom-most remainder (Most Significant Bit) to the topmost remainder (Least Significant Bit)**.

| Step | Division | Quotient | Remainder (Bit) | Bit Position |
| :---: | :---: | :---: | :---: | :---: |
| 1 | 75 ÷ 2 | 37 | **1** | $2^0$ (LSB) |
| 2 | 37 ÷ 2 | 18 | **1** | $2^1$ |
| 3 | 18 ÷ 2 | 9 | **0** | $2^2$ |
| 4 | 9 ÷ 2 | 4 | **1** | $2^3$ |
| 5 | 4 ÷ 2 | 2 | **0** | $2^4$ |
| 6 | 2 ÷ 2 | 1 | **0** | $2^5$ |
| 7 | 1 ÷ 2 | 0 | **1** | $2^6$ (MSB) |

📌 **Reading remainders bottom to top:** `1` `0` `0` `1` `0` `1` `1`  
✅ **Result:** $(75)_{10} = (1001011)_2$

---

### 2. Binary 110101 to Decimal Conversion (Positional Weight Method)

In binary (base-2), each bit represents a power of 2 depending on its position (starting from index 0 on the far right). Multiply each bit by its positional weight ($2^n$) and sum the resulting values.

| Bit Index ($n$) | Binary Digit ($b_n$) | Positional Weight ($2^n$) | Calculation | Value |
| :---: | :---: | :---: | :---: | :---: |
| 5 | **1** | $2^5$ | $1 \times 32$ | 32 |
| 4 | **1** | $2^4$ | $1 \times 16$ | 16 |
| 3 | **0** | $2^3$ | $0 \times 8$ | 0 |
| 2 | **1** | $2^2$ | $1 \times 4$ | 4 |
| 1 | **0** | $2^1$ | $0 \times 2$ | 0 |
| 0 | **1** | $2^0$ | $1 \times 1$ | 1 |

$$\text{Decimal Value} = 32 + 16 + 0 + 4 + 0 + 1 = \mathbf{53}$$  
✅ **Result:** $(110101)_2 = (53)_{10}$

---

### 3. Why Do Computers Use Binary Internally?

Computers use binary internally because digital microprocessors are constructed from billions of microscopic transistors that operate as electronic switches with only two stable physical states: **ON (conductive / high voltage, representing binary 1)** and **OFF (non-conductive / ground voltage, representing binary 0)**; using two discrete states provides maximum noise tolerance and reliability against voltage fluctuations in digital circuits.
