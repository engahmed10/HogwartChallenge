import React,{Component} from 'react'

const HogDetail=({onehog})=>(
  
  <div>
      <p>{onehog.name}</p>
      <p>{onehog.weight}</p>
      <p>{onehog.greased}</p>
      <p>{onehog['highest medal achieved']}</p>
      <p>{onehog.specialty}</p>
  </div>)

export default HogDetail