namespace: a
flow:
  name: flow12
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
          d39f76c5-3212-24af-75fb-1d69da78868c:
            targetId: 3f929f23-3d3c-0f92-1802-837509e6010f
            port: SUCCESS
          dc4fe398-cf79-9f05-16e6-2d0ea78bd971:
            targetId: 0908e188-95d3-c54f-c202-5e3bb4a70741
            port: FAILURE
    results:
      SUCCESS:
        3f929f23-3d3c-0f92-1802-837509e6010f:
          x: 540
          'y': 140
      FAILURE_1:
        0908e188-95d3-c54f-c202-5e3bb4a70741:
          x: 160
          'y': 160
