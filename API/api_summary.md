# API Interaction Summary — Mayank Bodwal (2601730239)

> **Date:** 25 November 2026  
> **Tools Used:** `curl`, `jq`

---

## 📡 What is a REST API?

A **REST API** (Representational State Transfer Application Programming Interface) is a set of rules that allows different software applications to communicate with each other over the internet using standard HTTP methods like GET, POST, PUT, and DELETE. When you send a request to a REST API endpoint (a specific URL), the server processes it and returns data — usually in JSON format — that your application can then use. REST APIs are stateless, meaning each request from a client contains all the information needed for the server to fulfil it, without relying on any stored session data.

---

## 📋 HTTP Status Codes Observed

| Status Code | Meaning | When It Occurs |
|-------------|---------|----------------|
| **200 OK** | The request was successful and the server returned the requested data. | We received `200 OK` when fetching our GitHub profile (`api.github.com/users/mayank0703`) and when fetching posts from JSONPlaceholder (`jsonplaceholder.typicode.com/posts`). |
| **404 Not Found** | The requested resource does not exist on the server. | A `404` would occur if we used an incorrect username in the GitHub API URL (e.g., `api.github.com/users/nonexistentuser123xyz`), because no matching user profile exists. |

---

## 🔍 jq Filter Used and Explanation

### Filter Command

```bash
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```

### Breakdown

| Part | What It Does |
|------|-------------|
| `cat API/github_profile.json` | Reads the saved JSON file and sends its content to the next command via a pipe. |
| `\|` | The pipe operator passes the output of `cat` as input to `jq`. |
| `jq '{...}'` | `jq` is a command-line JSON processor. The curly braces `{}` tell it to construct a **new JSON object**. |
| `name:.name` | Creates a field called `name` and fills it with the value of the `.name` key from the original JSON. |
| `repos:.public_repos` | Creates a field called `repos` with the value of `.public_repos` (the number of public repositories). |
| `followers:.followers` | Extracts the follower count into a field called `followers`. |
| `joined:.created_at` | Extracts the account creation date into a field called `joined`. |

### Sample Output

```json
{
  "name": "Mayank Bodwal",
  "repos": 3,
  "followers": 2,
  "joined": "2025-08-15T10:30:00Z"
}
```

---

## 📊 JSONPlaceholder Posts Summary

- **Endpoint used:** `https://jsonplaceholder.typicode.com/posts`
- **Total posts fetched:** 100 (confirmed using `jq length`)
- **Data format:** JSON array of objects, each containing `userId`, `id`, `title`, and `body` fields.

---

## 🧪 Commands Used

```bash
# Task B1: Fetch GitHub profile
curl https://api.github.com/users/mayank0703 > API/github_profile.json

# Task B2: Extract specific fields
cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

# Task B3: Fetch JSONPlaceholder posts
curl https://jsonplaceholder.typicode.com/posts > API/sample_posts.json
cat API/sample_posts.json | jq length

# Output: 100
```
