Class PassingVars.Demo1 Extends %RegisteredObject
{

	ClassMethod Run() As %Status
	{
		Do ^INTERVARS(.cVAR1,.cVAR2,.cVAR3,.cVAR4)
		Set ^LOG(cVAR1,cVAR2,cVAR3,cVAR4)=$zdatetime($h,4,1)
		Quit $$$OK
	}
}