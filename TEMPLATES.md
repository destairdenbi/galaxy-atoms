<div id="top"></div>

# Templates

- [Button](#button)
  - [History panel -> Select multiple datasets -> All](#history-panel---select-multiple-datasets---all)
  - [History panel -> For all selected -> Build collection from rules](#history-panel---for-all-selected---build-collection-from-rules)
  - [Collection modal -> Apply](#collection-modal---apply)
  - [Tool parameterization panel -> Execute](#tool-parameterization-panel---execute)
- [Dropdowns](#dropdowns)
  - [Collection modal -> +Column -> Add column from metadata](#collection-modal---column---add-column-from-metadata)
  - [Collection modal -> +Column -> Add column from metadata -> For -> Name](#collection-modal---column---add-column-from-metadata---for---name)
  - [Collection modal -> +Column -> Keep or trim prefix or suffix -> For column -> $X](#collection-modal---column---keep-or-trim-prefix-or-suffix---for-column---x)
  - [Tool parameterization panel -> Select single or paired-end reads -> $SP](#tool-parameterization-panel---select-single-or-paired-end-reads---sp)
- [Iframe](#iframe)
  - [Main panel iframe -> highlight element](#main-panel-iframe---highlight-element)
  - [Main panel iframe -> follow links](#main-panel-iframe---follow-links)
- [Radio button](#radio-button)
  - [Tool parameterization panel -> Select single dataset](#tool-parameterization-panel---select-single-dataset)
  - [Tool parameterization panel -> Select multiple datasets](#tool-parameterization-panel---select-multiple-datasets)
  - [Tool parameterization panel -> Select dataset collection](#tool-parameterization-panel---select-dataset-collection)
  - [Tool parameterization panel -> Select Yes/No option -> Yes](#tool-parameterization-panel---select-yesno-option---yes)
  - [Tool parameterization panel -> Select list option -> $X](#tool-parameterization-panel---select-list-option---x)
- [Text input](#text-input)
  - [Data upload modal -> Paste/fetch data -> $X](#data-upload-modal---pastefetch-data---x)
  - [Collection modal -> +Filter -> Using regular expression -> $X](#collection-modal---filter---using-regular-expression---x)


## Button
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### History panel -> Select multiple datasets -> All
<p align="left">
  <img align="left"
    src="web/select-multiple-datasets-1.png"
    height="300px"
    alt="Select multiple datasets"
    valign="top"/>
  <span>&nbsp;</span>
  <img align="center"
    src="web/select-multiple-datasets-2.png"
    height="300px"
    alt="Select multiple datasets"
    valign="top"/>
</p>

```
  - title: <b>$TITLE</b>
    element: '.actions .icon-btn.show-selectors-btn .fa.fa-check-square-o:visible'
    content: 'Select multiple datasets'
    placement: left
    onnextclick:
      - '.actions .icon-btn.show-selectors-btn .fa.fa-check-square-o:visible'

  - title: <b>$TITLE</b>
    element: '.select-all' # must not check for visibility
    content: 'Select all'
    placement: left
    onnextclick:
      - '.select-all' # must not check for visibility
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### History panel -> For all selected -> Build collection from rules
<p align="left">
  <img align="center"
    src="web/build-collection-from-rules.png"
    height="300px"
    alt="Build collection from rules"
    valign="top"/>
</p>

```
  - title: <b>$TITLE</b>
    element: '.list-action-menu-btn.btn.btn-secondary.dropdown-toggle:visible'
    content: 'Choose an option'
    placement: top

  - title: <b>$TITLE</b>
    element: '.list-action-menu-btn.btn.btn-secondary.dropdown-toggle:visible'
    content: 'Create collections from rules'
    placement: top
    onloadclick:
      - '.list-action-menu-btn.btn.btn-secondary.dropdown-toggle:visible'
    onnextclick:
      - '.float-right > :nth-child(9) a' # must not check for visibility
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Collection modal -> Apply
<p align="left">
  <img align="center"
    src="web/modal-apply.png"
    width="300px"
    alt="Apply"
    valign="top"/>
</p>

```
  - title: <b>$TITLE</b>
    element: '.rule-editor-ok:visible'
    content: 'Apply'
    placement: right
    onnextclick:
      - '.rule-editor-ok:visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Execute
<p align="left">
  <img align="center"
    src="web/tool-panel-execute.png"
    width="150px"
    alt="Execute"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '#execute:visible'
    content: 'Execute'
    placement: top
    onnextclick:
      - '#execute:visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>


## Dropdowns
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Collection modal -> +Column -> Add column from metadata
<p align="left">
  <img align="left"
    src="web/add-column-from-metadata-1.png"
    height="500px"
    alt="Add column from metadata"
    valign="top"/>
  <span>&nbsp;</span>
  <img align="center"
    src="web/add-column-from-metadata-2.png"
    height="500px"
    alt="Add column from metadata"
    valign="top"/>
</p>

```
  - title: <b>$TITLE</b>
    element: '.rule-menu-column-button:visible'
    content: 'Create a new table column'
    placement: bottom

  - title: <b>$TITLE</b>
    element: '.rule-menu-column-button:visible'
    content: 'Add column from metadata'
    placement: bottom
    onloadclick:
      - '.rule-menu-column-button:visible'
    onnextclick:
      - '.rule-link-add-column-metadata' # must not check for visibility
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Collection modal -> +Column -> Add column from metadata -> For -> Name
<p align="left">
  <img align="left"
    src="web/add-column-from-metadata-for-name-1.png"
    width="300px"
    alt="Add column from metadata for Name"
    valign="top"/>
  <span>&nbsp;</span>
  <img align="center"
    src="web/add-column-from-metadata-for-name-2.png"
    width="300px"
    alt="Add column from metadata for Name"
    valign="top"/>
</p>

```
  - title: <b>$TITLE</b>
    element: '.rule-editor select:visible'
    content: 'Select "Name"'
    placement: right

  - title: <b>$TITLE</b>
    element: '.rule-editor select:visible'
    content: 'Select "Name"'
    placement: right
    select:
      - '.rule-editor select option:contains("Name")' # must not check for visibility
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Collection modal -> +Column -> Keep or trim prefix or suffix -> For column -> $X
<p align="left">
  <img align="center"
    src="web/keep-trim-prefix-suffix-for-column-b.png"
    width="300px"
    alt="Keep or trim prefix or suffix for column B"
    valign="top"/>
  <span>&nbsp;</span>
</p>

```
  - title: <b>$TITLE</b>
    element: '.rule-column-selector:visible'
    content: 'Open the dropdown.'
    placement: right
    onnextclick:
      - '.rule-column-selector .select2-arrow:visible'

  - title: <b>$TITLE</b>
    element: '.select2-drop .select2-input:visible'
    content: 'Search and select "X"'
    textinsert: 'X'
    placement: right
    onloadclick:
      - '.select2-drop .select2-results > :nth-child(1):visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select single or paired-end reads -> $SP
<p align="left">
  <img align="center"
    src="web/select-single-paired-end.png"
    width="600px"
    alt="Select single or paired-end reads"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"]:visible'
    content: '$CONTENT'
    placement: top
    onnextclick:
      - '[tour_id="$TOUR_ID"] .ui-select .select2-container .select2-choice:visible'

  - title: '<b>$TITLE</b>'
    element: '.select2-drop .select2-input:visible'
    content: 'Search and select <b>$SP</b>.'
    textinsert: '$SP'
    placement: left
    onloadclick:
       - '.select2-drop .select2-results > :nth-child(1):visible'
```
**Example**:
```
  - title: '<b>Adapter clipping</b>'
    element: '[tour_id="library|type"]:visible'
    content: 'Open the dropdown.'
    placement: top
    onnextclick:
      - '[tour_id="library|type"] .ui-select .select2-container .select2-choice:visible'

  - title: '<b>Adapter clipping</b>'
    element: '.select2-drop .select2-input:visible'
    content: 'Search and select <b>Paired-end</b>.'
    textinsert: 'Paired-end'
    placement: left
    onloadclick:
       - '.select2-drop .select2-results > :nth-child(1):visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>



## Iframe
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Main panel iframe -> highlight element
<p align="left">
  <img align="center"
    src="web/center-iframe-report-strandness.png"
    width="600px"
    alt="Report library strandness"
    valign="top"/>
</p>

```
  - title: '<b>$ELEMENT</b>'
    element: '#masthead:visible'
    content: '$CONTENT
    placement: bottom

  - title: '<b>$ELEMENT</b>'
    element: '#iframe-helper:visible'
    content: '$CONTENT'
    placement: bottom
    iframeelement: '$ELEMENT:visible'
```
**Example**:
```
  - title: '<b>Infer strandness</b>'
    element: '#masthead:visible'
    content: 'Infer Experiment shows fractions of forward and inversely mapped
reads on features of known orientation.'
    placement: bottom

  - title: '<b>Infer strandness</b>'
    element: '#iframe-helper:visible'
    content: 'The strandness of a library can be inferred as follows:<br>
- If both values are ~0.5, then the library is unstranded<br>
- If the first value is siginificantly increased, then the library is forward
stranded<br>
- If the second value is increased, then the library is reversely stranded.'
    placement: bottom
    iframeelement: 'pre:visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Main panel iframe -> follow links
<p align="left">
  <img align="center"
    src="web/center-iframe-report-fastqc.png"
    width="600px"
    alt="Report FastQC"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '#masthead:visible'
    content: '$CONTENT'
    placement: bottom

  - title: '<b>$TITLE</b>'
    element: '#iframe-helper:visible'
    content: '$CONTENT'
    placement: bottom
    iframeelement: '$ELEMENT:visible'
    onloadclick:
      - '$ELEMENT:visible'
```
**Example**:
```
  - title: '<b>Quality control</b>'
    element: '#masthead:visible'
    content: 'FastQC generated plots to provide an overview of the quality of
data.'
    placement: bottom

  - title: '<b>Quality control</b>'
    element: '#iframe-helper:visible'
    content: 'The <b>Per base sequence quality</b> plot shows the average
quality scores of all reads.'
    placement: bottom
    iframeelement: '.summary ul > :nth-child(2) img:visible'
    onloadclick:
      - '.summary ul > :nth-child(2) a:visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>



## Radio button
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select single dataset
<p align="left">
  <img align="center"
    src="web/input-single-dataset.png"
    width="150px"
    alt="Single dataset"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(1):visible'
    content: 'Select dataset collection.'
    placement: bottom
    onnextclick:
      - '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(1):visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select multiple datasets
<p align="left">
  <img align="center"
    src="web/input-multiple-datasets.png"
    width="150px"
    alt="Multiple datasets"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(2):visible'
    content: 'Select multiple datasets.'
    placement: bottom
    onnextclick:
      - '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(2):visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select dataset collection
<p align="left">
  <img align="center"
    src="web/input-dataset-collection.png"
    width="150px"
    alt="Dataset collection"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(3):visible'
    content: 'Select dataset collection.'
    placement: bottom
    onnextclick:
      - '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(3):visible'
```
**Example**:
```
  - title: '<b>Adapter clipping</b>'
    element: '[tour_id="library|input_2"] .btn-group.ui-radiobutton > :nth-child(3):visible'
    content: 'Select dataset collection.'
    placement: bottom
    onnextclick:
      - '[tour_id="library|input_2"] .btn-group.ui-radiobutton > :nth-child(3):visible'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select Yes/No option -> Yes
<p align="left">
  <img align="center"
    src="web/input-select-yes-no.png"
    width="300px"
    alt="Select yes or no"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child($ONE_OR_TWO):visible'
    placement: top
    content: 'Select <b>$ONE_OR_TWO</b>.'
    onnextclick:
      - '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child($ONE_OR_TWO):visible'

```
**Example**:
```
  - title: '<b>Quality control</b>'
    element: '[tour_id="params|report"] .btn-group.ui-radiobutton > :nth-child(1):visible'
    placement: top
    content: 'Select <b>Yes</b> to generate a report.'
    onnextclick:
      - '[tour_id="params|report"] .btn-group.ui-radiobutton > :nth-child(1):visible'

```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Tool parameterization panel -> Select list option -> $X
<p align="left">
  <img align="center"
    src="web/input-select-list-option.png"
    width="300px"
    alt="Select list option"
    valign="top"/>
</p>

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .ui-options:visible'
    content: 'Select option.'
    placement: top
    onnextclick:
      - '[tour_id="$TOUR_ID"] .ui-options .ui-options-list > :nth-child($X) input' # must not check for visibility
```
**Example**:
```
  - title: '<b>Quality control</b>'
    element: '[tour_id="trimming_treatments|quality_trimming_treatments|type_quality_trimming_treatments"] .ui-options:visible'
    content: 'Select the sliding window approach to use the <b>Mean</b>
calculation.'
    placement: top
    onnextclick:
      - '[tour_id="trimming_treatments|quality_trimming_treatments|type_quality_trimming_treatments"] .ui-options .ui-options-list > :nth-child(2) input' # must not check for visibility

```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

## Text input
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Data upload modal -> Paste/fetch data -> $X
```
  - title: '<b>$TITLE</b>'
    element: .upload-text-content
    content: 'Enter "$X"'
    placement: bottom
    textinsert: X
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>

### Collection modal -> +Filter -> Using regular expression -> $X
```
  - title: <b>$TITLE</b>
    element: '.rule-regular-expression:visible'
    content: 'Enter: "$X"'
    placement: right
    textinsert: '$X'
```
<p align="right"><a href="#top">&#x25B2; back to top</a></p>
