

<!doctype html>  

	  <html>   

	   <head>   

	    <meta charset="utf-8" /> 

	  	<title>MathFunction.cfm</title>  

	  	</head>   <!-- The end of the head tag  -->

		<body>   <!-- The start of the body tag, again like every HTML page  -->
          <h1> MathFunction.cfm </h1>

		 

      	  <cffunction name="addNumbers" access="private" returntype="numeric">
              <cfargument name="firstnum" type="numeric">
              <cfargument name="secondnum" type="numeric">
              <cfreturn #firstnum+secondnum#>
          </cffunction>
      <br>
   
       <ol> 
		  
		    <li> 10 + 5 = <cfoutput>#addNumbers(10,5)#</cfoutput> </li>
            <li> 11 + 7 =<cfoutput>#addNumbers(11,7)#</cfoutput> </li>
            <li> 14 + 34 = <cfoutput>#addNumbers(14,34)#</cfoutput> </li>
            <li> 23 + 52 = <cfoutput>#addNumbers(23,52)#</cfoutput> </li>
            <li> 112 + 53 = <cfoutput>#addNumbers(112,53)#</cfoutput> </li>
       </ol>
  
    
           
           <cfoutput>
         <form action="#cgi.script_name#?p=#p#"  method="post">
                    <div class="mb-5">
                        <label for=" firstNumber" class="form-label"> Enter First Number</label> 
                        <input type= numeric  class="form-control" id="a" name="a" placeholder="First Number">
                     <br>  Number entered is :  #a#
                    </div>
                   
                    <div class="mb-5">
                        <label for="secondNumber" class="form-label">Enter Second Number</label>
                        <input type= numeric  class="form-control" id="b" name="b" placeholder="Second Number">
                    <br>  Number entered is :  #b#
                    </div>
                   
                <div>
                    <button class="btn btn-primary">ADD Numbers</button>
                </div>
                 <br>
                 <h2>  Total adding both numbers is #addNumbers(a,b)#  </h2>

                </form>
                
               </cfoutput>
               <br>
               
              
        </body>
    </html>