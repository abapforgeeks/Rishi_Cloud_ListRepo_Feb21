@AbapCatalog.sqlViewName: 'ZIRISHIPOSTAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Status'
define view ZI_RISHI_POStatus as select from zpo_status {
@ObjectModel.text.element: ['Text']
    key status as Status,
    @Semantics.text: true
    text as Text
}
