const express = require('express');
const inquirer = require('inquirer');
const { Pool } = require('pg');
const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const pool = new Pool(
    {user: 'postgres',
    password: 'rootroot',
    host: 'localhost',
    database: 'employeeTracker_db'
    },
    console.log(`Connected to the employeeTracker_db database.`)
)
pool.connect();

async function promptManger() {
    const answers = await inquirer.prompt([
     {
type: "list",
name: "menu",
message:"What would you like to do?",
choices: [
    "View all departments",
    "View all roles",
    "View all employees",
    "Add a department",
    "Add a role",
    "Add an employee",
    "Update an employees role"
] 
}   
]);

if (answers.menu === "View all departments"){
    pool.query('SELECT * FROM department', (err,result))
}
}
