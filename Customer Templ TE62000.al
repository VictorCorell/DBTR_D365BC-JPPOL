tableextension 62000 "Customer templ - adding" extends "Customer Templ."
{
    fields
    {
        // add 'Bal. Account No.'
        field(62000; CPMBalAccountNo; Code[20])
        {
            Caption = 'Bal. Account No.';
            ToolTip = 'Specifies the balance account for use with Payment Management.';
            TableRelation = "Bank Account"."No.";
        }
    }
}