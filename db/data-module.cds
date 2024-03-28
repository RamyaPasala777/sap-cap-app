namespace demo.db;

using {resuable.types as types} from './ReuseableTypes';
using {
    cuid,
    managed
} from '@sap/cds/common';


@assert.unique: {
    email: [email],
    phone: [phone]
}
//sap provides lot off aspects
entity Employee : cuid, types.PersonDetails, managed {

    dob             : Date;
    gender          : String;
    contractStarted : Date;
    email           : types.Email not null; //email should not be null and follow the format
    phone           : types.PhoneNumber not null; //phone should not be null and follow the format
    Amount          : types.Amount;
    address         : Composition of many Address
                          on address.employee = $self;
    salary          : Composition of Salary;
    department      : Association to Department;
    designation     : Association to Designation;

}

entity Address : cuid {

    city     : String not null;
    address  : String not null;
    pincode  : Integer not null;
    street   : String;
    landmark : String;
    employee : Association to Employee
}

entity Department : cuid {
    name        : String;
    description : String;
    headCount   : Integer;
}

entity Salary : cuid {
    costToCompany : types.Amount;
    employeePf    : types.Amount;
    employerPf    : types.Amount;
    nps           : types.Amount;
    vpf           : types.Amount;
}

entity Designation : cuid {
    name        : String;
    description : String;
    level       : String;
}

// context EmployeeDetails {
//     entity Address  {
//     city     : String not null;
//     address  : String not null;
//     pincode  : Integer not null;
//     street   : String;
//     landmark : String;
//   }

// }
