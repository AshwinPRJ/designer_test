namespace: a
flow:
  name: flow19
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
          b0cccac1-7d49-4eab-5363-4f2f625a394e:
            targetId: e1c9f8da-751f-08b0-d34e-26e15a302d9f
            port: SUCCESS
          e58c9db2-9ad2-8eb2-5249-b41499366c20:
            targetId: 29a366d2-7ca2-e8dd-6fe6-bd252fb61aeb
            port: FAILURE
    results:
      SUCCESS:
        e1c9f8da-751f-08b0-d34e-26e15a302d9f:
          x: 540
          'y': 140
      FAILURE_1:
        29a366d2-7ca2-e8dd-6fe6-bd252fb61aeb:
          x: 160
          'y': 160
