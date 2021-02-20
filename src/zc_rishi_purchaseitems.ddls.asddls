@AbapCatalog.sqlViewName: 'ZCRISHIPOITEMS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Items Consumption'
define view ZC_RISHI_PurchaseItems as select from ZI_RISHI_PurchaseItems {
    key PurchaseDoc,
    key PurchaseItem,
    ShortText,
    Price,
    Currency,
    TotalPrice,
    Quantity,
    Unit,
    ChangeDateTime,
    /* Associations */
    _Currency,
    _PurchaseHeader,
    _UOM
}
