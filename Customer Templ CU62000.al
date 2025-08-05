codeunit 62000 CustomerTemplateCopyExt
{
    // Relation between the customer template and a new customer for the 'CPM Bal. Account no.'
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Customer Templ. Mgt.", OnAfterCreateCustomerFromTemplate, '', false, false)]

    local procedure OnAfterCreateCustomerFromTemplate(var Customer: Record Customer; CustomerTempl: Record "Customer Templ.")
    begin
        Customer."CPM Bal. Account No." := CustomerTempl.CPMBalAccountNo;
        Customer."CPM Notification Definition" := CustomerTempl.CPMNotificationDefinition;
        Customer.Modify();
    end;

}
