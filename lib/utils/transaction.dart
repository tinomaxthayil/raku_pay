class Transaction{
final String from, to, message, timestamp;
final double amt;
Transaction(this.from, this.to, this.message, this.timestamp, this.amt);
}

class Group{
final String owner;
final String gname;
List<String> members;
List<double> amt;
List<bool> paid;
Group(this.owner, this.gname, this.members, this.amt, this.paid);
}