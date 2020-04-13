# ==========================================
#title: "INFO 201 Lab 3 Debugging Exercise"
#date: "1/21/2020"
# ==========================================
#
# In groups of three, you will now work on the following exercises where you will practice:
# 
# * Identifying whether an error is a syntax, semantic or logical error
# * Analyze an error message and be able to interpret it
# * Describe the steps of searching for solutions to errors
#
# =====================
# Exercise 1. Vectors 
# =====================
#
# 1.1 Sharks -------------------------------------------------------
#
#  Use the combine (`c()`) function to create a vector for different types of shark

sharks <- c("Hammerhead", "Great White", "Thresher")

# Scientists discovered a new deep-sea shark called a Goblin shark you want to add this to your vector of sharks 
# Use the `c()` function to combine the `sharks` vector and the newly discovered "Goblin" shark

updated_sharks <- c(Sharks, Goblin) 
print(updated_sharks)

# Results expected
# [1] "Hammerhead" "Great White" "Thresher" "Goblin"
#

## 1.2 Earthquakes ----------------------------------------------
#
# The following vector contains earthquake magnitudes for large earthquakes 
# in the seattle area since the creation of the Richter Scale

earthquakes <- c(6.8, 5.3, 5.0, 7.3, 7.1, 6.3, 5.5)

# filter for earthquakes that were larger than 6.5

earthquakes[ > 6.5]

# Results expected
# [1] 6.8 7.3 7.1
#

## 1.3 Endangered animals ---------------------------------------
#
# Create a vector of endangered marine animals

endangered <- c("Blue Whale", "Bluefin Tuna", "Galapago Penguin", "Florida Manatee", "Hawksbill Turtle", "Sea Otter")

# Vector of booleans (to filter the 'endangered' vector) where TRUE means that the endangered species is a mammal

filter <- c(TRUE FALSE FALSE TRUE FALSE, TRUE)

# Extract element in an index that is TRUE

print(endangered(filter))

# Expected results:
#[1] "Blue Whale"      "Florida Manatee" "Sea Otter"
#

# ===================
# Exercise 2. Lists 
# ===================
#
## 2.1 More Sharks  -----------------------------------------------

# Lets return to our sharks vector from earlier. We can create a list called shark_length that contains 
# max length in feet of different types of sharks. The name of sharks are used as tags.

shark_length <- list(hammerhead = 19.7, 
                    great_white = 20.0, 
                    thresher = 20.0, 
                    goblin = 12.6)

# Access the last element in the list and return a vector

shark_length[-4]

# Confirm that you returned a vector and not a list

is.list(shark_length)

#Expected results
#[1] 12.6
#[1] FALSE
#

## 2.2 Lab grades ----------------------------------------------

# Here is a list of lab grades for imaginary lab section LL

lab_grades <- list(hwk_scores = 5:10, 
                   student_year = c(1, 4, 4, 2, 3, 2), 
                   lab = "LL")

# Add a new item is_participant = "Yes" to the list lab_grades

lab_grades[[is_participant]] <- "Yes"

# ============================
# Exercise 3. Bill Calculator 
# ============================
#
# Scenario - suppose you went to tea shop today and you bought a cup of tea and 2 scones.
# There is a promotion today where if you buy a cup of tea and 2 scones you get 10% off your purchase.
# Sales tax in WA is 6.5%


tea <- 3.50
scone <- 3.00 
discount <- 0.10
sales_tax <- 0.065

# Calculate the total by summing all items purchased and apply the discount
total_with_discount <- (tea + 2*scone) + discount 

# Now calculate your total after the 10% discount by multiplying your total by discount 
total_after_tax <- total_with_discount + sales_tax

# Expected result
# total_after_tax
# 9.11
#

# END #


