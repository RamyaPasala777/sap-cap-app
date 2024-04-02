const onBeforeEmployeeCreated= async (req)=>{
    console.log("Before event is trigged")
}
const onAfterEmployeeCreated=async (req)=>{
    console.log("After event is trigged")
}

module.exports={
    onBeforeEmployeeCreated,
    onAfterEmployeeCreated
}