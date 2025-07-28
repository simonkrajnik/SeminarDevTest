table 50100 "Seminar-DevTest"
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;
    DrillDownPageId = "Seminar-DevTest";
    LookupPageId = "Seminar-DevTest";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SeminarSetup.Get();
                    NoSeries.TestManual(SeminarSetup."No. Series");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Begin Date"; DateTime)
        {
            Caption = 'Begin Date';
        }
        field(4; "End Date"; DateTime)
        {
            Caption = 'End Date';
        }
        field(5; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }
        field(6; Organizer; Code[20])
        {
            Caption = 'Organizer';
            TableRelation = Resource;
            trigger OnValidate()
            var
                Resource: Record Resource;
            begin
                if Resource.Get(Organizer) then
                    "Organizer Name" := Resource.Name
            end;
        }
        field(7; "Organizer Name"; Text[100])
        {
            Caption = 'Organizer Name';
        }
        field(8; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
        }
        field(9; "Min No. of Participants"; Integer)
        {
            Caption = 'Min No. of Participants';
        }
        field(10; "Max No. of Participants"; Integer)
        {
            Caption = 'Max No. of Participants';
        }
        field(11; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(12; "Last Modified by"; Code[80])
        {
            Caption = 'Last Modified by';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup(User."Full Name" where("User Security ID" = field(SystemModifiedBy)));
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        SeminarSetup.Get();
        SeminarSetup.TestField("No. Series");
        "No. Series" := SeminarSetup."No. Series";
        "No." := NoSeries.GetNextNo("No. Series");
    end;

    var
        NoSeries: Codeunit "No. Series";
        SeminarSetup: Record "Seminar Setup-DevTest";
}
