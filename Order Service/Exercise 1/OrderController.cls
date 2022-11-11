public class OrderController {
    
    
    Id WATER_BOTTLE =  FDService.ItemService.getInstance().get(
    					            FDService.SearchRequest.getInstance()
        				          .equals (OrderApi__Item__c.Name,'Collapsible Water Bottle')
					              )[0].Id;
    Id CORPORATE_MEMBERSHIP; //Corporate Membership
    Id PROFESSIONAL_MEMBERSHIP; //Professional Membership
    Id YODA_FOR_LIFE; //YODA for Life Membership
        

}
