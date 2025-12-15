namespace db;

using { cuid, managed } from '@sap/cds/common';


entity Projects : cuid, managed {

    name                      : String(256);
    projectName               : String(256);
    projectElement            : String(256);
    projectElementDescription : String(256);
    companyCode               : String(256);
    description               : String(255);
    salesOrg                  : String(25);
    distributionChannel       : String(25);
    division                  : String(25);
    country                   : String(25);
    completionDate            : Date;
    commencementDate          : Date;
    projectProgress           : Decimal(5,2);

    projectMilestones : Composition of many ProjectMilestone
        on projectMilestones.project = $self;

    status                    : Integer;
}


entity ProjectMilestone : cuid {

    project           : Association to Projects;

    name              : String(100) @mandatory;
    description       : String(255);
    descriptionArabic : String(255);
    plannedDate       : Date;
    actualDate        : Date;
    progress          : Decimal(5,2);

    status            : Integer @mandatory;
}
