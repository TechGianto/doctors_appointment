import axios from "axios"

class DoctorRequest {

  static async getDoctor(doctor_id) {
    return await axios.get(
      `/doctors/${doctor_id}`,
      {
        headers: { "Content-Type": "application/json", "Accept": "application/json" },
      }
    )
  }
}

export default DoctorRequest
