Class PassingVars.Demo1 Extends %RegisteredObject
{

	ClassMethod Run() As %Status
	{
		// Case 1 : Only interested in these two variables
		Do ^INTERVARS1(.cVAR1,.cVAR2)
		Set ^LOG(cVAR1,cVAR2)=$zdatetime($h,4,1)
		
		Kill cVAR1,cVAR2
		
		// Case 2 : Only interested in these four variables
		Do ^INTERVARS1(.cVAR1,.cVAR2,.cVAR3,.cVAR4)
		Set ^LOG(cVAR1,cVAR2,cVAR3,cVAR4)=$zdatetime($h,4,1)
		
		// Case 3 : Passing a single array to contain all the variables
		Do ^INTERVARS2(.arr)
		Set ^LOG(arr("eVAR5"),arr("eVAR6"),arr("eVAR7"),arr("eVAR8"))=$zdatetime($h,4,1)
		
		Quit $$$OK
	}
}