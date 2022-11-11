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
    
    
    public void addItem(Id itemId){
        FDService.SalesOrderLine line = FDService.SalesOrderLine.getInstance();
		line.salesOrder = so.id;
		line.item = itemId;
        orderService.addItemToOrder(line);
    }
    
    /* TO-DO
     * complete the code to add a new order line 
     * given a packageItemId
     *
     * HINT: remember to add the new line to the 
     * 		 "lines" variable.
    */
    public void addPackageItem(Id parentId, Id packageItemId){
        List<FDService.SalesOrderLine> lines = new List<FDService.SalesOrderLine>();
        
        FDService.SalesOrderLine line = FDService.SalesOrderLine.getInstance();
        line.salesOrder = so.id;
        line.item = parentId;
        lines.add(line);
        
        
        lines = orderService.addItemsToOrder(lines);
    }
    
    
}
