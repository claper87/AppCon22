public class OrderController {
    
    
    public Id WATER_BOTTLE =  FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Collapsible Water Bottle')
					              )[0].Id;
    public Id CORPORATE_MEMBERSHIP = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Corporate Membership')
					              )[0].Id;
    public Id PROFESSIONAL_MEMBERSHIP = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Professional Membership')
					              )[0].Id;
    public Id YODA_FOR_LIFE = FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Yoda for like Membership')
					              )[0].Id;
	
    FDService.SalesOrder so;
    FDService.OrderService orderService;
    
    {
       orderService = FDService.OrderService.getInstance();
    }
    
    /* TO-DO
     * Given a contact Id leverage orderService 
     * to instantiate an order, associated it to 
     * the contact and commit it dabatabase
    */
    public void createOrder(Id contactId){
        
    }
        

}
