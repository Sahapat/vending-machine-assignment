# From BluePi
1. A vending machine should accept coins of 1,5,10 THB and banknotes of 20, 50, 100,
500, and 1,000 THB
2. Allow users to select products a product available in stock
3. The system should calculate the logic below
- a. enough money to buy the chosen product
- b. enough coin or banknote for change to the customer
- c. stock available for sale
4. Return the number of remaining changes and adjust product stock and coin &
banknote stock in the vending machine

# Raph design
## Vending machine
### Product list page
Displays the available products in this machine.
### Virtual payment input
Since we do not have a device to receive coins or banknotes from users, this part will be a simulated input device.

## Machine
### Machine data
* Code
* Cash items
* Product items
### Transaction
* Product
* Cash changes
### Cash
* Type of cash, containing amount, name, currency
### Cash item
* Stores quantity and cash type
### Product
* Master data for products, including name, price, thumbnail
### Product item
* Stores quantity and product
### Product inventory
* Stores product items and machines
### Cash inventory
* Stores cash items and machines

## CMS
### Manage Product
CRUD Product.
### Machines
* Showing list of machine
* Able to manage cash item, product item of the selected machine.

