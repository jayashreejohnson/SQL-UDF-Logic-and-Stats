# SQL Programming – User-Defined Functions for Logic & Statistics

This project demonstrates the creation and testing of SQL user-defined functions (UDFs) to automate logic-based operations, statistical calculations, and modular workflows inside MySQL. It showcases control flow, loops, function chaining, and arithmetic operations.

---

## 🧠 Function 1 – Conditional Message by Age

- Created a function `PersonName(FirstName, LastName, Age)` to return a message based on user age.
- Used `IF-ELSE` logic to classify users as **"adult"** or **"young"**.
- Verified correctness with multiple test cases using `SELECT`.

---

## ➗ Function 2 – Average of Five Numbers

- Defined `average5(a, b, c, d, e)` to return the mean of five integers.
- Returned a `DECIMAL(10,2)` value for numerical precision.
- Used this function as a helper in other calculations.

---

## 📈 Function 3 – Variance Calculation

- Implemented `varianceA(A)` to compute the variance of numbers from 1 to A using a `WHILE` loop.
- Internally called `average5()` to calculate the mean.
- Used `POW()` to compute squared deviations and calculated variance by dividing summed deviations by the count.

---

## ✅ Outcomes

- Demonstrated control structures in SQL (`IF`, `WHILE`) and user-defined function chaining.
- Built reusable, modular logic blocks for analytics tasks.
- Provided a foundational step toward developing stored procedures and SQL-based analytical functions.

---

## 🛠️ Skills & Tools Used

- **Tools**: MySQL  
- **Techniques**: User-Defined Functions (UDFs), `IF-ELSE`, `WHILE` loops, arithmetic operations, chaining logic, modular testing with `SELECT` queries

---

## 📁 Files

- `SQL1.sql` – SQL file containing all UDF definitions  
- `tests.sql` – Sample `SELECT` statements to verify output  
- `README.md` – This documentation file

