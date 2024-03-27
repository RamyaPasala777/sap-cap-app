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
    address         : Composition of  Address;

}

entity Address {
    key ID       : UUID;
        city     : String not null;
        address  : String not null;
        pincode  : Integer not null;
        street   : String;
        landmark : String;
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
