public class OrderController {
    
    
    /* TO-DO
      complete the code to find the Ids for each
      private variable
    */
    public Id WATER_BOTTLE =  FDService.ItemService.getInstance().get(
    				FDService.SearchRequest.getInstance()
        			.equals (OrderApi__Item__c.Name,'Collapsible Water Bottle')
					              )[0].Id;
    public Id CORPORATE_MEMBERSHIP; //Corporate Membership
    public Id PROFESSIONAL_MEMBERSHIP; //Professional Membership
    public Id YODA_FOR_LIFE; //YODA for Life Membership
        

}
