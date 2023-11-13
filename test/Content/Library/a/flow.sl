namespace: a
flow:
  name: flow
  workflow:
    - random_number_generator:
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
    - SUCCESS_1
extensions:
  graph:
    steps:
      random_number_generator:
        x: 240
        'y': 120
        navigate:
          b35c8e2d-b4b3-0a65-e5f0-b609c181d26d:
            targetId: 97deb8ce-13ba-b9c4-90f2-62bc0c8983ae
            port: SUCCESS
          32b367cd-1451-2441-2c32-eb87331b1d35:
            targetId: 6be15c5e-aa73-d8a5-1376-a1551a04d028
            port: FAILURE
    results:
      SUCCESS:
        97deb8ce-13ba-b9c4-90f2-62bc0c8983ae:
          x: 440
          'y': 160
      FAILURE_1:
        6be15c5e-aa73-d8a5-1376-a1551a04d028:
          x: 120
          'y': 120
      SUCCESS_1:
        44d8cc63-a190-0240-996b-f00fb526fd3d:
          x: 600
          'y': 40
