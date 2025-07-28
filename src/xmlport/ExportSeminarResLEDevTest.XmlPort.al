xmlport 50100 "Export Seminar Res. LE-DevTest"
{
    Caption = 'Export Seminar Res. Ledger Entries';
    Direction = Export;
    Format = Xml;
    UseRequestPage = true;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(SeminarDevTest; "Seminar-DevTest")
            {
                RequestFilterFields = "No.", "Begin Date", "End Date";

                tableelement(ResLedgerEntry; "Res. Ledger Entry")
                {
                    SourceTableView = where("Seminar No.-DevTest" = filter(<> ''));
                    fieldelement(EntryNo; ResLedgerEntry."Entry No.")
                    {
                    }
                    fieldelement(EntryType; ResLedgerEntry."Entry Type")
                    {
                    }
                    fieldelement(DocumentNo; ResLedgerEntry."Document No.")
                    {
                    }
                    fieldelement(PostingDate; ResLedgerEntry."Posting Date")
                    {
                    }
                    fieldelement(ResourceNo; ResLedgerEntry."Resource No.")
                    {
                    }
                    fieldelement(Description; ResLedgerEntry.Description)
                    {
                    }
                    fieldelement(UnitofMeasureCode; ResLedgerEntry."Unit of Measure Code")
                    {
                    }
                    fieldelement(Quantity; ResLedgerEntry.Quantity)
                    {
                    }
                    fieldelement(UnitPrice; ResLedgerEntry."Unit Price")
                    {
                    }
                    fieldelement(SeminarNoDevTest; ResLedgerEntry."Seminar No.-DevTest")
                    {
                    }
                    trigger OnPreXmlItem()
                    begin
                        ResLedgerEntry.SetRange("Seminar No.-DevTest", SeminarDevTest."No.");
                    end;
                }
            }
        }
    }
}
