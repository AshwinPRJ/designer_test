namespace: a
flow:
  name: flow10
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
          71262e19-e34b-852c-afb8-6bde20311116:
            targetId: 8f14b3b2-920f-0d85-517e-4d12157b3a08
            port: SUCCESS
          2fe5ad91-9a7d-e2f6-7883-c0eaf0a16b66:
            targetId: 874760fd-ab7d-8e0f-b757-9d29d2a0e66b
            port: FAILURE
    results:
      SUCCESS:
        8f14b3b2-920f-0d85-517e-4d12157b3a08:
          x: 540
          'y': 140
      FAILURE_1:
        874760fd-ab7d-8e0f-b757-9d29d2a0e66b:
          x: 160
          'y': 160
