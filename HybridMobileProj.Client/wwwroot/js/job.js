window.jobScripts = {
  createGrid: function (jobs) {
    console.log(jobs)
      // Grid Options: Contains all of the Data Grid configurations
      let jobColumnDef = [
          {
              headerName: "Link",
              filter: 'agTextColumnFilter',
              flex: 2,
              cellRenderer: params => {
                  let container = document.createElement("div");

                  let btn = document.createElement("button");
                  btn.className += "bg-light-blue text-white w-full h-[50%] rounded-sm";
                  
                  let link = document.createElement("a");
                  link.href = `/helpdesk/request/${params.data.guid}`

                  container.append(link);
                  link.appendChild(btn);

                  btn.innerHTML = "View"
                  return container;
              }
              //valueGetter: params => { return params.data.RowNumber }
          },
          {
              field: "guid",
              headerName: "ID",
              filter: 'agTextColumnFilter',
              valueGetter: params => { return `#${params.data.guid.slice(0, 4)}` }
          },
          {
            field: "jobStatusText",
            headerName: "Status",
            filter: 'agTextColumnFilter',
        },
          {
              field: "propertyManager",
              filter: 'agTextColumnFilter',
              headerName: "Property Manager",
              valueGetter: params => { return params.data.propertyManager.fullName }
          },
          {
              field: "contractor",
              headerName: "Contractor",
              filter: 'agTextColumnFilter',
              valueGetter: params => { return (params.data.contractor == null ? "" : params.data.contractor.fullName) }
          },
          {
            field: "surveyor",
            headerName: "Surveyor",
            filter: 'agTextColumnFilter',
            valueGetter: params => { return (params.data.surveyor == null ? "" : params.data.surveyor.fullName) }
        },
          {
              field: "RaisedAt",
              headerName: "Raised At",
              filter: 'agTextColumnFilter',
          },
          {
            field: "property",
            headerName: "Address",
            filter: 'agTextColumnFilter',
            cellStyle: params => {
              return {textTransform: "capitalize"}
            },
            valueGetter: params => { return `${params.data.property.address1} ${params.data.property.address2} ${params.data.property.address3} ${params.data.property.address4}, ${params.data.property.postcode}` }
        },
      ];


      // Your Javascript code to create the Data Grid
      const myGridElement = document.querySelector('#RequestListGrid');
      myGridElement.innerHTML = "";

      let gridAPI = agGrid.createGrid(myGridElement, getGenericGridOptions());
      gridAPI.setGridOption("columnDefs", jobColumnDef);
      gridAPI.setGridOption("rowData", jobs); 
  }
}