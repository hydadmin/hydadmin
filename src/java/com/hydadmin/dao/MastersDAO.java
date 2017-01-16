package com.hydadmin.dao;

import com.hydadmin.pojos.ActiveStatus;
import com.hydadmin.pojos.Qualification;
import com.hydadmin.pojos.Designation;
import com.hydadmin.pojos.Status;
import com.hydadmin.pojos.Country;
import com.hydadmin.pojos.City;
import com.hydadmin.pojos.Candidate;
import com.hydadmin.pojos.Manager;
import com.hydadmin.pojos.Opening;
import com.hydadmin.pojos.PaidStatus;
import com.hydadmin.pojos.State;
import com.hydadmin.utilities.SpringMongoConfig;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.bson.types.ObjectId;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

public class MastersDAO {

    private MongoOperations mongoOperation;
    ApplicationContext ctx;

    public MastersDAO() {
        ctx = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
        mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
    }

    public String addCandidate(Candidate candidateObj) {
        mongoOperation.save(candidateObj);
        return "success";
    }

    public String addManager(Manager managerObj) {
        mongoOperation.save(managerObj);
        return "success";
    }

    public String addOpening(Opening openingObj) {
        mongoOperation.save(openingObj);
        return "success";
    }

    public Qualification getQualificationbyName(String qualificationname) {
        Query q = new Query();
        q.addCriteria(Criteria.where("statusname").is(qualificationname));
        Qualification qualificationobj = mongoOperation.findOne(q, Qualification.class);
        return qualificationobj;
    }

    public Qualification getQualificationbyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        Qualification qualificationobj = mongoOperation.findOne(q, Qualification.class);
        return qualificationobj;
    }

    public Designation getDesignationbyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        Designation designationobj = mongoOperation.findOne(q, Designation.class);
        return designationobj;
    }

    public PaidStatus getPaidstatusbyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        PaidStatus paidstatusobj = mongoOperation.findOne(q, PaidStatus.class);
        return paidstatusobj;
    }

    public Status getStatusbyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        Status statusobj = mongoOperation.findOne(q, Status.class);
        return statusobj;
    }

    public ActiveStatus getActiveStatusbyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        ActiveStatus statusobj = mongoOperation.findOne(q, ActiveStatus.class);
        return statusobj;
    }

    public Country getCountrybyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        Country countryobj = mongoOperation.findOne(q, Country.class);
        return countryobj;
    }

    public State getStatebyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        State stateobj = mongoOperation.findOne(q, State.class);
        return stateobj;
    }

    public City getCitybyId(String editid) {
        Query q = new Query();
        q.addCriteria(Criteria.where("_id").is(new ObjectId(editid)));
        City cityobj = mongoOperation.findOne(q, City.class);
        return cityobj;
    }

    public List<Candidate> getAllCandidates() {
        List<Candidate> candidatelist = mongoOperation.findAll(Candidate.class);
        return candidatelist;
    }
    
    public List<Manager> getAllManagers() {
        List<Manager> managerlist = mongoOperation.findAll(Manager.class);
        return managerlist;
    }

    public List<Designation> getAllDesignations() {
        List<Designation> designationlist = mongoOperation.findAll(Designation.class);
        return designationlist;
    }

    public List<Opening> getAllOpenings() {
        List<Opening> openinglist = mongoOperation.findAll(Opening.class);
        return openinglist;
    }

    public String addDesignation(Designation designationObj) {
        mongoOperation.save(designationObj);
        return "success";
    }

    public List<Qualification> getAllQualifications() {
        List<Qualification> qualificationlist = mongoOperation.findAll(Qualification.class);
        return qualificationlist;
    }
    public List<ActiveStatus> getAllActiveStatus() {
        List<ActiveStatus> activestatuslist = mongoOperation.findAll(ActiveStatus.class);
        return activestatuslist;
    }

    public String addQualification(Qualification qualificationObj) {
        mongoOperation.save(qualificationObj);
        return "success";
    }
}
