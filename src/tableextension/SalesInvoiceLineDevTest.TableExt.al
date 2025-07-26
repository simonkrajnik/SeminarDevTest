tableextension 50103 "Sales Invoice Line-DevTest" extends "Sales Invoice Line"
{
    fields
    {
        field(50100; "Seminar No.-DevTest"; Code[20])
        {
            Caption = 'Seminar No.';
            DataClassification = ToBeClassified;
            TableRelation = "Seminar-DevTest";
        }
    }
}
