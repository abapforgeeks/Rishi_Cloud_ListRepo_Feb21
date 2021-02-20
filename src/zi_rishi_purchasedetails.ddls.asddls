@AbapCatalog.sqlViewName: 'ZIRISHIPODOC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document Details (Basic View)'
//@VDM.viewType: #BASIC
define view ZI_RISHI_PurchaseDetails as select from zpurchase_doc 
association[1..*] to ZI_RISHI_PurchaseItems as _PurchaseItems on $projection.PurchaseDoc = _PurchaseItems.PurchaseDoc
association[1] to ZI_RISHI_POStatus as _PurchaseStatus on $projection.PoStatus = _PurchaseStatus.Status
association[1] to ZI_RISHI_POPriority as _PurchasePriority on $projection.PoPriority = _PurchasePriority.Priority
{
    @ObjectModel.text.element: ['PoDesc']
    key purchase_doc as PurchaseDoc,
    @Semantics.text: true
    po_desc as PoDesc,
    po_status as PoStatus,
    po_priority as PoPriority,
    ccode as Ccode,
    create_by as CreateBy,
    created_date_time as CreatedDateTime,
    changed_date_time as ChangedDateTime,
    _PurchaseItems,
    _PurchaseStatus,
    _PurchasePriority
}
