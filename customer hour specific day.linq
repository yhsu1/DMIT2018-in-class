<Query Kind="Expression">
  <Connection>
    <ID>bca2d3f5-0a2f-4448-ac37-8194477dc217</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>eRestaurant</Database>
  </Connection>
</Query>

//How many customer
from info in Bills
where info.BillDate.Year == 2014
	&& info.BillDate.Month == 9
	&& info.BillDate.Day == 15
group info by info.BillDate.Hour into infoGroup
select new
{
	Hour = infoGroup.Key,
	CustomerBillCount = infoGroup.Count(),
	CustomerCount = infoGroup.Sum(x => x.NumberInParty)
}