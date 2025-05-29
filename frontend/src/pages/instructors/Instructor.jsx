import React, { useState, useEffect } from "react";
import "./instructor.css";
import axios from "axios";
import DashboardLayout from "../../Layout/DashboardLayout";
import { BiTimeFive } from "react-icons/bi";
import AuthContext from "../../context/AuthProvider";
import { useNavigate } from "react-router-dom";
import useAuth from "../../hooks/useAuth";

const Instructor = () => {
  const [instructors, setInstructors] = useState([]);
  const [departments, setDepartments] = useState([]);
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [selectedDeptName, setSelectedDeptName] = useState("");
  const [allPreferences, setAllPreferences] = useState([]);
  const [timeslots, setTimeslots] = useState([]);
  const [selectedTimeslot, setSelectedTimeslot] = useState("");
  const [selectedInstructor, setSelectedInstructor] = useState("");

  const { auth } = useAuth();
  const navigate = useNavigate();

  // pagination for the table
  const [currentPage, setCurrentPage] = useState(1);
  const [recordsPerPage] = useState(10);

  const indexOfLastRecord = currentPage * recordsPerPage;
  const indexOfFirstRecord = indexOfLastRecord - recordsPerPage;

  const currentRecords = instructors.slice(
    indexOfFirstRecord,
    indexOfLastRecord
  );

  const isFirstPage = currentPage === 1;

  function handleNextPage() {
    setCurrentPage((prev) => prev + 1);
  }

  function handlePreviousPage() {
    if (!isFirstPage) {
      setCurrentPage((prev) => prev - 1);
    }
  }

  // Fetch all instructors
  const fetchInstructors = () => {
    axios
      .get("http://localhost:8080/api/instructors", {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        setInstructors(response.data);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  // Fetch all timeslots
  const fetchTimeSlots = () => {
    axios
      .get("http://localhost:8080/api/timeslots", {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        setTimeslots(response.data);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  const fetchAllPreferences = () => {
    axios
      .get("http://localhost:8080/api/instructors/preferences", {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        const preferencesData = response.data;
        setAllPreferences(preferencesData);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  // Fetch all departments
  const fetchDepartments = () => {
    axios
      .get("http://localhost:8080/api/departments", {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        setDepartments(response.data);
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  // Add a new instructor
  const addInstructor = () => {
    let newDeptName = selectedDeptName;
    if (selectedDeptName === "") {
      newDeptName = departments.length > 0 ? departments[0].deptName : "";
    }

    const newInstructor = {
      firstName: firstName,
      lastName: lastName,
      deptName: newDeptName,
    };

    axios
      .post("http://localhost:8080/api/instructors", newInstructor, {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        fetchInstructors();
        fetchAllPreferences();
        alert("Instructor added");
      })
      .catch((error) => console.error(`Error: ${error}`));
  };

  useEffect(() => {
    fetchInstructors();
    fetchDepartments();
    fetchAllPreferences();
    fetchTimeSlots();
  }, []);

  const handleDelete = (id) => {
    axios
      .delete(`http://localhost:8080/api/instructors/${id}`, {
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
      })
      .then((response) => {
        // Handle successful delete
      })
      .catch((error) => console.error(`Error: ${error}`));
    fetchInstructors();
  };

  const handleAddPreference = () => {
    const instructorId = selectedInstructor;
    const preferenceId = JSON.parse(selectedTimeslot).id;

    const postData = {
      timeslot: JSON.parse(selectedTimeslot),
      instructorName: selectedInstructor,
      // other form data
    };

    console.log(postData);

    fetch(
      `http://localhost:8080/api/instructors/${instructorId}/preferences/${preferenceId}`,
      {
        method: "POST",
        headers: {
          Authorization: `Bearer ${auth.accessToken}`,
        },
        body: JSON.stringify(postData),
      }
    )
      .then((response) => {
        if (response.ok) {
          // Request was successful
          // Handle success response
          fetchAllPreferences();
        } else {
          // Request failed
          // Handle error response
        }
      })
      .catch((error) => {
        // Handle network error
      });
  };

  return (
    <DashboardLayout>
      <div className="instructor-page">
        <main>
          <h1 className="text-3xl font-bold">Instructors</h1>

          <div className="main-content--instructors">
            <section className="instructor-cards flex my-4">
              <div className="stat">
                <div className="stat-title">Total Instructors</div>
                <div className="stat-value">{instructors.length}</div>
              </div>
              <div className="stat">
                <div className="stat-title">Total Departments</div>
                <div className="stat-value">{departments.length}</div>
              </div>
              <div className="stat">
                <ul className="list-none list-inside border-gray-700">
                  {allPreferences.map((instructor) => (
                    <li className="flex" key={instructor.instructorName}>
                      {instructor.instructorName}
                      <ul>
                        {instructor.preferences.map((preference) => (
                          <li
                            key={preference.id}
                            className="text-gray-700 ml-4"
                          >
                            <span className="flex items-center">
                              <BiTimeFive color="green" className="mx-4" />
                              {preference.day} {`${preference.startTime}`}
                            </span>
                          </li>
                        ))}
                      </ul>
                    </li>
                  ))}
                </ul>
                <div className="flex items-center justify-end">
                  <label
                    htmlFor="my-modal-2"
                    className="text-purple-600 hover:text-purple-400 font-semibold ml-6"
                  >
                    Add preference
                  </label>
                  {/* Put this part before </body> tag */}
                  <section className="w-1/3">
                    <input
                      type="checkbox"
                      id="my-modal-2"
                      className="modal-toggle"
                    />
                    <div className="modal">
                      <div className="modal-box">
                        <h3 className="font-bold text-lg">
                          Add instructor preference
                        </h3>
                        <form>
                          <div className="flex justify-between items-center mt-4">
                            <label htmlFor="timeslot" className="label ml-8">
                              Time Slot
                            </label>
                            <select
                              className="select select-info max-w-[65%]"
                              as="select"
                              id="programme"
                              onChange={(e) =>
                                setSelectedTimeslot(e.target.value)
                              }
                            >
                              {timeslots.map((timeslot) => (
                                <option
                                  key={timeslot.id}
                                  value={JSON.stringify(timeslot)}
                                >
                                  {`${timeslot.day} (${timeslot.startTime} - ${timeslot.endTime})`}
                                </option>
                              ))}
                            </select>
                          </div>

                          <div className="flex justify-between items-center mt-4">
                            <label htmlFor="department" className="label ml-8">
                              Instructor
                            </label>
                            <select
                              className="select select-info w-full max-w-[60%]"
                              as="select"
                              id="department"
                              value={selectedInstructor}
                              onChange={(e) =>
                                setSelectedInstructor(e.target.value)
                              }
                            >
                              {instructors.map((instructor) => (
                                <option
                                  key={instructor.id}
                                  value={instructor.id}
                                >
                                  {instructor.firstName} {instructor.lastName}
                                </option>
                              ))}
                            </select>
                          </div>

                          <div className="modal-action">
                            <label
                              htmlFor="my-modal-2"
                              className="btn btn-success"
                            >
                              Cancel
                            </label>
                            <label
                              onClick={handleAddPreference}
                              htmlFor="my-modal-2"
                              className="btn btn-primary"
                            >
                              Add
                            </label>
                          </div>
                        </form>
                      </div>
                    </div>
                  </section>
                </div>
              </div>
            </section>

            <section className="w-4/5 mx-auto">
              <div className="w-4/5 max-w-2xl mx-auto">
                <div className="flex items-center justify-between">
                  <h2 className="text-lg font-semibold mb-4">
                    Existing Instructors
                  </h2>
                  <div className="add-instructor ">
                    <label htmlFor="my-modal-4" className="btn">
                      add instructor
                    </label>

                    {/* Put this part before </body> tag */}
                    <input
                      type="checkbox"
                      id="my-modal-4"
                      className="modal-toggle"
                    />
                    <label
                      htmlFor="my-modal-4"
                      className="modal cursor-pointer"
                    >
                      <label className="modal-box relative" htmlFor="">
                        <form
                          className="w-2/3 max-w-sm mx-auto"
                          onSubmit={(e) => {
                            e.preventDefault();
                            addInstructor();
                          }}
                        >
                          <div className="md:flex flex-col md:items-center mb-6">
                            <div className="md:w-1/2">
                              <label className="block text-gray-500 font-bold md:text-center mb-1 md:mb-0 pr-4">
                                First Name
                              </label>
                              <input
                                required="true"
                                className="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                                type="text"
                                value={firstName}
                                onChange={(e) => setFirstName(e.target.value)}
                              />
                            </div>
                            <div className="md:w-1/2">
                              <label className="block text-gray-500 font-bold md:text-center mb-1 md:mb-0 pr-4">
                                Last Name
                              </label>
                              <input
                                required="true"
                                className="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                                type="text"
                                value={lastName}
                                onChange={(e) => setLastName(e.target.value)}
                              />
                            </div>
                            <div className="md:w-1/2">
                              <label className="block text-gray-500 font-bold md:text-center mb-1 md:mb-0 pr-4">
                                Department
                              </label>
                              <select
                                required="true"
                                className="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500"
                                value={
                                  selectedDeptName === ""
                                    ? departments[0]?.deptName
                                    : selectedDeptName
                                }
                                onChange={(e) =>
                                  setSelectedDeptName(e.target.value)
                                }
                              >
                                {departments.map((department) => (
                                  <option
                                    key={department.id}
                                    value={department.deptName}
                                  >
                                    {department.deptName}
                                  </option>
                                ))}
                              </select>
                            </div>
                            <div className="md:flex md: items-center mt-6">
                              <button
                                className="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded"
                                type="submit"
                              >
                                Add Instructor
                              </button>
                            </div>
                          </div>
                        </form>
                      </label>
                    </label>
                  </div>
                </div>
                <table className="w-full text-left border-collapse">
                  <thead>
                    <tr>
                      <th className="py-2 px-3 font-bold uppercase text-xs text-gray-700 border-b border-gray-200">
                        First Name
                      </th>
                      <th className="py-2 px-3 font-bold uppercase text-xs text-gray-700 border-b border-gray-200">
                        Last Name
                      </th>
                      <th className="py-2 px-3 font-bold uppercase text-xs text-gray-700 border-b border-gray-200">
                        Department Name
                      </th>

                      <th className="py-2 px-3 font-bold uppercase text-xs text-gray-700 border-b border-gray-200">
                        Preferences
                      </th>

                      <th className="py-2 px-3 font-bold uppercase text-xs text-gray-700 border-b border-gray-200">
                        Actions
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    {currentRecords.map((instructor, index) => (
                      <tr key={index}>
                        <td className="py-2 px-3 border-b border-gray-200">
                          {instructor.firstName}
                        </td>
                        <td className="py-2 px-3 border-b border-gray-200">
                          {instructor.lastName}
                        </td>
                        <td className="py-2 px-3 border-b border-gray-200">
                          {instructor.deptName}
                        </td>
                        <td className="py-2 px-3 border-b border-gray-200">
                          {/* displaying the instructor preference data */}
                          {allPreferences
                            ? allPreferences.map((preference) => (
                                <div key={preference.id}>
                                  {preference.day} {preference.startTime}
                                </div>
                              ))
                            : "No preference yet"}
                        </td>
                        <td className="py-2 px-3 border-b border-gray-200">
                          {/* Provide Edit/Delete functionality here */}
                          <div className="flex items-center ">
                            {/* The button to open modal */}
                            <label
                              htmlFor="my-modal"
                              className="btn btn-warning"
                            >
                              Delete
                            </label>

                            {/* Put this part before </body> tag */}
                            <input
                              type="checkbox"
                              id="my-modal"
                              className="modal-toggle"
                            />
                            <div className="modal">
                              <div className="modal-box">
                                <h3 className="font-bold text-lg">
                                  Confirm delete of the instructor?
                                </h3>
                                <p className="py-4">
                                  Do you want to delete the instructor, you can
                                  cancel.
                                </p>
                                <div className="modal-action">
                                  <label
                                    htmlFor="my-modal"
                                    className="btn btn-success"
                                  >
                                    Cancel
                                  </label>
                                  <label
                                    htmlFor="my-modal"
                                    className="btn btn-secondary"
                                    onClick={() => handleDelete(instructor.id)}
                                  >
                                    Delete
                                  </label>
                                </div>
                              </div>
                            </div>

                            <button
                              className="text-purple-600 hover:text-purple-400 font-semibold ml-6"
                              onClick={() => handleDelete(instructor.id)}
                            >
                              Edit
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>

                <div className="flex justify-between mt-4">
                  <button
                    className="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded"
                    disabled={isFirstPage}
                    onClick={handlePreviousPage}
                  >
                    Previous
                  </button>
                  <button
                    className="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded"
                    onClick={handleNextPage}
                  >
                    Next
                  </button>
                </div>
              </div>
            </section>
          </div>
        </main>
      </div>
    </DashboardLayout>
  );
};

export default Instructor;
