const cds = require("@sap/cds");
 const {onBeforeEmployeeCreated,onAfterEmployeeCreated}=require("./src/controller/employeeOperations")
module.exports=cds.service.impl(async (srv)=>{
    srv.before("CREATE","Employee",onBeforeEmployeeCreated);
    srv.after("CREATE","Employee",onBeforeEmployeeCreated)
})



// module.exports=cds.service.impl(async (srv)=>{
//     srv.before("CREATE","Employee",onBeforeEmployeeCreated);
//     srv.after("CREATE","Employee",onAfterEmployeeCreated)
// })