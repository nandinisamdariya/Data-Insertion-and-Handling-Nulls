# Task 2 – Data Insertion and Handling Nulls (SQL)

## 📌 Description

This project demonstrates a practical use of SQL for:
- Creating a table
- Inserting data with `NULL` and `DEFAULT` values
- Handling missing data using `UPDATE`
- Deleting inconsistent or unwanted data
- Final result display using `SELECT`

---

## 🧾 File Included

- `task2_data_insertion.sql` – SQL script with all queries

---

## 🛠️ Operations Performed

### 🔹 Table Creation
A table named `employees` is created with columns like:
- `id` (Primary Key)
- `name`
- `department`
- `email` (with default value)
- `manager_id`

### 🔹 Insertions
Employees are inserted with some missing `email`, `department`, and `manager_id`.

### 🔹 Handling NULLs
- `NULL` departments are updated to `"Unassigned"`
- `NULL` emails are filled with the default `"not_provided@example.com"`
- `NULL` manager IDs (except for top-level manager) are assigned to `1`

### 🔹 Deletions
Rows with `department = 'Unassigned'` are deleted for data cleanliness.

### 🔹 Final Output
`SELECT * FROM employees;` is used to display the final cleaned dataset.

---

## ✅ How to Use

1. Open MySQL Workbench
2. Set your schema (e.g., `task2_db`)
3. Open the `task2_data_insertion.sql` file
4. Run the script step-by-step or all at once
5. View the output using:
   ```sql
   SELECT * FROM employees;
