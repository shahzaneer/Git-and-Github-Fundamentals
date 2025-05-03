

# 🔁 `git revert` – Understand It in Simple Terms

## ✅ What is `git revert`?

`git revert` is used to **undo a specific commit** by creating a new commit that **reverses the changes** made in the original one.

It **does NOT delete history**, which makes it **safe for public branches**.

---

## 📌 Think of It Like This:

- `git reset` goes back in time and **removes commits** (dangerous if pushed).
- `git revert` **adds a new commit** that **undoes** what was done earlier.

---

## 🧠 Why Use `git revert`?

- You made a mistake in a commit that’s already pushed.
- You want to undo the effect **without deleting history**.
- You’re working in a **team** or on a **main branch**, and need a safe way to fix things.

---

## ⚙️ Syntax

```bash
git revert <commit-hash>
````

This creates a **new commit** that undoes the changes made by the target commit.

---

## 🧪 Examples with Case Studies

---

### 🔹 Case 1: Reverting a Buggy Commit

You made this commit:

```bash
git commit -m "Add login feature"
```

Later you find out it broke something. You don’t want to remove the commit but undo its changes.

```bash
git log --oneline
# e.g., abc123 Add login feature

git revert abc123
```

✅ This creates a new commit like:

```
Revert "Add login feature"
```

This **undoes the code changes** introduced by that commit.

---

### 🔹 Case 2: Reverting Multiple Commits

You made 3 wrong commits in a row and want to undo them all.

```bash
git log --oneline
# def789 Fix UI bug
# abc123 Add login feature
# 999aaa Update dependencies
```

```bash
git revert 999aaa abc123 def789
```

✅ This will create **3 new commits**, each reversing one of the commits above.

---

### 🔹 Case 3: Reverting a Merge Commit

If you try to revert a **merge commit**, you need to add a flag:

```bash
git revert -m 1 <merge-commit-hash>
```

`-m 1` means: use the 1st parent of the merge commit (usually the main branch).

> ⚠️ Be very careful when reverting merge commits. It can get messy.

---

## 🧼 What Happens Under the Hood?

Let’s say:

```
A -- B -- C (HEAD)
         ↑
       Bug here
```

Now run:

```bash
git revert C
```

Git creates:

```
A -- B -- C -- C' (HEAD)
               ↑
     Undo of commit C
```

So the history is still safe and linear.

---

## 🛡️ Summary: When Should You Use Revert?

| Situation                     | Use Revert?   | Use Reset?  |
| ----------------------------- | ------------- | ----------- |
| Undo pushed commits           | ✅ Safe        | ❌ Dangerous |
| Working alone, not pushed yet | ✅ Okay        | ✅ Better    |
| On shared/main branch         | ✅ Best choice | ❌ Avoid     |
| Want to keep history clean    | ✅ Yes         | ❌ No        |

---

## 💡 Extra Tip

If revert causes merge conflicts, Git will ask you to fix them before finishing. After resolving:

```bash
git add .
git revert --continue
```

---

## Final Word

* `git revert` = **safe undo**
* Does not remove commits
* Just creates a new commit that cancels changes
* Great for teamwork and main branches

