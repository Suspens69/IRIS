Class dc.PackageSample.ObjectScript
{

ClassMethod Test() As %Status
{
    zn "%SYS" 
    write "Create web application ...",! 
    set webName = "/csp/irisweb" 
    set webProperties("NameSpace") = "IRISAPP" 
    set webProperties("Enabled") = 1 
    set webProperties("CSPZENEnabled") = 1 
    set webProperties("AutheEnabled") = 32 
    set webProperties("iKnowEnabled") = 1 
    set webProperties("DeepSeeEnabled") = 1 
    set sc = ##class(Security.Applications).Create(webName, .webProperties) 

    set a=42
    set test = "q"
    return "Web application "_webName_" has been created!"
}

}
