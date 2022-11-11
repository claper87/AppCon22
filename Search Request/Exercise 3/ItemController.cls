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
       Implement the getLowCostMerchandiseItems() function so that
       it returns Items within the "Merchandise Class" Item class
       on which the price is less than US$20.00
    */
    public List<FDService.Item> getLowCostMerchandiseItems(){
        String MERCHANDISE_ITEMCLASS;
        Decimal MAX_PRICE;
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
            FDService.SearchRequest.getInstance()
            			   .filter()
        );
        return items;
    }

}
