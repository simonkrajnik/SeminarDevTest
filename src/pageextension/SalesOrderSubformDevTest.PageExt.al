pageextension 50100 "Sales Order Subform-DevTest" extends "Sales Order Subform"
{
    layout
    {
        addafter("No.")
        {
            field("Seminar No.-DevTest"; Rec."Seminar No.-DevTest")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addafter("Select Nonstoc&k Items")
        {
            action("Select Seminar")
            {
                ApplicationArea = All;
                Caption = 'Select Seminar';
                Image = ResourceLedger;
                ToolTip = 'View the list of seminars that exist in the system. ';

                trigger OnAction()
                var
                    Seminar: Record "Seminar-DevTest";
                    SalesLine: Record "Sales Line";
                begin
                    if PAGE.RunModal(PAGE::"Seminars-DevTest", Seminar) = ACTION::LookupOK then begin
                        Rec.InitNewLine(SalesLine);
                        SalesLine.Init();
                        SalesLine."Line No." += 10000;
                        SalesLine.Insert(true);
                        SalesLine.CopyFromSeminar(Seminar."No.");
                        SalesLine.Modify(true);
                    end;
                end;
            }
        }
    }
}
