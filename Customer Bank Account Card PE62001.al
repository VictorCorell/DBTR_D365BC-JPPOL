pageextension 62001 "Customer Bank Acc - adding" extends "Customer Bank Account Card"
{
    layout
    {
        addlast(factboxes)
        {
            part(DocAttachments; "Doc. Attachment List Factbox")
            {
                ApplicationArea = all;
                SubPageLink = "Table ID" = const(Database::Customer), "No." = field("Customer No.");
            }
        }
    }
}