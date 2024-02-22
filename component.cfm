<!doctype html>  

	  <html>   

	   <head>   

	    <meta charset="utf-8" /> 

	  	<title>MathFunction.cfm</title>  

	  	</head>   <!-- The end of the head tag  -->

		<body>   <!-- The start of the body tag, again like every HTML page  -->
          <h1> component.cfm </h1> 
 
            <cffunction name="multiplyThreeNumbers" access="private" returntype="numeric">
              <cfargument name="firstNum" type="numeric">
              <cfargument name="secondNum" type="numeric">
              <cfargument name="thirdNum" type="numeric">
              <cfreturn #firstNum*secomndNum*thirdNum#>
          </cffunction>
 
 <cfoutput>
           <form action="#cgi.script_name#?p=#p#"  method="post">
                    <div class="mb-5">
                     <cfparam name="form.a" default="0" />
                        <label for="firstNum" class="form-label"> Enter First Number</label> 
                        <input type= numeric  class="form-control" id="a" name="a"  placeholder="First Number">
                     <br>  Number entered is :  #a#
                    </div>
                   
                    <div class="mb-5">
                    <cfparam name="form.b" default="0" />
                        <label for="secondNum" class="form-label">Enter Second Number</label>
                        <input type= numeric  class="form-control" id="b" name="b" placeholder="Second Number">
                    <br>  Number entered is :  #b#
                    </div>

                    <div class="mb-5">
                    <cfparam name="form.c" default="0" />
                        <label for="thirdNum" class="form-label">Enter Third Number</label>
                        <input type= numeric  class="form-control" id="c" name="c" placeholder="Third Number">
                    <br>  Number entered is :  #c#
                    </div>
                   
                <div>
                    <button class="btn btn-primary">MULTIPLY 3 Numbers</button>
                </div>
                 <br>
                 <h2>  <cfset myComponent = createObject("myComponent") />

		The product of my three numbers is <cfoutput>#mycomponent.multiplyThreeNumbers(a,b,c)#</cfoutput>  </h2>

                </form>
                
              </cfoutput>
