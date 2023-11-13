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
extensions:
  graph:
    steps:
      random_number_generator:
        x: 280
        'y': 160
        navigate:
          b35c8e2d-b4b3-0a65-e5f0-b609c181d26d:
            targetId: 97deb8ce-13ba-b9c4-90f2-62bc0c8983ae
            port: SUCCESS
          307d1430-0c11-bb26-8d40-a2879f3e2cc2:
            targetId: c478a684-1caa-02a8-a60f-6bc86a6069c2
            port: FAILURE
    results:
      SUCCESS:
        97deb8ce-13ba-b9c4-90f2-62bc0c8983ae:
          x: 440
          'y': 160
      FAILURE_1:
        c478a684-1caa-02a8-a60f-6bc86a6069c2:
          x: 120
          'y': 200
