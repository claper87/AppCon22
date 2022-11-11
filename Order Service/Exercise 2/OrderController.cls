
public class OrderController {
    
    
    Id WATER_BOTTLE =  FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Collapsible Water Bottle')
					              )[0].Id;
    Id CORPORATE_MEMBERSHIP = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Corporate Membership')
					              )[0].Id;
    Id PROFESSIONAL_MEMBERSHIP = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Professional Membership')
					              )[0].Id;
    Id YODA_FOR_LIFE = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Yoda for like Membership')
					              )[0].Id;
	
    FDService.SalesOrder so;
    FDService.OrderService orderService;
    
    {
       orderService = FDService.OrderService.getInstance();
    }
    

    public void createOrder(Id contactId){
        so.contact = contactId;
		so = orderService.createOrder(so);
    }
    
    /* TO-DO
     * Given an item Id leverage orderService 
     * to add a new sales order line to 
     * the order
     * HINT: use the addItemToOrder() [single line method]
    */
    public void addItem(Id itemId){
        
    }
        

}
