package com.erp.bean;

import javax.persistence.*;

@Entity
@Table(name = "Student")
public class Student {
	
	@Id
	@Column(name = "student_id", nullable = false)
	private String studentId;
	
	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "middle_name")
	private String middleName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "date_of_birth")
	private String dateOfBirth;
	
	@Column(name = "age")
	private String age;
	
	@Column(name = "gender")
	private String gender;
	
	@Column(name = "caste")
	private String caste;
	
	@Column(name = "religion")
	private String religion;
	
	@Column(name = "nationality")
	private String nationality;
	
	@Column(name = "state")
	private String state;
	
	@Column(name = "city")
	private String city;
	
	/*@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "class_id")
	private CreateClass classId;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "section_id")
	private CreateSection sectionId;*/
	@Column(name = "sClass")
	private String sClass;
	
	@Column(name = "section")
	private String section;
	
	@Column(name = "parent_id")
	private String parentId;
	
	@Column(columnDefinition = "LONGBLOB")
	private byte[] photo;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "resCategory")
	private String resCategory;
	
	@Column(name = "zipcode")
	private long zipcode;
	@Column(name = "optsub")
	private String optSub;
	
	@Column(name = "spkLang")
	private String spkLang;
			
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getResCategory() {
		return resCategory;
	}
	public void setResCategory(String resCategory) {
		this.resCategory = resCategory;
	}
	public long getZipcode() {
		return zipcode;
	}
	public void setZipcode(long zipcode) {
		this.zipcode = zipcode;
	}
	public byte[] getPhoto() {
		return photo;
	}
	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCaste() {
		return caste;
	}
	public void setCaste(String caste) {
		this.caste = caste;
	}
	public String getReligion() {
		return religion;
	}
	public void setReligion(String religion) {
		this.religion = religion;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
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
	
	
	public String getsClass() {
		return sClass;
	}
	public void setsClass(String sClass) {
		this.sClass = sClass;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	/*public CreateClass getClassId() {
		return classId;
	}
	public void setClassId(CreateClass classId) {
		this.classId = classId;
	}
	
	public CreateSection getSectionId() {
		return sectionId;
	}
	public void setSectionId(CreateSection sectionId) {
		this.sectionId = sectionId;
	}*/
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getSpkLang() {
		return spkLang;
	}
	public void setSpkLang(String spkLang) {
		this.spkLang = spkLang;
	}
	public String getOptSub() {
		return optSub;
	}
	public void setOptSub(String optSub) {
		this.optSub = optSub;
	}

	
}
