const cds = require("@sap/cds");
const {onBeforeEmployeeCreated,onAfterEmployeeCreated}=require("./src/controller/employeeOperations")
module.exports=cds.service.impl(async (srv)=>{
    srv.before("CREATE","Employee",onBeforeEmployeeCreated);
    srv.after("CREATE","Employee",onBeforeEmployeeCreated)
})



// module.exports=cds.service.impl(async (srv)=>{
//     srv.before("CREATE","Employee",(req)=>{
//         console.log("Before event is trigged")
//     });
//     srv.after("CREATE","Employee",(req)=>{
//         console.log("After event is trigged")
//     })
// })