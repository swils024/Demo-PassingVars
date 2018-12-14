Class PassingVars.Demo1 Extends %RegisteredObject
{

	ClassMethod Run() As %Status
	{
		// Case 1 : Only interested in these two variables
		Do ^INTERVARS(.cVAR1,.cVAR2)
		Set ^LOG(cVAR1,cVAR2)=$zdatetime($h,4,1)
		
		Kill cVAR1,cVAR2
		
		// Case 2 : Show all defined variables
		Do ^INTERVARS(.cVAR1,.cVAR2,.cVAR3,.cVAR4)
		Set ^LOG(cVAR1,cVAR2,cVAR3,cVAR4)=$zdatetime($h,4,1)
		Quit $$$OK
	}
}