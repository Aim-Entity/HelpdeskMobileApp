
window.propertiesScripts = {
    createGrid: function (properties) {
        console.log(properties);
      // Grid Options: Contains all of the Data Grid configurations
      let propertiesColumnDef = [
          {
              field: "guid",
              headerName: "ID",
              filter: 'agTextColumnFilter',
              valueGetter: params => { return `#${params.data.guid.slice(0, 4)}` }
          },
          {
              field: "propertyName",
              headerName: "Property Name",
              filter: 'agTextColumnFilter',
          },
          {
              field: "address1",
              headerName: "Address",
              filter: 'agTextColumnFilter',
              cellStyle: params => {
                return {textTransform: "capitalize"}
              },
              valueGetter: params => { return `${params.data.address1} ${params.data.address2} ${params.data.address3} ${params.data.address4}, ${params.data.postcode}` }
          },
      ];

      const myGridElement = document.querySelector('#propertyGrid');
      myGridElement.innerHTML = "";

      let gridAPI = agGrid.createGrid(myGridElement, getGenericGridOptions());
      gridAPI.setGridOption("columnDefs", propertiesColumnDef);
      gridAPI.setGridOption("rowData", properties); 
  }
}