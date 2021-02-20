@AbapCatalog.sqlViewName: 'ZCRISHIPOREPO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Report'
//@VDM.viewType: #CONSUMPTION
define view ZC_RISHI_PurchaseReport as select from ZI_RISHI_PurchaseDocTotalPrice {
    key PurchaseDoc,
    ItemTotalPrice,
    Currency,
    PoDesc,
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
