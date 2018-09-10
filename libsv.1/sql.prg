PROCEDURE jdatasource
LOCAL loJdatasource
loJdatasource = NEWOBJECT("empty")
ADDPROPERTY(loJdatasource, "driver", 	"")
ADDPROPERTY(loJdatasource, "server", 	"")
ADDPROPERTY(loJdatasource, "database", 	"")
ADDPROPERTY(loJdatasource, "userName", 	"")
ADDPROPERTY(loJdatasource, "password", 	"")
RETURN loJdatasource


PROCEDURE jCS
LPARAMETERS loDs
LOCAL lcRetVal
lcRetVal = 	"Driver={"	+allt(loDs.driver)+"};"+ ;
			"server="	+allt(loDs.server)+";"+ ;
			"database="	+allt(loDs.database)+";"+;
			"uid="		+allt(loDs.userName)+";"+;
			"pwd="		+allt(loDs.password)+";"
RETURN lcRetVal

PROCEDURE SqlServerDs
LOCAL loDs
loDs 			= jdatasource()
loDs.driver 	= "SQL Server"
loDs.server		= "It-pc01"
loDs.database	= "concession"
loDs.password	= "search"
RETURN loDs