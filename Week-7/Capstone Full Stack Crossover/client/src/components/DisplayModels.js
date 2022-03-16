import {useContext}  from "react"
import {CarContext} from "../App.js"

export default function DisplayModels(props) {
    const cars = useContext(CarContext)

    if(props.toggleInfo === false){
        return (
            cars.map(e => {
                return(
                <div>
                    <h3>{`${e.car_year} ${e.car_make} ${e.car_model}`}</h3>
                    <h3>{`Horsepower: ${e.car_horsepower}`}</h3>
                    <button onClick = {() => props.deleteCar(e.id)}>Delete</button>
                </div> 
                    
                )
            })
        )
    }
    else if(props.toggleInfo === true){
        return (
            cars.map((e, i) => {
                return(
                <div>
                    <h3>{`${e.car_year} ${e.car_make} ${e.car_model}`}</h3>
                    <label>Horsepower</label>
                    <input type = "number" defaultValue = {e.car_horsepower} id = {`entry${i}`}></input>
                    <button onClick = {() => props.updateCar(e.id, document.querySelector(`#entry${i}`).value)}>Submit Update</button>
                </div> 
                    
                )
            })
        )
    }   
}