# 🛰️ Reddit Community Scraper


<p align="center">
  <img src="Reddit-Community-Scraper.png" alt="agent-image-ripper cover" width="50%" style="height: 20rem;">
</p>

![PowerShell](https://img.shields.io/badge/PowerShell-5%2B-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Stable-success)

A **fast, lightweight and comfortable PowerShell tool** to extract Reddit community
(subreddit) names from  
**https://www.reddit.com/best/communities**  
— without using the Reddit API.

---
## Table of Contents

- [Overview](#⭐-overview)
- [Features](#🚀-features)
- [How It Works](#⚙️-how-it-works)
- [Requirements](#📦-requirements)
- [Usage](#▶️-usage)
- [Output](#📤-output)
- [Design Choices](#🧠-design-choices)
- [Typical Use Cases](#🧩-typical-use-cases)
- [Legal Notice](#🔒-legal-notice)
- [License](#📄-license)
- [Repository](#📌-repository)
- [Support](#⭐-support)
- [Roadmap](#🔮-roadmap)


## ⭐ Overview

This project focuses on **simplicity, reliability and transparency**.

It allows you to:
- collect Reddit community names efficiently
- work without API keys or authentication
- generate clean, reusable lists for further processing

The current implementation is written in **PowerShell**, while keeping the project
language-agnostic for future extensions.

---

## 🚀 Features

- Multi-page scraping with user-defined depth
- Automatic duplicate removal
- Clean and readable console output
- End-of-run statistics
- Robust input validation
- User-Agent handling to avoid HTTP 403 responses
- Rate-limit friendly request pacing
- No external dependencies

---

## ⚙️ How It Works

1. User specifies the number of pages to scan
2. Each page is fetched via HTTP request
3. HTML content is parsed locally
4. Subreddit names are extracted
5. Results are:
   - aggregated
   - deduplicated
   - displayed
6. A summary is printed at the end

---

## 📦 Requirements

- PowerShell 5.1+ or PowerShell Core (7.x)
- Internet access
- No additional modules required

---

## ▶️ Usage

```powershell
.\scraper.ps1
Enter the number of pages to scan:
```

## 📤 Output

- List of discovered subreddit names
- Final statistics:
  - Total matches found
  - Unique communities collected



```Text
Sites total        : 20
Unique communities : 5000
```

## 🧠 Design Choices

- **HTML parsing instead of API usage**  
  Stable, anonymous and independent from Reddit API limits

- **Native PowerShell implementation**  
  Ideal for automation, pipelines and further processing

- **Defensive parsing approach**  
  Tolerant against minor Reddit HTML structure changes

---

## 🧩 Typical Use Cases

- OSINT & reconnaissance preparation
- Community and topic mapping
- Keyword and trend research
- Feeding data into other tooling
- Learning practical web parsing in PowerShell

---

## 🔒 Legal Notice

This tool accesses **publicly available content only**  
and performs **no authenticated actions** against Reddit.

---

## 📄 License

MIT License

```text
MIT License

Copyright (c) 2025 AlienTec1908

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
```

## 📌 Repository

🔗 [https://github.com/AlienTec1908/reddit-community-scraper](https://github.com/AlienTec1908/reddit-community-scraper)

---

## ⭐ Support

If you find this project useful:

- ⭐ Star the repository
- 🍴 Fork it
- 🐞 Report issues
- 💡 Suggest improvements

---

## 🔮 Roadmap

- Parallel requests
- Old / New Reddit fallback
- Modular version

- **Community Filtering & Search (in development)**  
  Planned feature to:
  - Filter communities by keywords
  - Exclude certain communities
  - Search for specific communities within the results

---

### Running the script without parameters (default: 5 pages)

```powershell
.\getCommunitiesReddit.ps1

Running the script with a specific number of pages (e.g., 10 pages)
.\getCommunitiesReddit.ps1 -loop 10

Running the script with page count and CSV output
.\getCommunitiesReddit.ps1 -loop 10 -csvOutput "communities.csv"
```
---
- `$loop` → Number of pages to scan
- `$csvOutput` → Path to save the CSV file (optional)
- Console output remains visible as usual

- `$csvOutput` → Path to save the CSV file (optional)
- Console output remains visible as usual
