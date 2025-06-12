module first_move_addr::primitive {
    use std::vector;
    use aptos_framework::signer;
    use std::debug::print;

    // Primitive Types Examples
    public fun integer_examples() {
        // u8: 0 to 255
        let uint8: u8 = 255;
        // u16: 0 to 65535
        let uint16: u16 = 65535;
        // u32: 0 to 4294967295
        let uint32: u32 = 4294967295;
        // u64: 0 to 18446744073709551615
        let uint64: u64 = 18446744073709551615;
        // u128: 0 to 2^128 - 1
        let uint128: u128 = 340282366920938463463374607431768211455;

        // print(&uint8);
    }

    // Boolean type example
    public fun boolean_examples() {
        let is_true: bool = true;
        let is_false: bool = false;

        // Boolean operations
        let and_result = is_true && is_false;
        let or_result = is_true || is_false;
        let not_result = !is_true;

        // print(&and_result);
        // print(&or_result);
        // print(&not_result);
    }

    // Function to demonstrate address type
    public fun address_examples() {
        // Address is a 32-byte (256-bit) identifier
        let addr: address = @0x1;
        // You can also use named addresses
        let module_addr: address = @first_move_addr;

        // print(&addr);
        // print(&module_addr);
    }

    // Vector type example
    public fun vector_examples() {
        // Create an empty vector of u64
        let empty_vector: vector<u64> = vector[];
        
        // Create a vector with values
        let numbers: vector<u64> = vector[1, 2, 3, 4, 5];
        // print(&numbers);

        // Vector operations
        vector::push_back(&mut numbers, 6); // Add element
        let first_element = vector::borrow(&numbers, 0); // Borrow element
        let length = vector::length(&numbers); // Get length

        // print(&numbers);
        // print(first_element);
        // print(&length);
        

    }

    // Signer type example
    public fun signer_example(account: &signer) {
        // Get the address of the signer
        let sender_address: address = signer::address_of(account);
        
        // Signers are used for authentication and authorization
        // They represent a user's account and their ability to perform actions
    }

    #[test]
    fun test_primitive_operations() {
        
        // integer_examples();
        // boolean_examples();
        // address_examples();
        // vector_examples();
    }
}