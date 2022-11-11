public class ItemController {
    
    public List<FDService.Item> getAllItems(){
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
    															        FDService.SearchRequest.getInstance()
														         );
        return items;
    }
    
    public List<FDService.Item> getItemsByName(String itemName){
        List<FDService.Item> items = FDService.ItemService.getInstance().get(
                                        FDService.SearchRequest.getInstance()
                                        .equals() //TO-DO add the parameters to filter by name given the itemName variable
                                     );
        return items;
    }

}
