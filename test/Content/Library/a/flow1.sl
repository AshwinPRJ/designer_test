namespace: a
flow:
  name: flow1
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
          97373628-713c-095b-6484-f5c313344fe3:
            targetId: d5a1ba85-1408-079d-f2f4-949c534cf79e
            port: SUCCESS
          e7927d5c-6fd2-1a92-e3d3-e8ee9c2bdef6:
            targetId: 06d7426c-b055-02dd-352a-6054ebcb6817
            port: FAILURE
    results:
      SUCCESS:
        d5a1ba85-1408-079d-f2f4-949c534cf79e:
          x: 540
          'y': 140
      FAILURE_1:
        06d7426c-b055-02dd-352a-6054ebcb6817:
          x: 160
          'y': 160
