# 🎓 Final Capstone Submission Report
## Beginner Developer Ecosystem Portfolio (`DeveloperPortfolio`)

| Parameter | Details |
| :--- | :--- |
| **Student Name** | Mayank Bodwal |
| **Roll Number** | 2601730239 |
| **Degree & Program** | B.Tech Computer Science & Engineering (AI/ML) |
| **Current Term** | 1st Year — Semester 1 (Batch 2025–2029) |
| **University** | KR Mangalam University, Sohna, Gurgaon |
| **Email Address** | mayankbodwal03@gmail.com |
| **Phone Number** | +91-8851302103 |
| **GitHub Repository** | [https://github.com/mayank0703/DeveloperPortfolio](https://github.com/mayank0703/DeveloperPortfolio) |
| **Live Portfolio Site** | [https://mayank0703.github.io/DeveloperPortfolio/](https://mayank0703.github.io/DeveloperPortfolio/) |
| **LinkedIn Profile** | [https://www.linkedin.com/in/mayank-bodwal-b0767a400](https://www.linkedin.com/in/mayank-bodwal-b0767a400) |

---

## 🏆 Project Completion & Verification Summary

| Question & Course Outcome | Deliverables | Verification Status |
| :--- | :--- | :---: |
| **Question 1: Linux Commands & System Documentation**<br>*(CO1 — 25 Marks)* | • `Linux/system_profile.md` (Specs + Binary Conversion)<br>• `Linux/commands_output.txt` (`ls`, `ps`, `df`, `free`) | ✅ **VERIFIED & TESTED** |
| **Question 2: Shell Scripting & Automation**<br>*(CO2 — 25 Marks)* | • `ShellScripts/sysinfo.sh` (Report generator)<br>• `ShellScripts/sysinfo_output.txt` (Saved output)<br>• `ShellScripts/backup.sh` (Folder backup + logging)<br>• `Screenshots/backup_demo.png` (Live execution) | ✅ **VERIFIED & TESTED** |
| **Question 3: GitHub Repo & API Interaction**<br>*(CO3 — 25 Marks)* | • `API/github_profile.json` (Real GitHub response)<br>• `API/sample_posts.json` (100 JSONPlaceholder posts)<br>• `API/fetch_api_data.py` (Python automation script)<br>• `API/api_summary.md` (REST API & jq filter docs)<br>• `.gitignore` & 12 Conventional Commits | ✅ **VERIFIED & TESTED** |
| **Question 4: Portfolio & Career Roadmap**<br>*(CO4 — 25 Marks)* | • `Portfolio/resume.pdf` (One-page technical resume)<br>• `Portfolio/learning_roadmap.md` (AI/ML track roadmap)<br>• `Screenshots/github_profile.png` (Pinned repo screenshot)<br>• `Screenshots/linkedin_profile.png` (LinkedIn project screenshot)<br>• `index.html` (GitHub Pages live website) | ✅ **VERIFIED & LIVE (200 OK)** |

---

## 📂 Repository Directory Layout

```text
DeveloperPortfolio/
│
├── .gitignore                          <- Excludes __pycache__/, *.pyc, .env, .DS_Store
├── .nojekyll                           <- GitHub Pages direct static deployment flag
├── index.html                          <- GitHub Pages live portfolio web app
├── README.md                           <- Comprehensive root documentation
│
├── Linux/                              <- Q1 — CO1 (25 Marks)
│   ├── system_profile.md               <- Hardware specifications & binary math
│   └── commands_output.txt             <- Output of ls -la, ps aux, df -h, free -h
│
├── ShellScripts/                       <- Q2 — CO2 (25 Marks)
│   ├── sysinfo.sh                      <- System information report generator
│   ├── sysinfo_output.txt              <- Saved terminal output of sysinfo.sh
│   └── backup.sh                       <- Automated tar.gz folder backup utility
│
├── API/                                <- Q3 — CO3 (25 Marks)
│   ├── api_summary.md                  <- REST API conceptual & technical documentation
│   ├── fetch_api_data.py               <- Python script fetching & validating API endpoints
│   ├── github_profile.json             <- Response from api.github.com/users/mayank0703
│   └── sample_posts.json               <- 100 posts from jsonplaceholder.typicode.com
│
├── Portfolio/                          <- Q4 — CO4 (25 Marks)
│   ├── resume.pdf                      <- One-page ATS-compliant technical resume
│   ├── learning_roadmap.md             <- 8-Semester roadmap focused on AI/ML specialisation
│   └── linkedin_profile.png            <- Supporting LinkedIn profile screenshot
│
└── Screenshots/                        <- Supporting Verification Artefacts
    ├── README.md                       <- Verification evidence index table
    ├── backup_demo.png                 <- Execution & validation of backup.sh
    ├── github_profile.png              <- GitHub profile with pinned DeveloperPortfolio
    ├── linkedin_profile.png            <- LinkedIn profile featuring DeveloperPortfolio project
    ├── git_commit_commands.png         <- Sequential Conventional Commit terminal execution
    └── git_log.png                     <- git log --oneline commit tree verification
```

---

## 🔍 Detailed Deliverables by Question

### Question 1: Linux Commands & System Documentation (CO1)
* **Actual Hardware Profile (`Linux/system_profile.md`):**
  * **Processor:** 13th Gen Intel(R) Core(TM) i7-13645HX (14 physical cores, 20 logical threads)
  * **RAM:** 16 GB Total Physical Memory (7.6 GiB allocated inside WSL2)
  * **Primary Storage:** 1 TB Micron NVMe SSD
  * **OS & Kernel:** Ubuntu 22.04 LTS on Linux Kernel `6.18.58.1-microsoft-standard-WSL2`
* **Binary Conversion Walkthrough:**
  * **Decimal 75 to Binary (Division-by-2 method):**
    $75 \div 2 = 37$ (rem 1) $\rightarrow$ $37 \div 2 = 18$ (rem 1) $\rightarrow$ $18 \div 2 = 9$ (rem 0) $\rightarrow$ $9 \div 2 = 4$ (rem 1) $\rightarrow$ $4 \div 2 = 2$ (rem 0) $\rightarrow$ $2 \div 2 = 1$ (rem 0) $\rightarrow$ $1 \div 2 = 0$ (rem 1)
    $\Rightarrow \mathbf{1001011_2}$
  * **Binary 110101 to Decimal (Positional Weight method):**
    $1 \times 2^5 + 1 \times 2^4 + 0 \times 2^3 + 1 \times 2^2 + 0 \times 2^1 + 1 \times 2^0 = 32 + 16 + 0 + 4 + 0 + 1 = \mathbf{53_{10}}$
  * **Internal Computer Logic:** Explains hardware binary encoding based on transistor ON/OFF states.
* **Commands Output Log (`Linux/commands_output.txt`):** Captures real outputs of `ls -la ~`, `ps aux | head -10`, `df -h`, and `free -h`.

---

### Question 2: Shell Scripting & Automation (CO2)
* **Script 2A (`ShellScripts/sysinfo.sh`):**
  * Generates formatted header with student name, roll number, and live timestamp.
  * Dynamically parses CPU model and core counts via `lscpu`.
  * Extracts total, used, and available memory using `free -h` and `awk`.
  * Queries and tabulates top 3 processes by CPU utilization via `ps aux --sort=-%cpu`.
  * Output captured and saved to `ShellScripts/sysinfo_output.txt`.
* **Script 2B (`ShellScripts/backup.sh`):**
  * Argument validation (exits with syntax guidance if argument missing).
  * Directory validation (verifies source directory existence).
  * Compresses target into `~/DeveloperPortfolio_Backups/backup_YYYY-MM-DD_HH-MM-SS.tar.gz`.
  * Computes archive size using `du -h`.
  * Appends structured audit log to `~/DeveloperPortfolio_Backups/backup.log`.
* **Evidence:** Live execution screenshot saved in `Screenshots/backup_demo.png`.

---

### Question 3: GitHub Repository & API Interaction (CO3)
* **Git Repository Standards:**
  * Hosted publicly under `mayank0703/DeveloperPortfolio`.
  * Root `.gitignore` prevents cluttering (`__pycache__/`, `*.pyc`, `.env`, `.DS_Store`).
  * Commit tree contains 12 well-formed Conventional Commits (`chore:`, `docs:`, `feat:`, `data:`).
* **API Ingestion & Analysis:**
  * Ingested GitHub API profile into `API/github_profile.json`.
  * Filtered fields using `jq`:
    ```bash
    cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
    ```
  * Ingested 100 posts from JSONPlaceholder into `API/sample_posts.json` and verified with `jq length`.
  * Implemented `API/fetch_api_data.py` (Python automation for automated testing).
  * Documented REST architecture and HTTP status codes (200 vs 404) in `API/api_summary.md`.

---

### Question 4: Portfolio & Career Roadmap (CO4)
* **Part A — Technical Resume (`Portfolio/resume.pdf`):**
  * Professional 1-page PDF generated and committed to the repository.
  * Includes Contact links (GitHub, LinkedIn, Email), B.Tech CSE (AI/ML) Education, Technical Skills matrix, and DeveloperPortfolio project summary.
* **Part B — Learning Roadmap (`Portfolio/learning_roadmap.md`):**
  * **Semester 1:** Linux administration, Bash automation, Git/GitHub, REST APIs, Python basics.
  * **Semester 2:** Data Structures & Algorithms, Database Management Systems (SQL), Web fundamentals, and target certification: **Google IT Automation with Python Professional Certificate**.
  * **Semesters 3–8:** Core AI/ML specialisation (Linear Algebra, Supervised/Unsupervised ML, Deep Learning, NLP, Computer Vision, MLOps, Capstone & Industry Internships).
* **Part C — Professional Profiles:**
  * GitHub profile completed with bio, university name, skills, and pinned `DeveloperPortfolio` repository (`Screenshots/github_profile.png`).
  * LinkedIn profile updated with headline, education, and `DeveloperPortfolio` project card (`Screenshots/linkedin_profile.png` & `Portfolio/linkedin_profile.png`).
* **Part D — GitHub Pages Web App (`index.html`):**
  * Modern, responsive dark-theme developer portfolio website.
  * Sections: Header, About Me, Technical Skills badges, DeveloperPortfolio showcase, Contact links.
  * Deployed via GitHub Pages at: **`https://mayank0703.github.io/DeveloperPortfolio/`** (Status: **200 OK**).

---

## 🖥️ Live Evaluation Quick Commands for Faculty

Keep your Linux/WSL terminal open inside `~/DeveloperPortfolio` and your browser tabs ready during evaluation:

```bash
# 1. Show commit history (at least 8 conventional commits required)
git log --oneline

# 2. Run system information script
./ShellScripts/sysinfo.sh

# 3. Run and test folder backup script
./ShellScripts/backup.sh ~/DeveloperPortfolio
cat ~/DeveloperPortfolio_Backups/backup.log

# 4. Demonstrate API JSON parsing with jq
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
cat API/sample_posts.json | jq length

# 5. Run Python API automation script
python3 API/fetch_api_data.py
```

---

> **Prepared for Faculty Evaluation**  
> *Mayank Bodwal — B.Tech CSE (AI/ML), KR Mangalam University*
