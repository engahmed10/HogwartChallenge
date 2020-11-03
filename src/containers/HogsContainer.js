import React from 'react'
import HogsList from '../components/HogsList'
import Nav from '../components/Nav'
class HogsContainer extends React.Component{
   state = { 
       hogs:this.props.hogs
   }

sortByName=()=>{
  
     /// const gressed= this.props.hogs.filter(hog=> hog.greased == true)
     // console.log(`gressed`,gressed)
      let sort=this.state.hogs.sort(function (a, b) {
          var nameA = a.name.toUpperCase(); 
          var nameB = b.name.toUpperCase(); 
          if (nameA < nameB) {
             return -1;
          }
          if (nameA > nameB) {
             return 1;
          }
         });
    
         //return sort
         this.setState({
             hogs: sort
         })
}

sortByWeight=()=>{
     const sortedByWeight= this.state.hogs.sort(function (a, b) {
         return a.weight - b.weight;
       });
       
      this.setState({
           hogs: sortedByWeight
      })
      
}

filterGreasedHogs=()=>{
    
    this.setState({
        hogs: this.props.hogs.filter(hog=> hog.greased == true)
    })
}

 render(){
     console.log(`hogs`,this.state.hogs)
     return( 
         
            <div>
            <Nav />
                     <p>
                         <button onClick={this.sortByName}>Sort By Name</button>
                     </p>
        
                      <p>
                         <button onClick={this.sortByWeight}>Sort By Weight</button>
                      </p>

                      <p>
                         <button onClick={this.filterGreasedHogs}>Filter By Greased</button>
                      </p>

            <div className="ui grid container" >
            { this.state.hogs.map( hog =>    
                <HogsList hog={hog}/>
                )}
            </div>
          </div>
         )
         
 }

}

export  default HogsContainer 