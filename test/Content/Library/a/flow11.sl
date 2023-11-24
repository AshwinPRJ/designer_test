namespace: a
flow:
  name: flow11
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
          87287c32-b7c1-30d8-e97a-6619ea498093:
            targetId: 9e7d193e-3951-aae6-8324-14f560d52882
            port: SUCCESS
          68780c0f-5c54-2fcd-48cf-95d6ea31d8c7:
            targetId: 35cb28a9-3df4-e272-f645-fa8b731e369c
            port: FAILURE
    results:
      SUCCESS:
        9e7d193e-3951-aae6-8324-14f560d52882:
          x: 540
          'y': 140
      FAILURE_1:
        35cb28a9-3df4-e272-f645-fa8b731e369c:
          x: 160
          'y': 160
