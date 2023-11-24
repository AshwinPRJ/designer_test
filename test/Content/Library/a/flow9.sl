namespace: a
flow:
  name: flow9
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
          6e984b2c-e0a3-9732-d2fa-4a95499b7215:
            targetId: 3f41d3b3-4e0d-93e3-d4c5-49c37635ce46
            port: SUCCESS
          f6b633f1-f4b9-091a-bbb8-171085e25554:
            targetId: 992806d7-73aa-1cf3-11ef-1a9f8e9a6119
            port: FAILURE
    results:
      SUCCESS:
        3f41d3b3-4e0d-93e3-d4c5-49c37635ce46:
          x: 540
          'y': 140
      FAILURE_1:
        992806d7-73aa-1cf3-11ef-1a9f8e9a6119:
          x: 160
          'y': 160
