//----------------------------------------------------
//
// Generated by www.easywsdl.com
// Version: 3.0.2.1
//
// Created by Quasar Development at 03-05-2014
//
//---------------------------------------------------


#import "FHBHelper.h"
#import "FHBsearch_query.h"


@implementation FHBsearch_query
@synthesize ad_ids;
@synthesize property_type;
@synthesize house_type;
@synthesize bedrooms;
@synthesize min_bedrooms;
@synthesize max_bedrooms;
@synthesize min_price;
@synthesize max_price;
@synthesize txt;
@synthesize agreed;
@synthesize days_old;
@synthesize images;
@synthesize agent_id;
@synthesize institute_id;
@synthesize edited_since;
@synthesize features;
@synthesize available_date;
@synthesize lease_length;
@synthesize furnished;
@synthesize rent_allowance;
@synthesize single_beds;
@synthesize double_beds;
@synthesize twin_beds;
@synthesize bedroom_type;
@synthesize owner_occupied;
@synthesize occupants;
@synthesize gender;
@synthesize couples_allowed;
@synthesize available_for;
@synthesize min_sq_ft;
@synthesize max_sq_ft;
@synthesize contract_type;
@synthesize sleeps_number;
@synthesize counties;
@synthesize cities;
@synthesize general_areas;
@synthesize areas;
@synthesize postcodes;
@synthesize address;
@synthesize country;
@synthesize perpage;
@synthesize page;
@synthesize sort_by;
@synthesize sort_ascending;
@synthesize distance_sort_latitude;
@synthesize distance_sort_longitude;

+ (FHBsearch_query *)createWithXml:(DDXMLElement *)__node __request:(FHBRequestResultHandler*) __request
{
    if(__node == nil) { return nil; }
    return [[self alloc] initWithXml: __node __request:__request];
}

-(id)init {
    if ((self=[super init])) {
        self.ad_ids =[NSMutableArray array];
        self.property_type =[NSMutableArray array];
        self.features =[NSMutableArray array];
        self.counties =[NSMutableArray array];
        self.cities =[NSMutableArray array];
        self.general_areas =[NSMutableArray array];
        self.areas =[NSMutableArray array];
        self.postcodes =[NSMutableArray array];
    }
    return self;
}

- (id) initWithXml: (DDXMLElement*) __node __request:(FHBRequestResultHandler*) __request{
    if(self = [self init])
    {
        if([FHBHelper hasValue:__node name:@"ad_ids"])
        {
            NSArray* __items=[__node elementsForName:@"ad_ids"];
            for (DDXMLElement* __item in __items) {
                [self.ad_ids addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"property_type"])
        {
            NSArray* __items=[__node elementsForName:@"property_type"];
            for (DDXMLElement* __item in __items) {
                [self.property_type addObject:[__item stringValue]];
            }
        }
        if([FHBHelper hasValue:__node name:@"house_type" index:0])
        {
            self.house_type = [[FHBHelper getNode:__node name:@"house_type" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"bedrooms" index:0])
        {
            self.bedrooms = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"bedrooms" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"min_bedrooms" index:0])
        {
            self.min_bedrooms = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"min_bedrooms" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"max_bedrooms" index:0])
        {
            self.max_bedrooms = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"max_bedrooms" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"min_price" index:0])
        {
            self.min_price = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"min_price" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"max_price" index:0])
        {
            self.max_price = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"max_price" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"txt" index:0])
        {
            self.txt = [[FHBHelper getNode:__node name:@"txt" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"agreed" index:0])
        {
            self.agreed = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"agreed" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"days_old" index:0])
        {
            self.days_old = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"days_old" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"images" index:0])
        {
            self.images = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"images" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"agent_id" index:0])
        {
            self.agent_id = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"agent_id" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"institute_id" index:0])
        {
            self.institute_id = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"institute_id" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"edited_since" index:0])
        {
            self.edited_since = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"edited_since" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"features"])
        {
            NSArray* __items=[__node elementsForName:@"features"];
            for (DDXMLElement* __item in __items) {
                [self.features addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"available_date" index:0])
        {
            self.available_date = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"available_date" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"lease_length" index:0])
        {
            self.lease_length = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"lease_length" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"furnished" index:0])
        {
            self.furnished = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"furnished" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"rent_allowance" index:0])
        {
            self.rent_allowance = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"rent_allowance" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"single_beds" index:0])
        {
            self.single_beds = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"single_beds" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"double_beds" index:0])
        {
            self.double_beds = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"double_beds" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"twin_beds" index:0])
        {
            self.twin_beds = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"twin_beds" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"bedroom_type" index:0])
        {
            self.bedroom_type = [[FHBHelper getNode:__node name:@"bedroom_type" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"owner_occupied" index:0])
        {
            self.owner_occupied = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"owner_occupied" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"occupants" index:0])
        {
            self.occupants = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"occupants" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"gender" index:0])
        {
            self.gender = [[FHBHelper getNode:__node name:@"gender" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"couples_allowed" index:0])
        {
            self.couples_allowed = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"couples_allowed" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"available_for" index:0])
        {
            self.available_for = [[FHBHelper getNode:__node name:@"available_for" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"min_sq_ft" index:0])
        {
            self.min_sq_ft = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"min_sq_ft" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"max_sq_ft" index:0])
        {
            self.max_sq_ft = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"max_sq_ft" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"contract_type" index:0])
        {
            self.contract_type = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"contract_type" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"sleeps_number" index:0])
        {
            self.sleeps_number = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"sleeps_number" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"counties"])
        {
            NSArray* __items=[__node elementsForName:@"counties"];
            for (DDXMLElement* __item in __items) {
                [self.counties addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"cities"])
        {
            NSArray* __items=[__node elementsForName:@"cities"];
            for (DDXMLElement* __item in __items) {
                [self.cities addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"general_areas"])
        {
            NSArray* __items=[__node elementsForName:@"general_areas"];
            for (DDXMLElement* __item in __items) {
                [self.general_areas addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"areas"])
        {
            NSArray* __items=[__node elementsForName:@"areas"];
            for (DDXMLElement* __item in __items) {
                [self.areas addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"postcodes"])
        {
            NSArray* __items=[__node elementsForName:@"postcodes"];
            for (DDXMLElement* __item in __items) {
                [self.postcodes addObject:[FHBHelper getNumber:[__item stringValue]]];
            }
        }
        if([FHBHelper hasValue:__node name:@"address" index:0])
        {
            self.address = [[FHBHelper getNode:__node name:@"address" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"country" index:0])
        {
            self.country = [[FHBHelper getNode:__node name:@"country" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"perpage" index:0])
        {
            self.perpage = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"perpage" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"page" index:0])
        {
            self.page = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"page" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"sort_by" index:0])
        {
            self.sort_by = [[FHBHelper getNode:__node name:@"sort_by" index:0] stringValue];
        }
        if([FHBHelper hasValue:__node name:@"sort_ascending" index:0])
        {
            self.sort_ascending = [[NSNumber alloc]initWithBool:[[[FHBHelper getNode:__node name:@"sort_ascending" index:0] stringValue] boolValue]];
        }
        if([FHBHelper hasValue:__node name:@"distance_sort_latitude" index:0])
        {
            self.distance_sort_latitude = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"distance_sort_latitude" index:0] stringValue]];
        }
        if([FHBHelper hasValue:__node name:@"distance_sort_longitude" index:0])
        {
            self.distance_sort_longitude = [FHBHelper getNumber:[[FHBHelper getNode:__node name:@"distance_sort_longitude" index:0] stringValue]];
        }
    }
    return self;
}

-(void) serialize:(DDXMLElement*)__parent __request:(FHBRequestResultHandler*) __request
{

             
        if(self.ad_ids!=nil)
        {
            for (NSNumber* __item in self.ad_ids) {
                DDXMLElement* __ad_idsItemElement=[__request writeElement:ad_ids type:[NSNumber class] name:@"ad_ids" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__ad_idsItemElement!=nil)
                {
                    [__ad_idsItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        if(self.property_type!=nil)
        {
            for (NSString* __item in self.property_type) {
                DDXMLElement* __property_typeItemElement=[__request writeElement:property_type type:[NSString class] name:@"property_type" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__property_typeItemElement!=nil)
                {
                    [__property_typeItemElement setStringValue:__item];
                }
            }
        }
             
        DDXMLElement* __house_typeItemElement=[__request writeElement:house_type type:[NSString class] name:@"house_type" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__house_typeItemElement!=nil)
        {
            [__house_typeItemElement setStringValue:self.house_type];
        }
             
        DDXMLElement* __bedroomsItemElement=[__request writeElement:bedrooms type:[NSNumber class] name:@"bedrooms" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__bedroomsItemElement!=nil)
        {
            [__bedroomsItemElement setStringValue:[self.bedrooms stringValue]];
        }
             
        DDXMLElement* __min_bedroomsItemElement=[__request writeElement:min_bedrooms type:[NSNumber class] name:@"min_bedrooms" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__min_bedroomsItemElement!=nil)
        {
            [__min_bedroomsItemElement setStringValue:[self.min_bedrooms stringValue]];
        }
             
        DDXMLElement* __max_bedroomsItemElement=[__request writeElement:max_bedrooms type:[NSNumber class] name:@"max_bedrooms" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__max_bedroomsItemElement!=nil)
        {
            [__max_bedroomsItemElement setStringValue:[self.max_bedrooms stringValue]];
        }
             
        DDXMLElement* __min_priceItemElement=[__request writeElement:min_price type:[NSNumber class] name:@"min_price" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__min_priceItemElement!=nil)
        {
            [__min_priceItemElement setStringValue:[self.min_price stringValue]];
        }
             
        DDXMLElement* __max_priceItemElement=[__request writeElement:max_price type:[NSNumber class] name:@"max_price" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__max_priceItemElement!=nil)
        {
            [__max_priceItemElement setStringValue:[self.max_price stringValue]];
        }
             
        DDXMLElement* __txtItemElement=[__request writeElement:txt type:[NSString class] name:@"txt" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__txtItemElement!=nil)
        {
            [__txtItemElement setStringValue:self.txt];
        }
             
        DDXMLElement* __agreedItemElement=[__request writeElement:agreed type:[NSNumber class] name:@"agreed" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__agreedItemElement!=nil)
        {
            [__agreedItemElement setStringValue:[self.agreed stringValue]];
        }
             
        DDXMLElement* __days_oldItemElement=[__request writeElement:days_old type:[NSNumber class] name:@"days_old" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__days_oldItemElement!=nil)
        {
            [__days_oldItemElement setStringValue:[self.days_old stringValue]];
        }
             
        DDXMLElement* __imagesItemElement=[__request writeElement:images type:[NSNumber class] name:@"images" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__imagesItemElement!=nil)
        {
            [__imagesItemElement setStringValue:[self.images stringValue]];
        }
             
        DDXMLElement* __agent_idItemElement=[__request writeElement:agent_id type:[NSNumber class] name:@"agent_id" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__agent_idItemElement!=nil)
        {
            [__agent_idItemElement setStringValue:[self.agent_id stringValue]];
        }
             
        DDXMLElement* __institute_idItemElement=[__request writeElement:institute_id type:[NSNumber class] name:@"institute_id" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__institute_idItemElement!=nil)
        {
            [__institute_idItemElement setStringValue:[self.institute_id stringValue]];
        }
             
        DDXMLElement* __edited_sinceItemElement=[__request writeElement:edited_since type:[NSNumber class] name:@"edited_since" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__edited_sinceItemElement!=nil)
        {
            [__edited_sinceItemElement setStringValue:[self.edited_since stringValue]];
        }
             
        if(self.features!=nil)
        {
            for (NSNumber* __item in self.features) {
                DDXMLElement* __featuresItemElement=[__request writeElement:features type:[NSNumber class] name:@"features" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__featuresItemElement!=nil)
                {
                    [__featuresItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        DDXMLElement* __available_dateItemElement=[__request writeElement:available_date type:[NSNumber class] name:@"available_date" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__available_dateItemElement!=nil)
        {
            [__available_dateItemElement setStringValue:[self.available_date stringValue]];
        }
             
        DDXMLElement* __lease_lengthItemElement=[__request writeElement:lease_length type:[NSNumber class] name:@"lease_length" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__lease_lengthItemElement!=nil)
        {
            [__lease_lengthItemElement setStringValue:[self.lease_length stringValue]];
        }
             
        DDXMLElement* __furnishedItemElement=[__request writeElement:furnished type:[NSNumber class] name:@"furnished" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__furnishedItemElement!=nil)
        {
            [__furnishedItemElement setStringValue:[self.furnished stringValue]];
        }
             
        DDXMLElement* __rent_allowanceItemElement=[__request writeElement:rent_allowance type:[NSNumber class] name:@"rent_allowance" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__rent_allowanceItemElement!=nil)
        {
            [__rent_allowanceItemElement setStringValue:[self.rent_allowance stringValue]];
        }
             
        DDXMLElement* __single_bedsItemElement=[__request writeElement:single_beds type:[NSNumber class] name:@"single_beds" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__single_bedsItemElement!=nil)
        {
            [__single_bedsItemElement setStringValue:[self.single_beds stringValue]];
        }
             
        DDXMLElement* __double_bedsItemElement=[__request writeElement:double_beds type:[NSNumber class] name:@"double_beds" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__double_bedsItemElement!=nil)
        {
            [__double_bedsItemElement setStringValue:[self.double_beds stringValue]];
        }
             
        DDXMLElement* __twin_bedsItemElement=[__request writeElement:twin_beds type:[NSNumber class] name:@"twin_beds" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__twin_bedsItemElement!=nil)
        {
            [__twin_bedsItemElement setStringValue:[self.twin_beds stringValue]];
        }
             
        DDXMLElement* __bedroom_typeItemElement=[__request writeElement:bedroom_type type:[NSString class] name:@"bedroom_type" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__bedroom_typeItemElement!=nil)
        {
            [__bedroom_typeItemElement setStringValue:self.bedroom_type];
        }
             
        DDXMLElement* __owner_occupiedItemElement=[__request writeElement:owner_occupied type:[NSNumber class] name:@"owner_occupied" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__owner_occupiedItemElement!=nil)
        {
            [__owner_occupiedItemElement setStringValue:[self.owner_occupied stringValue]];
        }
             
        DDXMLElement* __occupantsItemElement=[__request writeElement:occupants type:[NSNumber class] name:@"occupants" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__occupantsItemElement!=nil)
        {
            [__occupantsItemElement setStringValue:[self.occupants stringValue]];
        }
             
        DDXMLElement* __genderItemElement=[__request writeElement:gender type:[NSString class] name:@"gender" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__genderItemElement!=nil)
        {
            [__genderItemElement setStringValue:self.gender];
        }
             
        DDXMLElement* __couples_allowedItemElement=[__request writeElement:couples_allowed type:[NSNumber class] name:@"couples_allowed" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__couples_allowedItemElement!=nil)
        {
            [__couples_allowedItemElement setStringValue:[self.couples_allowed stringValue]];
        }
             
        DDXMLElement* __available_forItemElement=[__request writeElement:available_for type:[NSString class] name:@"available_for" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__available_forItemElement!=nil)
        {
            [__available_forItemElement setStringValue:self.available_for];
        }
             
        DDXMLElement* __min_sq_ftItemElement=[__request writeElement:min_sq_ft type:[NSNumber class] name:@"min_sq_ft" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__min_sq_ftItemElement!=nil)
        {
            [__min_sq_ftItemElement setStringValue:[self.min_sq_ft stringValue]];
        }
             
        DDXMLElement* __max_sq_ftItemElement=[__request writeElement:max_sq_ft type:[NSNumber class] name:@"max_sq_ft" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__max_sq_ftItemElement!=nil)
        {
            [__max_sq_ftItemElement setStringValue:[self.max_sq_ft stringValue]];
        }
             
        DDXMLElement* __contract_typeItemElement=[__request writeElement:contract_type type:[NSNumber class] name:@"contract_type" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__contract_typeItemElement!=nil)
        {
            [__contract_typeItemElement setStringValue:[self.contract_type stringValue]];
        }
             
        DDXMLElement* __sleeps_numberItemElement=[__request writeElement:sleeps_number type:[NSNumber class] name:@"sleeps_number" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__sleeps_numberItemElement!=nil)
        {
            [__sleeps_numberItemElement setStringValue:[self.sleeps_number stringValue]];
        }
             
        if(self.counties!=nil)
        {
            for (NSNumber* __item in self.counties) {
                DDXMLElement* __countiesItemElement=[__request writeElement:counties type:[NSNumber class] name:@"counties" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__countiesItemElement!=nil)
                {
                    [__countiesItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        if(self.cities!=nil)
        {
            for (NSNumber* __item in self.cities) {
                DDXMLElement* __citiesItemElement=[__request writeElement:cities type:[NSNumber class] name:@"cities" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__citiesItemElement!=nil)
                {
                    [__citiesItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        if(self.general_areas!=nil)
        {
            for (NSNumber* __item in self.general_areas) {
                DDXMLElement* __general_areasItemElement=[__request writeElement:general_areas type:[NSNumber class] name:@"general_areas" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__general_areasItemElement!=nil)
                {
                    [__general_areasItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        if(self.areas!=nil)
        {
            for (NSNumber* __item in self.areas) {
                DDXMLElement* __areasItemElement=[__request writeElement:areas type:[NSNumber class] name:@"areas" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__areasItemElement!=nil)
                {
                    [__areasItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        if(self.postcodes!=nil)
        {
            for (NSNumber* __item in self.postcodes) {
                DDXMLElement* __postcodesItemElement=[__request writeElement:postcodes type:[NSNumber class] name:@"postcodes" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:NO];
                if(__postcodesItemElement!=nil)
                {
                    [__postcodesItemElement setStringValue:[__item stringValue]];
                }
            }
        }
             
        DDXMLElement* __addressItemElement=[__request writeElement:address type:[NSString class] name:@"address" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__addressItemElement!=nil)
        {
            [__addressItemElement setStringValue:self.address];
        }
             
        DDXMLElement* __countryItemElement=[__request writeElement:country type:[NSString class] name:@"country" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__countryItemElement!=nil)
        {
            [__countryItemElement setStringValue:self.country];
        }
             
        DDXMLElement* __perpageItemElement=[__request writeElement:perpage type:[NSNumber class] name:@"perpage" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__perpageItemElement!=nil)
        {
            [__perpageItemElement setStringValue:[self.perpage stringValue]];
        }
             
        DDXMLElement* __pageItemElement=[__request writeElement:page type:[NSNumber class] name:@"page" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__pageItemElement!=nil)
        {
            [__pageItemElement setStringValue:[NSString stringWithFormat:@"%@", self.page]];
        }
             
        DDXMLElement* __sort_byItemElement=[__request writeElement:sort_by type:[NSString class] name:@"sort_by" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__sort_byItemElement!=nil)
        {
            [__sort_byItemElement setStringValue:self.sort_by];
        }
             
        DDXMLElement* __sort_ascendingItemElement=[__request writeElement:sort_ascending type:[NSNumber class] name:@"sort_ascending" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__sort_ascendingItemElement!=nil)
        {
            [__sort_ascendingItemElement setStringValue:[FHBHelper toBoolStringFromNumber:self.sort_ascending]];
        }
             
        DDXMLElement* __distance_sort_latitudeItemElement=[__request writeElement:distance_sort_latitude type:[NSNumber class] name:@"distance_sort_latitude" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__distance_sort_latitudeItemElement!=nil)
        {
            [__distance_sort_latitudeItemElement setStringValue:[self.distance_sort_latitude stringValue]];
        }
             
        DDXMLElement* __distance_sort_longitudeItemElement=[__request writeElement:distance_sort_longitude type:[NSNumber class] name:@"distance_sort_longitude" URI:@"http://api.daft.ie/v2/" parent:__parent skipNullProperty:__request.SkipNullProperties];
        if(__distance_sort_longitudeItemElement!=nil)
        {
            [__distance_sort_longitudeItemElement setStringValue:[self.distance_sort_longitude stringValue]];
        }


}
@end
