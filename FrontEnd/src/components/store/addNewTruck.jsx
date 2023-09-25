import React, { Component } from 'react';
import managerServices from '../service/store.service';


class AddTruck extends Component {
    state = {
        store_id:this.props.store_id,
        truck_number: "",
        capacity: "",
        
    }

    handleTruckNumberChange = (e) => {
        this.setState({ truck_number: e.target.value });
    }
    handleCapacityChange = (e) => {
        this.setState({ capacity: e.target.value });
    }

    onFormSubmit = (dataa) => {

        if (!this.state.truck_number) {
            alert("Enter truck Number");
            return;
        }
        if (!this.state.capacity) {
            alert("Enter Capacity");
            return;
        }
        
        managerServices.addTruck(dataa)
            .catch(err => console.log(err))
            .then(window.location.reload())
    }



    render() {
        return (
            <div>
                <div className='d-flex justify-content-center'>
                    <div className="card" style={{ margin: '100px', width: '50%' }}>
                        <div className="card-body">
                            <div className="card-title">
                                <h1 className='text-primary'>Add New Truck</h1>
                            </div>
                            <div className="card-body">
                                <form action="">
                                    <div className="mb-3">
                                        <label htmlFor="" className="form-label">Truck Number</label>
                                        <input type="text" className="form-control" value={this.state.truck_number} onChange={this.handleTruckNumberChange} />
                                    </div>
                                    <div className="mb-3">
                                        <label htmlFor="" className="form-label">Capacity in m<sup>3</sup></label>

                                        <input type="float" className="form-control" value={this.state.capacity} onChange={this.handleCapacityChange} />
                                    </div>
                                   
                                    

                                    <button type="submit" onClick={() => this.onFormSubmit(this.state)} className="btn mt-3 btn-primary">Add</button>
                                </form>
                            </div>  
                        </div>
                    </div>
                </div>
            </div >
        );
    }
}

export default AddTruck;