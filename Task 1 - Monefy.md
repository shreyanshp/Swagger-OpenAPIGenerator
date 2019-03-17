# Monefy - Test Plan

# Functional Tests
## Features to be tested

### Initial Load/First Load
- The App should open and load the dashboard
- The App should block/lock features which are only accessible once user pays for the Pro version of App
- The App should initially load expense/income data from both cash and card account types
- The App should initially load expense/income categories, which are common/predefined ones
- The user should be able to select a date from past to enter/modify expense/income for that day
- The user should be able to select and change the account type to cash or card or All/both
- The user should be able to click on Expense and enter expense details and select expense category
- The user should be able to click on Income and enter income details and select income category
- The current date should be displayed on the app, for the user to enter their expenses/income
- The initial value for both Expense and Income should be 0
- The user should not be allowed to save Expense/Income, if the entered value is 0
- The user should not be allowed to save Expense/Income, if the category for the same is not selected

### Categories/Accounts/Currencies
- The user should be able to add new categories to expense/income (only PRO users)
- The user should be able to edit categories to expense/income
- The user should be able to delete categories from expense/income
- The user should be able to add new account type (only PRO users)
- The user should be able to edit account type
- The user should be able to delete account type
- The user should be able to add a transfer from one account type to another account type and the data should be updated to that effect
- The user should be able to add new currency (only PRO users)
- The user should be able to edit currency
- The user should be able to delete currency (only PRO users)

### Settings
- The user should be able to change the app language to his/her language
- The user should be able to change the app currency to his/her currency
- The user should be able to change the First day of the month as per their monthly income cycle routines
- The user should be able to connect to any cloud services (at the moment only Dropbox and Google Drive supported)
- The user should be able to backup data to any cloud services
- The user should be able to delete/clear all data from the app

### Visualization
- The user should be able to see data based on time intervals, such as - Daily/Weekly/Monthly/Yearly/All data
- The user should be able to see all existing category types on the dashboard
- The user should not see deleted category types on the dashboard
- The user should be blocked from selecting a future date for entering/modifying expense/income for that day (Not sure about the actual requirement, here, ideally they should not be blocked, but the App does that)




## Features not to be tested

# Non-Functional Tests

## Features to be tested

## Features not to be tested
