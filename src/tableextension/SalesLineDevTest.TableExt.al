tableextension 50100 "Sales Line-DevTest" extends "Sales Line"
{
    fields
    {
        field(50100; "Seminar No.-DevTest"; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = ToBeClassified;
            TableRelation = "Seminar-DevTest";
            trigger OnValidate()
            begin
                if (Rec."Seminar No.-DevTest" <> xRec."Seminar No.-DevTest") and (Rec."Seminar No.-DevTest" <> '') then
                    Rec.CopyFromSeminar(Rec."Seminar No.-DevTest");
            end;
        }
    }
    procedure CopyFromSeminar(SeminarNo: Code[20])
    var
        Seminar: Record "Seminar-DevTest";
    begin
        Seminar.Get(SeminarNo);
        Seminar.TestField(Seminar.Organizer);
        Rec.Validate(Rec.Type, Rec.Type::Resource);
        Rec.Validate(Rec."No.", Seminar.Organizer);
        Rec.Validate(Rec.Quantity, 1);
        Rec.Validate(Rec."Unit Price", Seminar."Seminar Price");
        Rec."Seminar No.-DevTest" := Seminar."No.";
    end;
}
