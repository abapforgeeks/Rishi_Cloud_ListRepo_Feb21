@AbapCatalog.sqlViewName: 'ZRSHPOSTATUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Status Value Help'
@Search.searchable: true
define view ZC_RISHI_POSTATUSVH as select from ZI_RISHI_POStatus {
@ObjectModel.text.element: ['Text']
    key Status,
    @Semantics.text: true
    @EndUserText.label: 'Purchase Status'
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    @Search.ranking: #HIGH
    Text
}
