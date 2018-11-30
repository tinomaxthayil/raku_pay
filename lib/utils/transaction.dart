class Transaction{
final String from, to, message, timestamp;
final double amt;
Transaction(this.from, this.to, this.message, this.timestamp, this.amt);
}

class Group{
final String owner;
List<String> members;
List<double> amt;
List<bool> paid;
Group(this.owner, this.members, this.amt, this.paid);
}