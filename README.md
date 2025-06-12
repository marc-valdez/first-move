# 🧠 Move Basics on Aptos

Welcome to this repository! This project introduces the **core concepts of the Move language on the Aptos blockchain** through three modules:

- `basic_concepts.move`
- `counter.move`
- `primitive.move`

These examples are designed to help you learn and teach Move development in a clear, modular way — with real code you can deploy and test.

---

## 📦 Modules Overview

### `basic_concepts.move`
This file introduces:
- **Structs** (custom data types)
- **Resources** (unique assets)
- **Functions** for creating, moving, and storing resources

It’s meant to show the fundamentals of how data is structured and handled in Move.

---

### `counter.move`
This file is a practical example of:
- Defining a resource called `Counter`
- Creating and storing a `Counter` per user
- Incrementing and reading the counter value

You’ll learn how to write reusable modules and safely mutate on-chain data.

---

### `primitive.move`
This file explores:
- Move’s **primitive types** like `u8`, `u64`, `bool`, and `address`
- How to use these types inside structs and functions
- Example logic around math, comparisons, and conditionals

---

## 🛠️ Getting Started

### ✅ Prerequisites
- Aptos CLI installed: https://aptos.dev/guides/aptos_cli/
- Aptos account created: `aptos init`
- Fund your devnet account (via faucet): `aptos account fund --account <your-address>`

---

## 🧪 How to Compile & Deploy

### Step 1: Set Up Address Name
Open `Move.toml` and define your address like this:
```toml
[addresses]
my_address = "_"
```

> `_` is a placeholder that you’ll replace at build/deploy time.

---

### Step 2: Compile the Code
```bash
aptos move compile --named-addresses my_address=0xYourAccountAddress
```

This builds the Move code and replaces the placeholder address with yours.

---

### Step 3: Deploy as an Object
```bash
aptos move deploy-object --named-addresses my_address=0xYourAccountAddress
```

You’ll see something like:
> "Do you want to publish this package at object address 0xObjectAddress?"

Say **yes**. This creates a new **object** (a special address that holds your module) and publishes your smart contract code to it.

---

## 💡 Why Use Object Deployment?

Using `deploy-object` is the modern way to:
- Dynamically deploy logic
- Enable upgradeability
- Separate contract code from your main account

This keeps your blockchain interactions modular and future-proof.

---

## ✍️ Suggested Interactions

Once deployed, try calling:
- `counter::create()`
- `counter::increment()`
- `counter::get_value()`  

Use the Aptos CLI or a frontend (e.g. Aptos Explorer or Typescript SDK) to interact.

---

## 🤝 Contributions

Feel free to fork, clone, and build on top of these examples. PRs are welcome if you want to contribute more teaching examples!

---

## 🧑‍🏫 Perfect for Workshops & Tutorials

This repo is intentionally beginner-friendly, and ideal for:
- Developer workshops
- Bootcamp sessions
- Personal learning

Happy building with Move! 🚀