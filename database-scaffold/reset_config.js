/**
 * Modifies database json config to add database and schema name
 */
 const fs = require("fs")
 const fileName = "./database.json"
 const file = require(fileName)
 
 const json = {}
 
 fs.writeFile(fileName, JSON.stringify(json, null, 2), (err) => {
     if (err) {
         console.log(`Error writing JSON file ${err}`)
     }
     console.log(`JSON config modified successfully!`)
 })