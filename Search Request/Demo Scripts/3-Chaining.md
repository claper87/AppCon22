## Chaining

By know you have a solid understanding of how the SearchRequest object works. We've build it so it's easy to use and performant. You can combine several function by chaning them together.

For example, say you want to search for Open Sales Orders, with a balance due arranged by created date ascendently.

```
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().equals (OrderApi__Item__c.Name,'Collapsible Water Bottle')
    );
```
    
```
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().filter('Name = \'Collapsible Water Bottle\'')
    );
```
    
```   
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().contains(OrderApi__Item__c.Name, new List<Object>{'Collapsible Water Bottle'})
    );
```
#### Using variables within the statement
    
```
    String itemName = '\''+'Collapsible Water Bottle'+'\'';
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().filter('Name = '+itemName)
    );   
```
### Using multiple filter criteria
    
```
    Decimal MIN_PRICE = 20;
    Decimal MAX_PRICE = 100;
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().filter('OrderApi__Price__c = '+MIN_PRICE+' AND OrderApi__Price__c < '+MAX_PRICE)
    );   
```
### Using multiple filter criteria with an iterator
Another way to filter is by using iterators. This is a great approach when you need to filter base on multiple critera while keeping your code readable and elegant.
```
    Decimal MIN_PRICE = 20;
    Decimal MAX_PRICE = 100;
    List<Object> tokens = new List<Object>{MIN_PRICE,MAX_PRICE};
    List<FDService.Item> items = FDService.ItemService.getInstance().get(
        FDService.SearchRequest.getInstance().filter('OrderApi__Price__c = {0} AND OrderApi__Price__c < {1}',tokens)
    );   
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