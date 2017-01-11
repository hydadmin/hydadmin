/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hydadmin.actions;

import com.hydadmin.dao.MastersDAO;
import com.hydadmin.pojos.Candidate;
import com.hydadmin.pojos.City;
import com.hydadmin.pojos.Country;
import com.hydadmin.pojos.Designation;
import com.hydadmin.pojos.Paidstatus;
import com.hydadmin.pojos.Qualification;
import com.hydadmin.pojos.State;
import com.hydadmin.pojos.Status;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Mirza
 */
public class CandidateAction {

    private String firstname;
    private String lastname;
    private String mobileno;
    private String gender;
    private String emailid;
    private String dateofbirth;
    private String passportno;
    private String religion;
    private String qualification;
    private String designation;
    private String totalexp;
    private String gulfexp;
    private String indianexp;
    private String applicationid;
    private String receiptno;
    private String pstatusstring;
    private String statusstring;
    private String receiptissuestring;
    private String receiptexpirystring;
    private String address;
    private String country;
    private String state;
    private String city;
    private List<Candidate> allcandidates = new ArrayList<Candidate>();

    public List<Candidate> getAllcandidates() {
        return allcandidates;
    }

    public void setAllcandidates(List<Candidate> allcandidates) {
        this.allcandidates = allcandidates;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getMobileno() {
        return mobileno;
    }

    public void setMobileno(String mobileno) {
        this.mobileno = mobileno;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getPassportno() {
        return passportno;
    }

    public void setPassportno(String passportno) {
        this.passportno = passportno;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getTotalexp() {
        return totalexp;
    }

    public void setTotalexp(String totalexp) {
        this.totalexp = totalexp;
    }

    public String getGulfexp() {
        return gulfexp;
    }

    public void setGulfexp(String gulfexp) {
        this.gulfexp = gulfexp;
    }

    public String getIndianexp() {
        return indianexp;
    }

    public void setIndianexp(String indianexp) {
        this.indianexp = indianexp;
    }

    public String getApplicationid() {
        return applicationid;
    }

    public void setApplicationid(String applicationid) {
        this.applicationid = applicationid;
    }

    public String getReceiptno() {
        return receiptno;
    }

    public void setReceiptno(String receiptno) {
        this.receiptno = receiptno;
    }

    public String getPstatusstring() {
        return pstatusstring;
    }

    public void setPstatusstring(String pstatusstring) {
        this.pstatusstring = pstatusstring;
    }

    public String getStatusstring() {
        return statusstring;
    }

    public void setStatusstring(String statusstring) {
        this.statusstring = statusstring;
    }

    public String getReceiptissuestring() {
        return receiptissuestring;
    }

    public void setReceiptissuestring(String receiptissuestring) {
        this.receiptissuestring = receiptissuestring;
    }

    public String getReceiptexpirystring() {
        return receiptexpirystring;
    }

    public void setReceiptexpirystring(String receiptexpirystring) {
        this.receiptexpirystring = receiptexpirystring;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public MastersDAO getMdao() {
        return mdao;
    }

    public void setMdao(MastersDAO mdao) {
        this.mdao = mdao;
    }

    MastersDAO mdao = new MastersDAO();

    public String toregister() {
        return SUCCESS;
    }

    public String registerCandidate() throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        Date dateofbirths = sdf.parse(dateofbirth);
//        Date receiptissuestrings = sdf.parse(receiptissuestring);
//        Date receiptexpirystrings = sdf.parse(receiptexpirystring);
        Candidate candidate = new Candidate();
        candidate.setFirstname(firstname);
        candidate.setLastname(lastname);
        candidate.setMobileno(mobileno);
        candidate.setGender(gender);
        candidate.setEmailid(emailid);
        candidate.setDateofbirth(dateofbirths);
        candidate.setPassportno(passportno);
        candidate.setReligion(religion);
        candidate.setQualification(qualification);
        candidate.setDesignation((designation));
        candidate.setTotalexp(totalexp);
        candidate.setGulfexp(gulfexp);
        candidate.setIndianexp(indianexp);
//        candidate.setApplicationid(applicationid);

        if (receiptno != null) {
            candidate.setReceiptno(receiptno);
            candidate.setPstatusid(mdao.getPaidstatusbyId(pstatusstring));
            candidate.setStatusid(mdao.getStatusbyId(statusstring));
//        candidate.setReceiptissuedate(receiptissuestrings);
//        candidate.setReceiptexpirydate(receiptexpirystrings);
        }

        candidate.setAddress(address);
        candidate.setCountry(country);
        candidate.setState(state);
        candidate.setCity(city);
        mdao.addCandidate(candidate);
        allcandidates();
        return SUCCESS;
    }
    
     public String allcandidates(){
     allcandidates=mdao.getAllCandidates();
    return SUCCESS;
    }
}
