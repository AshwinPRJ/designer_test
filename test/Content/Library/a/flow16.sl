namespace: a
flow:
  name: flow16
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
          369d3962-aee0-503e-b2fb-525f92a918cb:
            targetId: cf0275dd-c6cd-f6bb-8398-12cc40cbcd93
            port: SUCCESS
          18441c07-9b86-637b-38f1-a0c1c1464e55:
            targetId: 29220286-0066-727f-9bac-d07ac8dcb8c6
            port: FAILURE
    results:
      SUCCESS:
        cf0275dd-c6cd-f6bb-8398-12cc40cbcd93:
          x: 540
          'y': 140
      FAILURE_1:
        29220286-0066-727f-9bac-d07ac8dcb8c6:
          x: 160
          'y': 160
