namespace: a
flow:
  name: flow13
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
          f0dba187-77a6-a64e-5ac7-aab4aba4a008:
            targetId: e6695aac-12bf-595e-c25e-7834f5474ff9
            port: SUCCESS
          56570a75-2c1e-6a49-6b02-9db0aee7e7f2:
            targetId: 48369658-79aa-5f99-1427-813cb329c77b
            port: FAILURE
    results:
      SUCCESS:
        e6695aac-12bf-595e-c25e-7834f5474ff9:
          x: 540
          'y': 140
      FAILURE_1:
        48369658-79aa-5f99-1427-813cb329c77b:
          x: 160
          'y': 160
