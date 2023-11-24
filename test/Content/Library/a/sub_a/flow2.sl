namespace: a.sub_a
flow:
  name: flow2
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
          70c4a0d6-1170-a4fc-de33-eb9c1d83cc33:
            targetId: f02e1087-021f-c656-1d8d-15fe0d12256e
            port: SUCCESS
          d4a911e9-498d-25e9-ce88-d3e6e2071382:
            targetId: 126af9a8-d0a9-ca57-8451-cec0c4afd3f7
            port: FAILURE
    results:
      SUCCESS:
        f02e1087-021f-c656-1d8d-15fe0d12256e:
          x: 540
          'y': 140
      FAILURE_1:
        126af9a8-d0a9-ca57-8451-cec0c4afd3f7:
          x: 160
          'y': 160
