using{EmployeeService} from './EmployeeService';
annotate EmployeeService.Designation with @Capabilities : { 
    InsertRestrictions : {
        $Type : 'Capabilities.InsertRestrictionsType',
        Insertable:false
    },
    DeleteRestrictions : {
        $Type : 'Capabilities.DeleteRestrictionsType',
        Deletable:false
    },
    ReadRestrictions : {
        $Type : 'Capabilities.ReadRestrictionsType',
        Readable:true
    },
    UpdateRestrictions : {
        $Type : 'Capabilities.UpdateRestrictionsType',
        Updatable:false
    },
 } ;

