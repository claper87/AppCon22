## Chaining Statements Together

By know you have a solid understanding of how the SearchRequest object works. We've build it so it's easy to use and performant. You can combine several function by chaning them together.

For example, say you want to search for Open Sales Orders, with a balance due arranged by created date ascendently.

```
Schema.SObjectField STATUS_FIELD = OrderApi__Sales_Order__c.OrderApi__Status__c;
String STATUS = 'Open';
List<FDService.SalesOrder> salesOrders = FDService.OrderService.getInstance().get(
        FDService.SearchRequest.getInstance()
        .equals(STATUS_FIELD, STATUS)
        .filter('OrderApi__Balance_Due__c  > 0')
    	.orderBy('CreatedDate ASC')
    ); 

system.debug('count of open orders '+salesOrders.size());
```
#### If you want to limit your results to only the first 10 orders that meet the criteria, then chain the `soqlLimits()` method
```
Schema.SObjectField STATUS_FIELD = OrderApi__Sales_Order__c.OrderApi__Status__c;
String STATUS = 'Open';
List<FDService.SalesOrder> salesOrders = FDService.OrderService.getInstance().get(
        FDService.SearchRequest.getInstance()
        .equals(STATUS_FIELD, STATUS)
        .filter('OrderApi__Balance_Due__c  > 0')
    	.orderBy('CreatedDate ASC')
    	.soqlLimit(10)
    ); 

system.debug('count of open orders '+salesOrders.size());
```

## Now is your turn to practice

1. Go to https://bit.ly/3G3WAYM
2. Copy the code shown
3. Using the developer console (or your preferred IDE), create the ItemController class
4. Paste the code & complete the to-dos.


### follow these steps run your code 
1. Open the Anonymous window, within the developer console. Copy & Pase the code below and click "execute"
2. Ensure to inspect the logs, so that you can see how many items were retrieved and the name of each item.
```
ItemController icontroller = new ItemController();
List<FDService.Item> items = icontroller.getItemsByName('Collapsible Water Bottle');
system.debug('retrieved items count: '+items.size());
for(FDService.Item item : items){
    system.debug(item.name);
    system.debug(item.OrderApi__Price__c);
}
```
