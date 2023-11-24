namespace: a
flow:
  name: flow8
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
          85ed9015-d0e5-bd0f-8ce9-586150b669a2:
            targetId: 79aa19c7-1445-36b9-338a-d0ad56c88a89
            port: SUCCESS
          b10d2d93-3578-716f-1ac0-9483ab1c4d30:
            targetId: 115ef5e6-9d34-a6a5-edc7-a80b6b68ef44
            port: FAILURE
    results:
      SUCCESS:
        79aa19c7-1445-36b9-338a-d0ad56c88a89:
          x: 540
          'y': 140
      FAILURE_1:
        115ef5e6-9d34-a6a5-edc7-a80b6b68ef44:
          x: 160
          'y': 160
