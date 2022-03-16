import DisplayModels from "./DisplayModels.js"

export default function Cars(props){
    return(
        <div>
            <div>
                <input type = "text" id = "carMake"></input>
                <input type = "text" id = "carModel"></input>
                <input type = "number" id = "carYear"></input>
                <input type = "number" id = "carHorsepower"></input>
                <button onClick = {() => props.insertData()}>Submit</button>
                <button onClick = {() => props.toggleUpdate()}>Update Horsepower</button>
            </div>
            <div>
                <DisplayModels 
                    toggleInfo = {props.toggleInfo}
                    updateCar = {props.updateCar}
                    deleteCar = {props.deleteCar}
                />
            </div>
        </div>
    )
}