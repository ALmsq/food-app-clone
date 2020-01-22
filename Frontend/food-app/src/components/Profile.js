import React from 'react'
import { useSelector } from 'react-redux'


const Profile = () => {
    
    const places = useSelector(state => state.places)


    const username = useSelector(state => state.login.username)
    console.log(username)
    const ifUser = username?username:'no one'
    return (
        <div>
            <h1>{ifUser}</h1>
        </div>
    )
}

export default Profile

