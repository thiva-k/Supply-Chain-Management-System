import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import storeService from '../service/store.service';


class StoreManager extends Component {
    state = {
        totalRoutes: 0,
        newOrdersOntrain: 'tobeset',
        totalTruck: 0,
        totalworkers: 0
    }
    async componentDidMount() {
        
        await storeService.getDetails(this.props.store_id).then((response) => {
            this.setState({
                totalRoutes: response.data[0][0]['data'], totalTruck: response.data[1][0]['data'], totalworkers: response.data[2][0]['data'], newOrdersOntrain: response.data[3][0]['data']
            })
            // window.location.reload()
        });
    
    }
    handleVehileNo = (e) => {
        this.setState({ newVechileNo: e.target.value })
    }
    handleCapacityChange = (e) => {
        this.setState({ capacity: e.target.value });
    }
    OnAddTruck = (dataa) =>{
        if (!this.state.newVechileNo) {
            alert("Enter Truck Number");
            return;
        }
        if (!this.state.capacity) {
            alert("Enter Capacity");
            return;
        }
        storeService.addNewTruck(dataa)
            // .catch(err => alert('Something went wrong'))
            .catch(err => console.log(err))
            .then(()=>{console.log(this.state);window.location.reload()})
    }
    render() {
        return (
            <div className='mx-4 my-4' style={{backgroundColor: "#CAEADA" , padding:"20px"}}>
                <div className='container'> 
                    <h3>DashBoard</h3>
                    <div className="row  text-center">
                        <div className="col mx-5 my-4 rounded-3  border border-3 border-dark">
                            <h5 className='pt-4'>Total Routes</h5>
                            <h1>{this.state.totalRoutes}</h1>
                            <Link to="/store/setroutes">
                                <button className='btn btn-primary mb-4 mt-3 rounded-pill px-5'>
                                    Set Routes
                                </button>
                            </Link>
                        </div>
                        <div className="col mx-5 my-4 rounded-3  border border-3 border-dark">
                            <h5 className='pt-4'>Total New Orders</h5>
                            <h1>{this.state.newOrdersOntrain}</h1>
                            <Link to="/store/ordersontrain">
                                <button className='btn btn-primary mb-4 mt-3 rounded-pill px-5'>
                                    Orders on Train
                                </button>
                            </Link>
                        </div>
                    </div>
                    <div className="row  text-center">
                        <div className="col mx-5 my-4 rounded-3  border border-3 border-dark">
                            <h5 className='pt-4'>Total Trucks</h5>
                            <h1>{this.state.totalTruck}</h1>
                            <Link to="/store/addTruck">
                                <button className='btn btn-primary mb-2 mt-3 rounded-pill px-5'>
                                    Add New Truck
                                </button>
                                </Link>
                            <br />
                            <Link to="/store/scheduletruck">
                                <button className='btn btn-primary mb-4 rounded-pill px-5'>
                                    Schedule Truck
                                </button>
                            </Link>
                        </div>
                        <div className="col mx-5 my-4 rounded-3  border border-3 border-dark">
                            <h5 className='pt-4'>Total Workers</h5>
                            <h1>{this.state.totalworkers}</h1>
                            <Link to="/store/addnewworker">
                                <button className='btn btn-primary mb-2 mt-3 rounded-pill px-5'>
                                    Add New Worker
                                </button>
                            </Link>
                            <br />
                            <Link to="/store/driverondelivery">
                                <button className='btn btn-primary mb-4 rounded-pill px-5'>
                                    Workers in Delivery
                                </button>
                            </Link>
                        </div>
                    </div>
                </div>

                
            </div >
        );
    }
}

export default StoreManager;