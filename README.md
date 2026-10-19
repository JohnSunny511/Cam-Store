# 📷 CamStore — Camera E-Commerce Platform

> A full-stack camera e-commerce web application built with **ASP.NET Web Forms**, **C#**, **SQL Server**, and **WCF Services**. Features role-based access (Admin & User), shopping cart, order & billing system, account-based payment via a WCF microservice, and a feedback/review system.

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Architecture](#-architecture)
- [Tech Stack](#-tech-stack)
- [Features](#-features)
- [Database Schema](#-database-schema)
- [Project Structure](#-project-structure)
- [How to Run](#-how-to-run)
- [Screenshots & Pages](#-screenshots--pages)
- [Technical Details](#-technical-details)

---

## 🔍 Project Overview

**CamStore** is a fully functional e-commerce platform dedicated to cameras. It allows users to browse camera products by category, view detailed product information, add items to a shopping cart, place orders, generate bills, and make payments — all through a clean, Bootstrap-powered UI.

The platform supports **two user roles**:
- **Admin** — Manages products, categories, user accounts, and reviews feedback.
- **User** — Browses, shops, places orders, pays, and submits feedback.

A separate **WCF (Windows Communication Foundation) microservice** handles balance checking and payment deductions, demonstrating a **Service-Oriented Architecture (SOA)** approach.

---

## 🏗 Architecture

```
┌──────────────────────────────────────────────────────────────┐
│                      CLIENT (Browser)                        │
│              HTML / CSS / Bootstrap 5 / JS                   │
└──────────────┬───────────────────────────────┬───────────────┘
               │                               │
               ▼                               ▼
┌──────────────────────────┐   ┌───────────────────────────────┐
│   CamStore Web App       │   │  AccountBalanceFetch           │
│   (ASP.NET Web Forms)    │──▶│  (WCF Service)                │
│                          │   │                               │
│  • Master Pages (UI)     │   │  • IService.cs (Contract)     │
│  • .aspx Pages (Views)   │   │  • Service.cs (Implementation)│
│  • .aspx.cs (Code-Behind)│   │  • BasicHttpBinding           │
│  • ConClass.cs (DAL)     │   │                               │
└──────────┬───────────────┘   └──────────┬────────────────────┘
           │                              │
           ▼                              ▼
┌──────────────────────────────────────────────────────────────┐
│                  SQL Server (CamStore DB)                     │
│                                                              │
│  Tables: login, usertb, product, category, cart,             │
│          orderr, bill, feedback, account                     │
└──────────────────────────────────────────────────────────────┘
```

### Architectural Highlights

| Aspect | Detail |
|---|---|
| **Pattern** | Code-Behind (Page Controller) with a centralized Data Access Layer (`ConClass.cs`) |
| **UI Layer** | ASP.NET Master Pages (`Site1.Master` for users, `Admin.Master` for admins) with Bootstrap 5 |
| **Service Layer** | WCF Service (`AccountBalanceFetch`) exposed via `BasicHttpBinding` for balance operations |
| **Data Layer** | ADO.NET — `SqlConnection`, `SqlCommand`, `SqlDataAdapter`, `SqlDataReader` |
| **State Management** | ASP.NET Session State (`Session["regid"]`, `Session["username"]`, `Session["gtotal"]`) |
| **Hosting** | IIS Express (development) on .NET Framework 4.7.2 |

---

## 🛠 Tech Stack

| Layer | Technology |
|---|---|
| **Language** | C# |
| **Framework** | ASP.NET Web Forms (.NET Framework 4.7.2) |
| **Frontend** | HTML5, CSS3, Bootstrap 5.3.3, JavaScript |
| **Database** | Microsoft SQL Server (SQL Express) |
| **ORM / Data Access** | Raw ADO.NET (SqlConnection, SqlCommand, SqlDataAdapter) |
| **Microservice** | WCF (Windows Communication Foundation) — BasicHttpBinding |
| **IDE** | Visual Studio 2019+ |
| **Server** | IIS Express (Dev), IIS (Production) |
| **Package Manager** | NuGet |

---

## ✨ Features

### 👤 User Side
- **Registration & Login** — Users register with personal details and log in with credentials
- **Browse by Category** — View cameras grouped by category (DSLR, Mirrorless, Action, Digital, etc.)
- **Product Details** — View product image, description, price, and stock with quantity selector
- **Shopping Cart** — Add products, edit quantities, remove items, view subtotals
- **Order & Billing** — Place orders from cart, auto-generate bills with grand total
- **Payment** — Add bank account, check balance via WCF service, and pay; stock auto-decrements on successful payment
- **Feedback** — Submit feedback for any product; admin can reply

### 🔧 Admin Side
- **Dashboard** — Quick-access cards to all management functions
- **Category Management** — Add new categories, edit/update existing ones
- **Product Management** — Add products with images, price, stock, description; edit/update products
- **User Management** — View all registered users, activate/deactivate user accounts
- **Feedback Management** — View all user feedback, reply to feedback, mark as reviewed
- **Session-Based Auth** — Role-based redirection (admin → `admin-home.aspx`, user → `User-Home.aspx`)

---

## 🗄 Database Schema

The application uses the **CamStore** SQL Server database with the following core tables:

| Table | Purpose |
|---|---|
| `login` | Stores user credentials (`username`, `password`, `log_type`, `reg_id`) |
| `usertb` | User profile data (`user_id`, `username`, `phone`, `user_status`) |
| `category` | Product categories |
| `product` | Product catalog (`product_id`, `product_name`, `price`, `stock`, `product_image`, `product_description`) |
| `cart` | User shopping cart (`cart_id`, `product_id`, `user_id`, `quantity`, `subtotal`, `cart_status`, `date`) |
| `orderr` | Orders placed by users (`user_id`, `product_id`, `order_quantity`, `order_subtotal`, `order_status`, `order_date`) |
| `bill` | Generated bills (`bill_id`, `user_id`, `grand_total`, `bill_date`) |
| `feedback` | User feedback per product (`feedback_msg`, `reply_msg`, `feedback_status`, `feedback_date`) |
| `account` | Bank accounts for payment (`acc_id`, `user_id`, `acc_type`, `acc_num`, `bal_amount`) |

---

## 📁 Project Structure

```
Cam-Store/
│
├── CamStore/                          # Main Web Application Solution
│   ├── CamStore.sln                   # Visual Studio Solution File
│   └── CamStore/                      # Web Application Project
│       ├── ConClass.cs                # 🔌 Data Access Layer (ADO.NET helper)
│       ├── Web.config                 # App configuration + WCF client endpoint
│       │
│       ├── Site1.Master               # 🎨 User-facing Master Page (navbar, footer)
│       ├── Admin.Master               # 🎨 Admin-facing Master Page
│       ├── style.css                  # Custom stylesheet
│       │
│       ├── index.html                 # Landing page (static)
│       ├── Login.aspx / .cs           # Login (role-based redirect)
│       ├── user-reg.aspx / .cs        # User registration
│       ├── admin-reg.aspx / .cs       # Admin registration
│       │
│       ├── User-Home.aspx / .cs       # User dashboard — browse categories
│       ├── Products.aspx / .cs        # Product listing by category
│       ├── ProductDetails.aspx / .cs  # Product detail + add to cart
│       ├── Cart.aspx / .cs            # Shopping cart management
│       ├── ViewBill.aspx / .cs        # Order summary / bill generation
│       ├── Payment.aspx / .cs         # Payment processing (WCF integration)
│       ├── Feedback.aspx / .cs        # Submit feedback
│       │
│       ├── admin-home.aspx / .cs      # Admin dashboard
│       ├── Add_Category.aspx / .cs    # Add new category
│       ├── Add_Product.aspx / .cs     # Add new product
│       ├── admin_edit_category.aspx   # Edit categories
│       ├── admin_edit_product.aspx    # Edit products
│       ├── ManageUsers.aspx / .cs     # Activate/deactivate users
│       ├── ViewFeedBack.aspx / .cs    # View & reply to feedback
│       │
│       ├── photos/                    # Product & UI images
│       └── Connected Services/AccBal/ # WCF service reference (proxy)
│
├── AccountBalanceFetch/               # WCF Microservice Solution
│   ├── AccountBalanceFetch.sln
│   └── AccountBalanceFetch/
│       ├── Service.svc                # WCF service endpoint
│       ├── App_Code/
│       │   ├── IService.cs            # Service contract (CheckBalance, UpdateBalance)
│       │   └── Service.cs             # Service implementation (ADO.NET → account table)
│       └── Web.config                 # WCF hosting configuration
│
├── CamStore.bak                       # SQL Server database backup
└── .gitignore
```

---

## 🚀 How to Run

### Prerequisites
- **Visual Studio 2019+** (with ASP.NET and web development workload)
- **SQL Server** (Express or higher)
- **.NET Framework 4.7.2** runtime

### Steps

1. **Restore the Database**
   - Open SQL Server Management Studio (SSMS)
   - Right-click **Databases** → **Restore Database**
   - Select **Device** → Browse → Choose `CamStore.bak` from the project root
   - Restore the database

2. **Update Connection Strings**
   - Open `CamStore/CamStore/ConClass.cs` — update the `server=` value to your SQL Server instance name
   - Open `AccountBalanceFetch/AccountBalanceFetch/App_Code/Service.cs` — update the same

3. **Open & Run the WCF Service**
   - Open `AccountBalanceFetch/AccountBalanceFetch.sln` in Visual Studio
   - Press **F5** or **Ctrl+F5** — note the localhost port (default: `56601`)

4. **Open & Run the Web App**
   - Open `CamStore/CamStore.sln` in Visual Studio
   - Verify the WCF endpoint in `Web.config` matches the running service port
   - Press **F5** — the app launches in your browser

5. **Login**
   - Use admin or user credentials from the restored database, or register a new account

---

## 📄 Screenshots & Pages

| Page | Route | Description |
|---|---|---|
| Landing | `index.html` | Static landing page with hero carousel |
| Login | `Login.aspx` | Unified login for admin & user |
| User Home | `User-Home.aspx` | Browse camera categories |
| Products | `Products.aspx` | Category-filtered product grid |
| Product Detail | `ProductDetails.aspx` | Image, price, stock, add to cart |
| Cart | `Cart.aspx` | Edit quantities, remove items, checkout |
| Bill | `ViewBill.aspx` | Order summary with grand total |
| Payment | `Payment.aspx` | Account-based payment via WCF |
| Feedback | `Feedback.aspx` | Submit product feedback |
| Admin Home | `admin-home.aspx` | Admin dashboard with quick-access cards |
| Add Category | `Add_Category.aspx` | Create new product category |
| Add Product | `Add_Product.aspx` | Create new product listing |
| Manage Users | `ManageUsers.aspx` | Activate/deactivate users |
| View Feedback | `ViewFeedBack.aspx` | Admin view & reply to feedback |

---

## 🔑 Technical Details

### Data Access Layer (`ConClass.cs`)
A centralized ADO.NET helper class providing four core methods:
- `fn_ExecuteNonQuery()` — INSERT, UPDATE, DELETE operations
- `fn_ExeScalar()` — Single-value SELECT queries
- `fn_Adapter_DataSet()` — DataSet-based queries for GridView binding
- `fn_exereader()` — SqlDataReader for row-by-row iteration

### WCF Service Integration
The **AccountBalanceFetch** service exposes two operations via `BasicHttpBinding`:
- `CheckBalance(long accno)` → Returns the account balance
- `UpdateBalance(long accno, int bal)` → Updates the balance after payment

The CamStore web app consumes this service through a **Connected Service reference** (`AccBal`), making SOAP-based calls during payment processing.

### Session Management
- `Session["regid"]` — Logged-in user's registration ID
- `Session["username"]` — Logged-in user's display name
- `Session["pro_id"]` — Currently viewed product ID
- `Session["gtotal"]` — Grand total for current order (passed to payment page)

### Role-Based Access Control
Login checks the `log_type` field from the `login` table:
- `"admin"` → Redirects to `admin-home.aspx` (uses `Admin.Master`)
- `"user"` → Checks `user_status`; if active, redirects to `User-Home.aspx` (uses `Site1.Master`)

---

