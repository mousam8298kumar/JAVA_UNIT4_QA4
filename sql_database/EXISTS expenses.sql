CREATE TABLE IF NOT EXISTS expenses (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    date TEXT NOT NULL,
    category TEXT NOT NULL,
    amount REAL NOT NULL
);

-- 2. Insert Sample Data
INSERT INTO expenses (date, category, amount) VALUES
('2026-02-10', 'Food', 120.50),
('2026-02-10', 'Travel', 60.00),
('2026-02-11', 'Shopping', 300.75),
('2026-02-12', 'Food', 150.00);

-- 3. View All Expenses
SELECT * FROM expenses;

-- 4. Category-wise Total (for Pie Chart)
SELECT category, SUM(amount) AS total
FROM expenses
GROUP BY category;

-- 5. Update an Expense
UPDATE expenses
SET category = 'Transport',
    amount = 200.00
WHERE id = 2;

-- 6. Delete an Expense
DELETE FROM expenses
WHERE id = 3;

-- 7. Drop Table (Optional Reset)
DROP TABLE IF EXISTS expenses;
