codeunit 62001 "Customer Ledger entry - edit"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", OnBeforeCustLedgEntryInsert, '', false, false)]
    local procedure OnBeforeCustLedgEntryInsert(var CustLedgerEntry: Record "Cust. Ledger Entry"; GenJournalLine: Record "Gen. Journal Line")
    begin
        // Set description to 'Document Type Document No.' before posting
        if (CustLedgerEntry."Document Type" <> CustLedgerEntry."Document Type"::" ") and (CustLedgerEntry."Document No." <> '') then
            CustLedgerEntry.Description := Format(CustLedgerEntry."Document Type") + ' ' + CustLedgerEntry."Document No.";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", OnBeforeInsertGlEntry, '', false, false)]
    local procedure OnBeforeGLEntryInsert(var GLEntry: Record "G/L Entry")
    begin
        // Set description for General Ledger Entry
        if (GLEntry."Document Type" <> GLEntry."Document Type"::" ") and (GLEntry."Document No." <> '') then
            GLEntry.Description := Format(GLEntry."Document Type") + ' ' + GLEntry."Document No.";
    end;
}