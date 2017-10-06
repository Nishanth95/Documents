def invertdict():

  my_map = { 'a': 1, 'b':2 }
  inv_map = {v: k for k, v in my_map.items()}
  print(inv_map)
  
invertdict()