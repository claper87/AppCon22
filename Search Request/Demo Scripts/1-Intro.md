## All right! let's get to the code.

Instantiating the Search engine is easy and quick, just one statement is needed:

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

FDService.ItemService, is a service class that defines a `get()` method which can accept a SearchRequest instance to fetch Items. Alright are you ready for another example? Say you want to search all Sales Order within your org, here's the snippet of code that will get you there: 

```
List<FDService.SalesOrder> items = FDService.OrderService.getInstance().get(
    FDService.SearchRequest.getInstance()
);
System.debug('how many  sales order were queried >> '+items.size();
```
