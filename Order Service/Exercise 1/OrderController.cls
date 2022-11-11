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
					              )[0].Id;; 
        

}
