namespace: a
flow:
  name: flow18
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
          7b52a30a-6176-4802-1694-86ce6209f255:
            targetId: b5010822-ce10-8b8f-65e7-529c0498e443
            port: SUCCESS
          c82b75d1-f96c-0fb5-46a0-80d5c4d6718e:
            targetId: aab20a74-4d5b-a934-b6c7-935d4137d7d7
            port: FAILURE
    results:
      SUCCESS:
        b5010822-ce10-8b8f-65e7-529c0498e443:
          x: 540
          'y': 140
      FAILURE_1:
        aab20a74-4d5b-a934-b6c7-935d4137d7d7:
          x: 160
          'y': 160
