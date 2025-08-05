tableextension 62000 "Customer templ - adding" extends "Customer Templ."
{
    fields
    {
        // adds 'Bal. Account No.'
        field(62000; CPMBalAccountNo; Code[20])
        {
            Caption = 'Bal. Account No.';
            ToolTip = 'Specifies the balance account for use with Payment Management.';
            TableRelation = "Bank Account"."No.";
        }
        // adds 'Notification Definition'
        field(62001; CPMNotificationDefinition; Code[10])
        {
            Caption = 'Notification Template';
            Tooltip = 'Specifies the payment notification template that should be used as default for this customer.';
            TableRelation = "CPM Pmt. Notification Def"."Code";
        }
    }
}
