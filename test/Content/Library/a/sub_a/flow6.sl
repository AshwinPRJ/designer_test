namespace: a.sub_a
flow:
  name: flow6
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
          228b4dbe-4439-6cf9-b525-fd58c16c3f5c:
            targetId: 753f0c2d-9ed4-9316-6094-196453974921
            port: SUCCESS
          54984208-4b4e-b711-47e4-c017fa7582c5:
            targetId: 57389870-49bd-c5aa-1759-086e9f6e200a
            port: FAILURE
    results:
      SUCCESS:
        753f0c2d-9ed4-9316-6094-196453974921:
          x: 540
          'y': 140
      FAILURE_1:
        57389870-49bd-c5aa-1759-086e9f6e200a:
          x: 160
          'y': 160
