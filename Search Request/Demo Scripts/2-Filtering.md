## What about applying filters?

It's great that you asked! Depending on your requirement you have several methods available to you, in order to reduce the number of records retrieved by your search.

method | parameters | description | example
--- | --- | ---
`equals()` | Schema.SObjectField, Object | given the APIName of a field it will perform an exact match against the value | `equals(OrderApi__Item__c.Name,'Collapsible Water Bottle')
`filters()` | ab | ab
`contains()`| ab | ab

`FDService.SearchRequest.getInstance()`

With the above statement you're telling the platform several things:

1. You want to search within an object.
2. You want to select all fields for that object.
3. You want to cap your results at 2,000 records.

However you are missing on important information: **which object you want to perform the search on?**
* Are you searching for Items?
* Are you searching for Sales Orders?
* What are you searching for?

To answer this question we need to wrap the Search Request inside a Service class. **A Service Class** knows how to execute actions given an object wrapper or a search request instance. Let's say for example you want to query a List of all the items configured in your Fonteva Org, you would do something like this:

```
List<FDService.Item> items = FDService.ItemService.getInstance().get(
    FDService.SearchRequest.getInstance()
);
System.debug('how many items were queried >> '+items.size();
System.debug('What's the name of the first Item on the list? >> '+items[0].size();
```

*FDService.ItemService*, is a service class that defines a `get()` method which can accept a SearchRequest instance to fetch Items. 


Alright are you ready for another example? Say you want to search all Sales Order within your org, here's the snippet of code that will get you there: 

```
List<FDService.SalesOrder> items = FDService.OrderService.getInstance().get(
    FDService.SearchRequest.getInstance()
);
System.debug('how many  sales order were queried >> '+items.size();
```

## Now is your turn to practice

1. Go to https://bit.ly/3tj3XUy
2. Copy the code shown
3. Using the developer console (or your preferred IDE), create the ItemController class
4. Paste the code & complete the to-dos.


### follow these steps run your code 
1. Open the Anonymous window, within the developer console. Copy & Pase the code below and click "execute"
2. Ensure to inspect the logs, so that you can see how many items were retrieved and the name of each item.
```
ItemController icontroller = new ItemController();
List<FDService.Item> items = icontroller.getAllItems();
system.debug('retrieved items count: '+items.size());
for(FDService.Item item : items){
    system.debug(item.name);
}
```
