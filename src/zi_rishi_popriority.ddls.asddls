@AbapCatalog.sqlViewName: 'ZIRISHIPOPRIO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'PO Priority'
define view ZI_RISHI_POPriority as select from zpo_priority {
@ObjectModel.text.element: ['Text']
 key priority as Priority,
 @Semantics.text: true
 text as Text   
}
