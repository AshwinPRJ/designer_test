namespace: a.sub_a
flow:
  name: flow9
  workflow:
    - sub_9_admin:
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
      sub_9_admin:
        x: 340
        'y': 180
        navigate:
          8378f696-6177-33b1-0026-4d8b9fdb3c7c:
            targetId: 735367fd-f761-9d0f-aab9-1be942e4b93f
            port: SUCCESS
          1adb5592-3edc-eec2-2ac3-3d73f61b8c8e:
            targetId: 506563c5-3d3d-7933-0f79-268531f1ca8c
            port: FAILURE
    results:
      SUCCESS:
        735367fd-f761-9d0f-aab9-1be942e4b93f:
          x: 560
          'y': 160
      FAILURE_1:
        506563c5-3d3d-7933-0f79-268531f1ca8c:
          x: 160
          'y': 160
