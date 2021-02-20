@AbapCatalog.sqlViewName: 'ZIRISHIPOTOTAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document TOtal Price'
//@VDM.viewType: #COMPOSITE
define view ZI_RISHI_PurchaseDocTotalPrice
  as select from ZI_RISHI_PurchaseDetails
{
  key PurchaseDoc,
      @Semantics.amount.currencyCode: 'Currency'
      sum( _PurchaseItems.TotalPrice ) as ItemTotalPrice,
      @Semantics.currencyCode: true
      _PurchaseItems.Currency as Currency,
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
} group by
PurchaseDoc,
PoDesc,
      PoStatus,
      PoPriority,
      Ccode,
      CreateBy,
      CreatedDateTime,
      _PurchaseItems.Currency,
      ChangedDateTime;

