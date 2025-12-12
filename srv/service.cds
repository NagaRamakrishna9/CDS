using {db as service} from '../db/schema';

 service projectServices{
  @odata.draft.enabled

    entity Projects as projection on service.Projects;
    entity ProjectMilestones as projection on service.ProjectMilestone;
}