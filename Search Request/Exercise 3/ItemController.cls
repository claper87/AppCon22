public class ItemController {
    
    public List<FDService.Item> getAllItems(){
        List<FDService.Item> items = FDService.ItemService.getInstance()
            											  .get(
    															FDService.SearchRequest.getInstance()
														   );
        return items;
    }
    
    public List<FDService.Item> getItemsByName(String itemName){
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
            FDService.SearchRequest.getInstance().equals(OrderApi__Item__c.Name,itemName)
        );
        return items;
    }
    
    /* TO-DO
          implement the getLowCostMerchandiseItems() function so that
            it returns Items within the "Merchandise Class" Item class
              on which the price is less than US$20.00
    */
    public List<FDService.Item> getLowCostMerchandiseItems(){
        String MERCHANDISE_ITEMCLASS = 'a19Dn000000q8xMIAQ';
        Decimal MAX_PRICE = 20;
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
            FDService.SearchRequest.getInstance()
            					   .filter('OrderApi__Item_Class__c = {0} AND OrderApi__Price__c < {1}',
                                           new List<object>{MERCHANDISE_ITEMCLASS,MAX_PRICE}
                                          )
        );
        return items;
    }

}
