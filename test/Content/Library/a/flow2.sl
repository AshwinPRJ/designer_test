namespace: a
flow:
  name: flow2
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
          1fc4631b-7b09-89a3-f345-16333d882473:
            targetId: 0661a2e8-22a1-c737-a87f-095253e62e0b
            port: SUCCESS
          99c3f57b-d2f4-e22b-86f9-1cd5b2d27cd8:
            targetId: 27a29730-42f8-21d7-1901-b3eacf20101b
            port: FAILURE
    results:
      SUCCESS:
        0661a2e8-22a1-c737-a87f-095253e62e0b:
          x: 540
          'y': 140
      FAILURE_1:
        27a29730-42f8-21d7-1901-b3eacf20101b:
          x: 160
          'y': 160
