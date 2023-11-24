namespace: a.sub_a
flow:
  name: flow1
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
          b3d52770-7af7-15ac-0e39-0f23b1915cf3:
            targetId: 6d9f5d48-97ff-ad3e-937b-a67e5b8efdfc
            port: SUCCESS
          f78eda4f-849c-54e4-8426-88838e9da0ad:
            targetId: 858c2828-cc26-f3b2-24cd-45d2e0620088
            port: FAILURE
    results:
      SUCCESS:
        6d9f5d48-97ff-ad3e-937b-a67e5b8efdfc:
          x: 540
          'y': 140
      FAILURE_1:
        858c2828-cc26-f3b2-24cd-45d2e0620088:
          x: 160
          'y': 160
