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

To answer this question we will need to wrap the Search Request inside a Service.






List<FDService.Item> items = FDService.ItemService.getInstance().get(
    FDService.SearchRequest.getInstance()
);
system.debug('size >> '+items.size());
system.debug('name >> '+items[0].name);
