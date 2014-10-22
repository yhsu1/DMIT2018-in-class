<Query Kind="Statements">
  <Connection>
    <ID>bca2d3f5-0a2f-4448-ac37-8194477dc217</ID>
    <Persist>true</Persist>
    <Server>.</Server>
    <Database>eRestaurant</Database>
  </Connection>
</Query>

// Total Item 
var results = from info in BillItems
			  orderby info.Item.MenuCategory.Description, info.Item.Description
			  select new 
			  {
			  		CategoryDescription = info.Item.MenuCategory.Description,
					ItemDescription = info.Item.Description,
					Quantity = info.Quantity,
					Price = info.SalePrice * info.Quantity,
					Cost = info.UnitCost * info.Quantity
			  };
results.Count().Dump();
results.Dump();