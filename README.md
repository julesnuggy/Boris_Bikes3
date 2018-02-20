# Boris Bikes

```
As a user,
So I can find customers,
I want to search for my customers by their surnames.
```

|  Objects | Messages |
| -------- | -------- |
|   User   |             |
| Customer |   find_by_surname    |

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working
```

|    Objects   | Messages |
| ------------ | ----------- |
|   Person   |             |
|   Bike     |  working?  |
|   Docking_station   |     release_bike        |

**Diagram:**
```
Bike --> working? --> true/false
Docking_station --> release_bike --> a Bike
```
