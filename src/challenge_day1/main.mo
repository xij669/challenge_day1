import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
    // challenge 1
    public func add(n : Nat , m : Nat) : async Nat {
        return(n+m);
    };
    //challenge 2
    public func square(n : Nat) : async Nat {
        return(n*n);
    };
    //challenge 3
    public func days_to_second(n : Nat) : async Nat {
        return(n*24*60*60);
    };
    public func days_to_seconds(n : Float) : async Float {
        return(n*24*60*60);
    };
    //challenge 4
    var a : Nat = 0;
    public func incremented_counter(n : Nat) :async Nat {
        a += n;
        return(a);
    };
    public func clear_counter() : async Text {
        a := 0;
        return("reset the counter!");
    };
    //challenge 5
    public func divide(n : Nat , m : Nat) : async Text {
        if(n % m != 0) {
            return("n can not be divided by m!");
        }else {
            return ("n can be divided by m!");
        };
    };
    //challenge 6
    public func is_even(n : Nat) : async Text {
        if(n % 2 != 0) {
            return("n is not even!");
        }else {
            return ("n is even!");
        };
    };
    //challenge 7
    var sum : Nat = 0;
    public func sum_of_array(array : [Nat]) : async Nat {
        for (value in array.val()){
            sum := sum + value;
        }
        return(sum);
    };
    //challenge 8
    public func maximum(array : [Nat]) : async Nat {
        return maximum(array, 0).0;
    };
    //challenge 9
    public func remove_from_array(array : [Nat], n : Nat) : async [Nat] {
        let filtered_list : Lisr<Nat> = List.fromArray([]);
        for (value in array.vals()){
            if (value != n){
                filtered_list.append(value);
            };
        };
        return List.toArray(filtered_list);
    }
};
