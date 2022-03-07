import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

//var n : Nat = 1;
//var m : Nat = 2;

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
    public func add(n : Nat , m : Nat) : async Nat {
        return(n+m);
    };
    public func square(n : Nat) : async Nat {
        return(n*n);
    };
};
