module first_move_addr::counter {
    use std::signer;

    // 1. Define a struct (our own data type)
    struct Counter has key {
        value: u64,
    }

    // 2. Initialize the counter for a user
    public entry fun create_counter(account: &signer) {
        move_to(account, Counter { value: 0 });
    }

    // 3. Increment and decrement 1 to the user's counter
    public entry fun increment(account: &signer) acquires Counter {
        let counter = borrow_global_mut<Counter>(signer::address_of(account));
        counter.value = counter.value + 1;
    }


    public entry fun decrement(account: &signer) acquires Counter {
        let counter = borrow_global_mut<Counter>(signer::address_of(account));
        counter.value = counter.value - 1;
    }

    // 4. Let anyone view their current count
    #[view]
    public fun get(address: address): u64 acquires Counter {
        let counter = borrow_global<Counter>(address);
        counter.value
    }
}
