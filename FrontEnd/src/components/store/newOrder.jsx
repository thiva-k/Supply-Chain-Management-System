import Axios from 'axios';
import React, { Component } from 'react';
import { groupByAttr } from '../common/groupByAttribute'

class NewOrdersStore extends Component {
    state = {
        newOrders: ''
    }
    async componentDidMount() {
        await Axios.get('http://localhost:3001/store/neworder', { params: this.props.store_id }).then((response) => {
            // const arranged = groupBy+
            this.setState({ newOrders: response.data })
        })
    }
    render() {
        if (this.state.newOrders.length === 0) return <h1 className='d-flex justify-content-center text-primary mt-2'>No NEW Orders</h1>;
        return (
            <div className="container mt-4 mb-4" >
                <table className="table table-primary">
                    <thead>
                        <tr>
                            <th scope="col">OrderID</th>
                            <th scope="col">time</th>
                            <th scope="col">Address</th>
                            <th scope="col">City</th>
                            <th scope="col">State</th>
                            <th scope="col">Worth(rs)</th>
                            <th scope="col">Capacity</th>
                        </tr>
                    </thead>
                    <tbody>

                        {this.state.newOrders.map(order => (
                            <tr key={order.order_id}>
                                {console.log(order)}
                                <td className='col-2'>{order['order_id']}</td>
                                <td className='col-2'>{order.date_time.split('.')[0].replace('T', ' -- ')}</td>
                                <td className='col-1'>{order.address}</td>
                                <td className='col-1'>{order.city}</td>
                                <td className='col-1'>{order.state}</td>
                                <td className='col-1'>{order.total_price}</td>
                                <td className='col-1'>{order.capacity}</td>
                            </tr>
                        ))}

                    </tbody>
                </table>
            </div >
        )
    }
}

export default NewOrdersStore;