namespace: a
flow:
  name: flow14
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
          a043fc2a-3d6e-fdfa-6a37-76e6ddcfe8ca:
            targetId: 1f933a4e-2d21-924f-9791-bdc3006fa421
            port: SUCCESS
          61946aeb-3d42-8d44-1ec4-9c7dcdd8f219:
            targetId: e5d502c7-d548-b9de-bfa5-87f56d3bc35a
            port: FAILURE
    results:
      SUCCESS:
        1f933a4e-2d21-924f-9791-bdc3006fa421:
          x: 540
          'y': 140
      FAILURE_1:
        e5d502c7-d548-b9de-bfa5-87f56d3bc35a:
          x: 160
          'y': 160
