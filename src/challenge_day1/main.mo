import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };
};
