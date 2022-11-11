public class ItemController {
    
    public List<FDService.Item> getAllItems(){
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
    					FDService.SearchRequest.getInstance()
				     );
        return items;
    }
    
    /* TO-DO
	Given a string value as a parameter, ensure the function only
	returns Items that have an exact match against the name field
    */
    public List<FDService.Item> getItemsByName(String itemName){
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
                                        FDService.SearchRequest.getInstance()
                                        //TO-DO call the filter() or equals() methods
                                     );
        return items;
    }

}
