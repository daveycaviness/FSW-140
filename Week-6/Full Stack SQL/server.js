//Dependencies
const express = require('express');
const app = express();
const {Pool} = require('pg/lib')
const postgre = require('pg').Pool;

//Express Port
const PORT = 9000;

//Express middleware
app.use(express.json())

//Connection string
const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    database: 'audi_collection',
    password: 'Welcome30058!',
    port: 5432  
})
//Postgres connection
pool.connect ((err) => {
    if (err) {
        throw err;
    }
    console.log('Connected to PostgreSQL')
});

//Express route to create a new database
app.get('/createDB', (req, res) => {
    let sql = "CREATE DATABASE audi_collection";
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('New Database Created Successfully!');
        console.log('New Database Created Successfully!');
    })
})

//Express route to create table
app.get('/createTable', (req, res) => {
    let sql = "CREATE TABLE cars(id SERIAL, car_make VARCHAR(30), car_model VARCHAR(30), car_year INT, car_engine VARCHAR(30), car_horsepower INT, car_torque INT, PRIMARY KEY(id))";
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('New Table Created Successfully!');
        console.log('New Table Created Successfully!');
    })
})

app.get('/insertData', (req, res) => {
    let data = {
        car_make: "audi",
        car_model: "r8 v10 plus",
        car_year: 2018,
        car_engine: "V10 5.2 Liter",
        car_horsepower: 610,
        car_torque: 413

    }
    let sql = `INSERT INTO cars(car_make, car_model, car_year, car_engine, car_horsepower, car_torque) VALUES('${data.car_make}', '${data.car_model}', ${data.car_year}, '${data.car_engine}', ${data.car_horsepower}, ${data.car_torque} )`;
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('New Data Inserted Successfully!');
        console.log('New Data Inserted Successfully!');
    })
}) 

app.get('/getAllCars', (req, res) => {
    let sql = "SELECT * FROM cars";
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('Car Data Selected Successfully!')
        console.log('Car Data Selected Successfully!')
    })
})

app.get('/getOneCar/:id', (req, res) => {
    let sql = `SELECT * FROM cars WHERE id = ${req.params.id}`;
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('One Car Data Selected Successfully!')
        console.log('One Car Data Selected Successfully!')
    })
})

app.get('/updateCar/:id', (req, res) => {
    let newHorsepower = 620;
    let sql = `UPDATE cars SET car_horsepower = ${newHorsepower} WHERE id = ${req.params.id}`;
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('Car Data Updated Successfully!')
        console.log('Car Data Updated Successfully!')
    })
})

app.get('/deleteCar/:id', (req, res) => {
    let sql = `DELETE FROM cars WHERE id = ${req.params.id}`;
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        res.send('Car Data Deleted Successfully!')
        console.log('Car Data Deleted Successfully!')
    })
})



app.listen(PORT, () => {
    console.log('Connected to Express')
})