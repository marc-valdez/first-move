module first_move_addr::basic_concepts {
    use std::string::{Self, String};

    //Person struct
    struct Person has drop {
        age: u8,
        is_student: bool,
        score: u64
    }

    // Creating a new Person instance
    public fun create_person(age: u8, is_student: bool): Person {
        Person {
            age,           
            is_student,    
            score: 0       
        }
    }

    // Conditionals and branching
    public fun check_person_status(person: &Person): vector<u8> {
        // Basic if-else condition
        if (person.age < 18) {
            return b"Minor"
        } else if (person.age < 60) {
            return b"Adult"
        } else {
            return b"Senior"
        }
    }

    // Function demonstrating nested conditions
    public fun calculate_grade(person: &Person): vector<u8> {
        if (person.is_student) {
            if (person.score >= 90) {
                return b"A"
            } else if (person.score >= 80) {
                return b"B"
            } else if (person.score >= 70) {
                return b"C"
            } else {
                return b"F"
            }
        } else {
            return b"N"
        }
    }

    // Function to update person's score with validation
    public fun update_score(person: &mut Person, new_score: u64) {
        assert!(new_score <= 100, 1); // Ensure score is valid
        person.score = new_score;
    }

    /*#[test]
    fun test_person_operations() {
        // Create a new person
        let student = create_person(16, true);
        
        // Test status check
        assert!(check_person_status(&student) == b"Minor", 0);
        
        // Update and test score
        update_score(&mut student, 95);
        assert!(calculate_grade(&student) == b"A", 2);
        
        // Create an adult
        let adult = create_person(30, false);
        assert!(check_person_status(&adult) == b"Adult", 3);
    }*/
}