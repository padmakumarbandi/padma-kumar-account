

#import "customisedcell.h"
#import "GrocerieItems.h"
#import "ItemModel.h"
@implementation customisedcell
-(NSArray*) StoresObjects{
        
        if (self.NoOfStores > 0) {
            return self.NoOfStores;
        }
    //spices
    ItemModel *item1 =[[ItemModel alloc] initWithitemcatg:@"Redchilli"
                                                  itemdes:@"The chili pepper is the fruit of plants from the genus Capsicum, members of the nightshade family, Solanaceae. In Australia, Britain, India, Ireland, New Zealand, Pakistan, South Africa and in other Asian countries, it is usually known simply as chilli. ... See also Chili (disambiguation) or Red Chillies (film). Green bird's eyeThe chili pepper is the fruit of plants from the genus Capsicum, members of the nightshade family, Solanaceae. In Australia, Britain, India, Ireland, New Zealand, Pakistan, South Africa and in other Asian countries, it is usually known simply as chilli. ... See also Chili (disambiguation) or Red Chillies (film). Green bird's eye"
                                                  itempic:[UIImage imageNamed: @"chili"] ];
    ItemModel *item9 =[[ItemModel alloc]initWithitemcatg:@"Cloves"
                                                 itemdes:@"Cloves (Syzygium aromaticum) are an unopened flower bud from an Indonesian tree. They are used as a spice in food dishes, and also have medicinal and household uses. Every pantry should have fresh cloves and ground cloves on stand-by for various uses"itempic:[UIImage imageNamed:@"cl"]];
    
//    snacks
    ItemModel * item2 =[[ItemModel alloc]initWithitemcatg:@"Waffles"
                                                  itemdes:@"A waffle is a leavened batter or dough cooked between two plates, patterned to give a characteristic size, shape and surface impression. There are many variations based on the type of waffle iron and recipe used. Waffles are eaten throughout the world, particularly in Belgium, which has over a dozen regional varietiesA waffle is a leavened batter or dough cooked between two plates, patterned to give a characteristic size, shape and surface impression. There are many variations based on the type of waffle iron and recipe used. Waffles are eaten throughout the world, particularly in Belgium, which has over a dozen regional varieties" itempic:[UIImage imageNamed: @"wa"]];
    ItemModel * item4 =[[ItemModel alloc]initWithitemcatg:@"Samosa"
                                                  itemdes:@"punjabi samosa recipe with step by step photos and tips – these samosas are flaky and crisp from outside with a delicious potato and peas stuffing. ... its a proper north indian punjabi samosa recipe which you are going to like. ... to get the right texture and flakiness in the samosa" itempic:[UIImage imageNamed: @"sm"] ];
//    drinks
    ItemModel * item6 =[[ItemModel alloc]initWithitemcatg:@"Coke"
                                                  itemdes:@"Coca-Cola is the most popular and biggest-selling soft drink in history, as well as one of the most recognizable brands in the world. Created in 1886 in Atlanta, Georgia, by Dr. John S. Pemberton, Coca-Cola was first offered as a fountain beverage at Jacob's Pharmacy by mixing Coca-Colasyrup with carbonated water." itempic:[UIImage imageNamed: @"ck"] ];
    ItemModel * item7 =[[ItemModel alloc]initWithitemcatg:@"Sprite"
                                                  itemdes:@"Sprite is a colorless, caffeine-free, lemon and lime-flavoured soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone (“Clear Lemon Fanta”) and was introduced in the United States under the current brand name Sprite in 1961 as a competitor to 7 Up." itempic:[UIImage imageNamed: @"sp"] ];
    
    //diary products
    ItemModel *item3 =[[ItemModel alloc]initWithitemcatg:@"Milk"
                                                 itemdes:@"Milk is a pale liquid produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals before they are able to digest other types of food. Early-lactation milk contains colostrum, which carries the mother's antibodies to its young and can reduce the risk of many diseases. It contains many other nutrients[1] including protein and lactose.Milk is a pale liquid produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals before they are able to digest other types of food. Early-lactation milk contains colostrum, which carries the mother's antibodies to its young and can reduce the risk of many diseases. It contains many other nutrients[1] including protein and lactose."
                                                 itempic:[UIImage imageNamed:@"milk"]];
    
    
    GrocerieItems *gci1 = [[GrocerieItems alloc]initWithitemlist:@[item1,item9] gcname:@"Spices"];
    GrocerieItems *gci2 = [[GrocerieItems alloc]initWithitemlist:@[item3] gcname:@"Dairy"];
    
     GrocerieItems *gci3 = [[GrocerieItems alloc]initWithitemlist:@[item2,item4] gcname:@"Snacks"];
    
     GrocerieItems *gci4 = [[GrocerieItems alloc]initWithitemlist:@[item6,item7] gcname:@"Drinks"];
    
    
    
    self.NoOfStores =@[gci1,gci2,gci3,gci4];
    return self.NoOfStores;
  
    
    
    

}
    @end
    

