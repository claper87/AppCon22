public class ItemController {
    
    //TO-DO: specify the appropiate return data-type
    public void getAllItems(){
        List<FDService.Item> items = FDService.ItemService.getInstance()
            											  .get(
                                        // TO-DO: add FDService.SearchRequest instance
                                     );
        return items;
    }

}
