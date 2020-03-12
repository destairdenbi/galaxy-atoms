# Templates



## Radio button

```
  - title: '<b>$TITLE</b>'
    element: '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(3):visible'
    content: 'Select dataset collection.'
    placement: bottom
    onnextclick:
      - '[tour_id="$TOUR_ID"] .btn-group.ui-radiobutton > :nth-child(3):visible'
```

### Example

```
  - title: '<b>Adapter clipping</b>'
    element: '[tour_id="library|input_2"] .btn-group.ui-radiobutton > :nth-child(3):visible'
    content: 'Select dataset collection.'
    placement: bottom
    onnextclick:
      - '[tour_id="library|input_2"] .btn-group.ui-radiobutton > :nth-child(3):visible'
```



## Dropdown menu

```
  - title: '<b>TITLE</b>'
    element: '[tour_id="$TOUR_ID"]:visible'
    content: '$CONTENT'
    placement: top
    onnextclick:
      - '[tour_id="$TOUR_ID"] .ui-select .select2-container .select2-choice:visible'

  - title: '<b>TITLE</b>'
    element: '.select2-drop .select2-input:visible'
    content: 'Search and select <b>$DROPDOWN_ENTRY</b>.'
    textinsert: '$DROPDOWN_ENTRY'
    placement: left
    onloadclick:
       - '.select2-drop .select2-results > :nth-child(1):visible'
```

### Example

```
  - title: '<b>Adapter clipping</b>'
    element: '[tour_id="library|type"]:visible'
    content: 'Open the dropdown menu.'
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
