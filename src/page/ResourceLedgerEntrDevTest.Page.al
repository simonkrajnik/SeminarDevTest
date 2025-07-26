pageextension 50101 "Resource Ledger Entr.-DevTest" extends "Resource Ledger Entries"
{
    layout
    {
        addafter("Resource No.")
        {
            field("Seminar No.-DevTest"; Rec."Seminar No.-DevTest")
            {
                ApplicationArea = All;
            }
        }
    }
}
