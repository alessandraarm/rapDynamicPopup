@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_PO_TBL_99
  provider contract transactional_query
  as projection on ZR_PO_TBL_99
{
  key PoNum,
  Org,
  Vendor,
  Status,
  Type,
  Reason,
  Refno,
  CreateBy,
  CreatedDateTime,
  ChangedDateTime,
  LocalLastChangedBy,
  @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_PO_CALC99'
  @EndUserText.label: 'Virtual Element'
  virtual HideAdditionalParams: abap_boolean
}
