@AbapCatalog.sqlViewName: 'ZCRISHIPOREPO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Report'
@Metadata.allowExtensions: true
@Search.searchable: true
//@VDM.viewType: #CONSUMPTION
define view ZC_RISHI_PurchaseReport as select from ZI_RISHI_PurchaseDocTotalPrice {
    key PurchaseDoc,
    ItemTotalPrice,
    Currency,
    @Search:{ defaultSearchElement: true,fuzzinessThreshold: 0.7,ranking: #HIGH}
    PoDesc,
    @Consumption.valueHelpDefinition: [{ entity:{ name: 'ZC_RISHI_POSTATUSVH',element:'Status' } }]
    @Search:{defaultSearchElement: true,fuzzinessThreshold:  0.7,ranking: #MEDIUM }
    PoStatus,
    PoPriority,
    Ccode,
    CreateBy,
    CreatedDateTime,
    ChangedDateTime,
    /* Associations */
    _PurchaseItems,
    _PurchasePriority,
    _PurchaseStatus
}
