using { sap.ui.vendorManagement as my } from '../db/schema';
@path: 'service/risk'
service RiskService {
  entity Vendor as projection on my.Vendor;
    annotate Vendor with @odata.draft.enabled;
  entity Onboarding as projection on my.Onboarding;
    annotate Onboarding with @odata.draft.enabled;
}