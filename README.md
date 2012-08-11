NSArray-FilterByProperty
========================

Category that returns an NSArray of unique objects, filtered by property. 

Usage: 

<pre>
someArray = [someArray filterByProperty:@"somePropertyValue"];
</pre>

Example:

<pre>
obj1.name = @"Ryu";
obj1.attack = @"Hadoken";

obj2.name = @"Ken";
obj2.attack = @"Shoryuken";

obj3.name = @"Ryu";
obj3.attack = @"Tatsumaki Senpuukyaku";

namesArray = [NSArray arrayWithObjects:obj1,obj2,obj3,nil];

NSLog(@"%@",namesArray); // will be Ryu, Ken, Ryu

namesArray = [namesArray filterByProperty:@"name"];

NSLog(@"%@",namesArray); // will be Ryu, Ken
</pre>
