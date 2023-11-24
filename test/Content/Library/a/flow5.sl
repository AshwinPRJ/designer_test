namespace: a
flow:
  name: flow5
  workflow:
    - test1:
        do:
          io.cloudslang.base.math.random_number_generator:
            - min: '1'
            - max: '100'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: FAILURE_1
  results:
    - SUCCESS
    - FAILURE_1
extensions:
  graph:
    steps:
      test1:
        x: 340
        'y': 180
        navigate:
          e985b581-f915-3f17-4944-c0487a90f9e7:
            targetId: deb4c664-4b09-678a-d230-52b1ce57a815
            port: SUCCESS
          48af8b9b-86d5-4ceb-4770-9ccde71a4555:
            targetId: 3f1c4e55-a7bf-f5aa-6c4c-d386c2925ccf
            port: FAILURE
    results:
      SUCCESS:
        deb4c664-4b09-678a-d230-52b1ce57a815:
          x: 540
          'y': 140
      FAILURE_1:
        3f1c4e55-a7bf-f5aa-6c4c-d386c2925ccf:
          x: 160
          'y': 160
