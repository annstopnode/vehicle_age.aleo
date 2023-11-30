// Vehicle Age Calculator Program.
program vehicle_age.aleo {
    // The "Vehicle" struct representing the input data for age calculation.
    struct Vehicle {
        // A struct member named "manufacturingYear" with type "field".
        manufacturingYear: field,
        // A struct member named "currentYear" with type "field".
        currentYear: field,
    }

    // The "main" function of this Leo program takes a "Vehicle" struct type as input.
    // To pass "vehicleData" into the "main" function we
    // 1. Define the "Vehicle" type.
    // 2. Use brackets { } to enclose the struct members.
    // 3. Define each struct member name : value.
    //
    // You can try this transition function by running: 
    // leo run main "{ manufacturingYear: 2010field, currentYear: 2023field }"

    transition main(vehicleData: Vehicle) -> field {
        // Calculate the age of the vehicle.
        let vehicleAge: field = vehicleData.currentYear - vehicleData.manufacturingYear;

        // Return the calculated vehicle age.
        return vehicleAge;
    }
}
