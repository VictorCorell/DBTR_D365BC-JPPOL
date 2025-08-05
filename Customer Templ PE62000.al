pageextension 62000 "Customer templ - adding" extends "Customer Templ. Card"
{
    layout
    {
        // adds 'Bal. Account No.'
        addafter("Payment Method Code")
        {
            field(CPMBalAccountNo; rec.CPMBalAccountNo)
            {
                Caption = 'Bal. Account no.';
                ToolTip = 'Specifies the balance account for use with Payment Management.';
                ApplicationArea = all;
                TableRelation = "Bank Account"."No.";
            }
        }

    }

}