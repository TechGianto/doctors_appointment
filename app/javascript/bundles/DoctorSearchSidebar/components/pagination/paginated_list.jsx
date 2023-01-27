import React from "react";
import ReactPaginate from "react-paginate";
import Items from "./cardi_tems";
import axios from "axios"


const PaginatedItems = ({ doctors, total_pages, updateDoctor, getID }) => {

  // Invoke when user click to request another page.
  const handlePageClick = (event) => {
    axios.get("/search", {
      headers: { "Content-Type": "application/json", "Accept": "application/json" },
      params: {
        page: event.selected,
      }
    })
      .then(function (response) {
        console.log(response);
        updateDoctor(response.data.doctors)
      })
      .catch(function (error) {
        console.log(error);
      });
  };

  return (
    <div className="pagination-item">
      <div className="doctor-search-output">
        <Items currentItems={doctors} getID={getID} />
      </div>
      <ReactPaginate
        breakLabel="..."
        nextLabel="next"
        onPageChange={handlePageClick}
        pageRangeDisplayed={4}
        marginPagesDisplayed={2}
        pageCount={total_pages / 5}
        previousLabel="previous"
        renderOnZeroPageCount={null}
        pageClassName="page-item"
        pageLinkClassName="page-link"
        previousClassName="page-item"
        previousLinkClassName="page-link"
        nextClassName="page-item"
        nextLinkClassName="page-link"
        activeClassName="active"
        containerClassName="pagination justify-content-center"
        breakClassName="page-item"
        breakLinkClassName="page-link"
      />
    </div>
  );
}

export default PaginatedItems