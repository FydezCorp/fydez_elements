# Theme Configuration Variables Blueprint

Please note that all parameters inside the `value` column are case-sensitive. If not, we'll show the default type / option which is indicated using asterisk (*).

-----
## 🟦 Product Item Card
### 1. Product Image Background Type *(enum)*
Note: Although it seems like that it's a color, it's not! It's an enum.

| Type | Value |
|---|---|
| Grey * | grey |
| White | white |
| Picture | picture |
| Shadow | shadow |

### 2. Product Card Type *(enum)*
| Type | Value |
|---|---|
| A * | A |
| B | B |

### 3. Badge Location *(enum)*
| Type | Value |
|---|---|
| Top Round | top-round |
| Bottom Round | bottom-round |
| Top Sharp * | top-sharp |
| Bottom Sharp | bottom-sharp |


### 4. Item Corner Radius *(double)*
Ranges from 0 to 35.

-----
## 🟦 Bottom Navigation Bar
### 1. NavBar Effect *(enum)*

| Type | Value |
|---|---|
| None * | none |
| Line | line |
| Shadow | shadow |

### 2. NavBar Style *(enum)*

| Type | Value |
|---|---|
| Bold * | bold |
| Transparent | transparent |
| Main Title | main title |

### 3. NavBar Corner Radius *(double)*
Ranges from 0 to 50.

-----------------
## 🟦 Popup 
### 1. Popup Type *(enum)*

| Type | Value | Description |
|---|---|---|
| A * | A | Modal |
| B | B | Dialog |

### 2. Popup Background Type *(enum)*

| Type | Value | 
|---|---|
| Normal * | normal | 
| Blur | blur | 

### 3. Popup Handle Type *(enum)*
Note: This field only changes the appearance of modals (type A) and has no effect on appearance of dialogs (type B). 
| Type | Value | 
|---|---|
| Inside * | inside | 
| Outside | outside |
| Close | close | 

### 4. Popup Corner Radius *(double)*
Ranges from 0 to 35.

-----------------
## 🟦 Text Input
### 1. Text Input Type

| Type | Value |
|---|---|
| A * | A | 
| B | B |

### 2. Text Input Radius *(double)*
Ranges from 0 to 35.

-----------------
## 🟦 Radio Tile
### 1. Radio Tile Type
This item has no setting in design files, but we added type variable for future cases. Currently we only have one type.

| Type | Value |
|---|---|
| Normal * | normal | 

-----------------
## 🟦 Market Item
### 1. Market Item Type
This item has no setting in design files, but we added type variable for future cases. Currently we only have one type.

| Type | Value |
|---|---|
| Normal * | normal | 

### 2. Market Item Radius *(double)*
Ranges from 0 to 35.

-----------------
## 🟦 Checkbox Tile
### 1. Checkbox Tile Type
This item has no setting in design files, but we added type variable for future cases. Currently we only have one type.

| Type | Value |
|---|---|
| Normal * | normal | 

-----------------
## 🟦 Category Item
### 1. Category Item Type
This item has no setting in design files, but we added type variable for future cases. Currently we only have one type.

| Type | Value |
|---|---|
| Normal * | normal | 

### 2. Category Item Radius *(double)*
Ranges from 0 to 35.
-----------------
## 🟦 Cart Item
### 1. Cart Item Type
This item has no setting in design files, but we added type variable for future cases. Currently we only have one type.

| Type | Value |
|---|---|
| Normal * | normal | 

-----------------
## 🟦 Tab Bar
### 1. Tab Bar Type
This item has no setting in design files, but we added type variable for future cases.

| Type | Value |
|---|---|
| Underlined * | underlined | 
| Light Background | lightBackground | 

-----------------
## 🟦 Icon Pack

| Type | Value |
|---|---|
| Google Material Design * | material | 
| Vue IconSax  | iconsax | 