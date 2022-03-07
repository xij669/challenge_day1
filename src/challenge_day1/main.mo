import Debug "mo:base/Debug";
import Nat "mo:base/Nat";


var b : Nat = 0;

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
    public func clear_counter() : async () {
        a := 0;
        //return("counter is 0 now!");
    };
};
