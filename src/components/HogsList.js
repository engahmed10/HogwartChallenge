import React,{Component} from 'react'
import HogDetail from './HogDetail'

class HogsList extends Component{

   constructor(){
      super()
      this.state={
          toggeled: false
      }

   }



   


    handleChange=()=>{
     
       this.setState( previousState=>{  return{ toggeled: !previousState.toggeled} });

    }

  render(){
              let buttonvalue
                 let details
                   if(this.state.toggeled == true ){
                       details =<HogDetail onehog={this.props.hog} />
                        buttonvalue="Hide Detials"
                    } else{
                        details=""
                        buttonvalue="Show Detials"
                    }
             return <div className="ui eight wide column">
                        <img src={`/hog-imgs/${this.props.hog.name}.jpg`} width="200" height="200" alt="photo" />
                        <p>{this.props.hog.name}</p>
                         <button onClick={this.handleChange} > {buttonvalue} </button>  
                         <div  class="ditail">
                          {details}
                       </div>
                   </div>        
    }
}
export default HogsList