namespace: a.sub_a
flow:
  name: flow
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
          80b0017d-6a67-83d1-c105-eaf9bd822499:
            targetId: b9a1f6a0-4f27-2832-9a56-2fbad74b9fe2
            port: SUCCESS
          dfddf3a2-1659-3c23-592e-0d94922348d1:
            targetId: 1b7770f6-420e-b270-9dc7-06a05095abe1
            port: FAILURE
    results:
      SUCCESS:
        b9a1f6a0-4f27-2832-9a56-2fbad74b9fe2:
          x: 540
          'y': 140
      FAILURE_1:
        1b7770f6-420e-b270-9dc7-06a05095abe1:
          x: 160
          'y': 160
