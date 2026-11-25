#!/usr/bin/env python3
"""
fetch_api_data.py — GitHub and JSONPlaceholder API Data Fetcher
Author: Mayank Bodwal (2601730239)
Course: B.Tech CSE (AI/ML) — Semester 1
University: KR Mangalam University, Sohna, Gurgaon
Description: Fetches GitHub profile data and JSONPlaceholder posts using Python's
             standard urllib and json libraries, extracts metrics, and saves outputs.
"""

import json
import os
import urllib.request

USERNAME = "mayank0703"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))


def fetch_github_profile():
    url = f"https://api.github.com/users/{USERNAME}"
    headers = {"User-Agent": "DeveloperPortfolio-Script"}
    req = urllib.request.Request(url, headers=headers)
    print(f"[+] Fetching GitHub profile for: {USERNAME}...")
    try:
        with urllib.request.urlopen(req) as response:
            if response.status == 200:
                data = json.loads(response.read().decode("utf-8"))
                output_file = os.path.join(SCRIPT_DIR, "github_profile.json")
                with open(output_file, "w", encoding="utf-8") as f:
                    json.dump(data, f, indent=2)
                print(f"    Successfully saved to: {output_file}")
                print(f"    Name: {data.get('name')}")
                print(f"    Public Repos: {data.get('public_repos')}")
                print(f"    Followers: {data.get('followers')}")
                print(f"    Created At: {data.get('created_at')}")
    except Exception as e:
        print(f"    Error fetching GitHub profile: {e}")


def fetch_sample_posts():
    url = "https://jsonplaceholder.typicode.com/posts"
    headers = {"User-Agent": "DeveloperPortfolio-Script"}
    req = urllib.request.Request(url, headers=headers)
    print("\n[+] Fetching posts from JSONPlaceholder...")
    try:
        with urllib.request.urlopen(req) as response:
            if response.status == 200:
                posts = json.loads(response.read().decode("utf-8"))
                output_file = os.path.join(SCRIPT_DIR, "sample_posts.json")
                with open(output_file, "w", encoding="utf-8") as f:
                    json.dump(posts, f, indent=2)
                print(f"    Successfully saved to: {output_file}")
                print(f"    Total Posts Fetched: {len(posts)}")
    except Exception as e:
        print(f"    Error fetching posts: {e}")


if __name__ == "__main__":
    print("=" * 60)
    print("  API Data Fetcher — Mayank Bodwal (2601730239)")
    print("=" * 60)
    fetch_github_profile()
    fetch_sample_posts()
    print("=" * 60)
    print("  API fetch completed successfully.")
    print("=" * 60)
