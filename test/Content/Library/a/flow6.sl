namespace: a
flow:
  name: flow6
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
          594376d2-d6ca-3ddb-b867-980e139af49c:
            targetId: 640be9c0-8ff6-083d-9fdc-33f4880293c2
            port: SUCCESS
          83af1aa5-fac2-5db3-3bdb-cc8c9757c49e:
            targetId: ffb0f123-1f08-dad4-8cc7-84b485e6c7d8
            port: FAILURE
    results:
      SUCCESS:
        640be9c0-8ff6-083d-9fdc-33f4880293c2:
          x: 540
          'y': 140
      FAILURE_1:
        ffb0f123-1f08-dad4-8cc7-84b485e6c7d8:
          x: 160
          'y': 160
