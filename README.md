# 🛰️ Reddit Community Scraper

![PowerShell](https://img.shields.io/badge/PowerShell-5%2B-blue)
![Platform](https://img.shields.io/badge/Platform-Windows%20%7C%20Linux%20%7C%20macOS-lightgrey)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Stable-success)

A **fast, lightweight and comfortable PowerShell tool** to extract Reddit community
(subreddit) names from  
**https://www.reddit.com/best/communities**  
— without using the Reddit API.

---

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
