namespace sap.ui.vendorManagement;
using { managed } from '@sap/cds/common';
  entity Vendor : managed {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    prio        : String(5);
    descr       : String;
    miti        : Association to Onboarding;
    impact      : Integer;
    criticality : Integer;
  }
  entity Onboarding : managed {
    key ID       : UUID  @(Core.Computed : true);
    description  : String;
    owner        : String;
    timeline     : String;
    risks        : Association to many Vendor on risks.miti = $self;
  }