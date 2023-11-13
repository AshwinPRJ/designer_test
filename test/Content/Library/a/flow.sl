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
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
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
    results:
      SUCCESS:
        97deb8ce-13ba-b9c4-90f2-62bc0c8983ae:
          x: 440
          'y': 160
