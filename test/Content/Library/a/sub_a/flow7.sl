namespace: a.sub_a
flow:
  name: flow7
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
          8ef5ffb5-b5e9-b2ca-8c4e-6b3f38444f88:
            targetId: 243639bb-43c1-cb1e-c169-54bdecfe034b
            port: SUCCESS
          7c9d252d-231e-4cd7-0e7b-84746de5b852:
            targetId: 9b09c440-eb6e-dc97-4f0f-cd04533c04eb
            port: FAILURE
    results:
      SUCCESS:
        243639bb-43c1-cb1e-c169-54bdecfe034b:
          x: 540
          'y': 140
      FAILURE_1:
        9b09c440-eb6e-dc97-4f0f-cd04533c04eb:
          x: 160
          'y': 160
