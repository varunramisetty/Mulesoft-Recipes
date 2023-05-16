%dw 2.0
import * from dw::core::Arrays
var users = [ 
        { 
            id: "1", 
            v: "PS1", 
            name: "David" 
            }, 
        { 
            id: "2",
             v: "PS2", 
             name: "Shivaji" 
             }, 
        { 
            id: "3", 
            v: "PSV", 
            name: "Rameez" 
            } 
    ]
var products = [ 
        { 
            ownerId: "1", 
            v: "PS1", 
            name: "DataWeave"
             }, 
        { 
            ownerId: "1",
             v: "PS1",
              name: "RTF" 
              }, 
        { 
            ownerId: "3",
             v: "PS2", 
             name: "DataBase"
              }, 
        { 
            ownerId: "4", 
            v: "PS2", 
            name: "Platform"
             } 
    ]
output application/json
---
join(users,products,(user)-> user.id ++ user.v,(product)-> product.ownerId ++ product.v)


// The DataWeave code imports the Arrays module from the dw::core module and defines two arrays of objects: users and products. The users array contains objects with id, v, and name properties, while the products array contains objects with ownerId, v, and name properties.

// The code then uses the join function to join the users and products arrays based on a common key

// The join function takes three arguments: the first array to join, the second array to join, and a function that returns the join key for each object in the arrays. In this case, the join key is a concatenation of the id and v properties for the users array, and the ownerId and v properties for the products array.

// The join function returns an array of objects that represent the joined data. Each object in the array contains the properties from both the users and products arrays that match the join key. The output of the join function is then formatted as a JSON array using the output directive.