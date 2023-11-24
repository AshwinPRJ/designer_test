namespace: a
flow:
  name: flow7
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
          7b6a62c5-656e-9809-47a8-1d336652a27b:
            targetId: 159ee679-5597-9df4-980d-639793fd6cab
            port: SUCCESS
          a156e95a-da53-e68e-e301-90dee1d5cc12:
            targetId: 0fdb6059-d94d-49bd-53e3-307644d37437
            port: FAILURE
    results:
      SUCCESS:
        159ee679-5597-9df4-980d-639793fd6cab:
          x: 540
          'y': 140
      FAILURE_1:
        0fdb6059-d94d-49bd-53e3-307644d37437:
          x: 160
          'y': 160
