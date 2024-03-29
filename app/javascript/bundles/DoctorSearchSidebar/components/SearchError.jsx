import React from "react";

const SearchError = () => {
  return (
    <div className="search-error-container container">
      <div className="row">
        <div className="col-12">
          <h3> We’re sorry, we couldn’t find results for your search </h3>
          <h4>
            {" "}
            Try to remove a filter, check your spelling or use a diffrent word{" "}
          </h4>
        </div>
      </div>

      <div className="search-error-info container">
        <div className="row">
          <div className="col-6">
            <div className="search-404"></div>
            <p>
              We told Doggy to find your search, but he didn’t . Instead he was
              busy sleeping. We pride ourselves on meeting expectations, so to
              make it up to you, we are going to fire Doggy.
            </p>
          </div>
          <div className="col-6"></div>
        </div>
      </div>
    </div>
  );
};

export default SearchError;
