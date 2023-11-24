namespace: a
flow:
  name: flow4
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
          32c5ad57-a51c-adfb-fa4c-2ab57579889b:
            targetId: a02160a0-c709-61fa-d4ec-66245d8bbfed
            port: SUCCESS
          c38a08bf-00cf-1162-1d9b-4b389f1b68c5:
            targetId: cef1fc30-e196-fff9-6996-8558cc57cb38
            port: FAILURE
    results:
      SUCCESS:
        a02160a0-c709-61fa-d4ec-66245d8bbfed:
          x: 540
          'y': 140
      FAILURE_1:
        cef1fc30-e196-fff9-6996-8558cc57cb38:
          x: 160
          'y': 160
