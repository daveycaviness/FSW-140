import {useState, createContext} from 'react';
import {BrowserRouter, Routes, Route, Link} from 'react-router-dom';
import Home from './components/Home.js'
import './App.css';
import Cars from './components/Cars.js';

export const CarContext = createContext() 

function App() {
  const [cars, setCars] = useState([])
  const [toggleInfo, setToggleInfo] = useState(false)
  const [tab, setTab] = useState("")

  const getModels = (tab) => {
    setTab(tab)
    fetch(`/get${tab}Car`)
    .then(res => res.json())
    .then(res => setCars(res))
    .catch(err => console.log(err))
  }

  const insertData = () => {
    fetch('/insertData', {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        car_make: document.querySelector('#carMake').value,
        car_model: document.querySelector('#carModel').value,
        car_year: document.querySelector('#carYear').value,
        car_engine: 'custom entry',
        car_horsepower: document.querySelector('#carHorsepower').value,
        car_torque: 0
      })
    })
    .then(getModels(tab))
    .catch(err => console.log(err))
  }
  
  const toggleUpdate = () => {
    if (toggleInfo === false){
      setToggleInfo(true)
    }
    else if (toggleInfo === true){
      setToggleInfo(false)
    }
  }

  const updateCar = (id, hp) => {
    fetch(`/updateCar/${id}`, {
      method: 'PUT',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({car_horsepower: hp})
    })
    .then(toggleUpdate())
    .then(getModels(tab))
    .catch(err => console.log(err))
  }

  const deleteCar = (id) => {
    fetch(`/deleteCar/${id}`, {
      method: 'DELETE',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      }
    })
    .then(getModels(tab))
    .catch(err => console.log(err))
  }
  
  return (
    <BrowserRouter>
      <CarContext.Provider value = {cars}>
        <nav>
          <Link to= '/'>Home</Link>
          <Link to= '/S-ModelCars' onClick={() => getModels("S")}>S-Models</Link>
          <Link to= '/Rs-ModelCars' onClick={() => getModels("Rs")}>RS-Models</Link>
        </nav>
        <main>
          <Routes>
            <Route exact path= '/' element= {<Home/>}></Route>
            <Route exact path= '/S-ModelCars' element={<Cars 
              insertData = {insertData}
              toggleUpdate = {toggleUpdate}
              toggleInfo = {toggleInfo}
              updateCar = {updateCar}
              deleteCar = {deleteCar}
            />}></Route>
            <Route exact path= '/Rs-ModelCars' element={<Cars 
              insertData = {insertData}
              toggleUpdate = {toggleUpdate}
              toggleInfo = {toggleInfo}
              updateCar = {updateCar}
              deleteCar = {deleteCar}
            />}></Route>
          </Routes>
        </main>
      </CarContext.Provider>
    </BrowserRouter>
  );
}

export default App;