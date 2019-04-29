#idea for in class example we didnt finish

the_proposers = { 'sarah' : ('erick', 'sean','beau', 'ethan', 'justin'),
                  'carrie' : ('beau', 'ethan', 'justin', 'susan', 'erick'),
                  'jessica' : ('erick', 'beau', 'justin', 'sean', 'ethan'),
                  'rachel' : ('ethan', 'justin', 'sean', 'beau', 'erick'),
                  'vanessa' : ('erick', 'justin', 'susan', 'beau', 'ethan')}

the_acceptors = {'justin' : ('sarah', 'jessica', 'carrie', 'rachel', 'vanessa'),
                 'ethan' : ('carrie', 'jessica', 'vanessa', 'rachel', 'sarah'),
                 'beau' : ('jessica', 'sarah', 'rachel', 'vanessa', 'carrie'),
                 'sean' : ('rachel', 'sarah', 'vanessa', 'jessica', 'carrie'),
                 'erick' : ('vanessa', 'rachel', 'sarah', 'carrie', 'jessica')}


#works better than i expected, i feel like it shouldnt due to
# where I mark HERE
def prototype (dict1, dict2):
     the_dict_maker = { }
     temp_matches = { }
     temp_list = []
     while dict1:
         for x in dict1:
             for y in dict2:
                 # if key of dict2 is in dict1
                 if dict1[x][0] is y:
                    the_dict_maker.update({x : y})
         print(the_dict_maker)
         #have men decide who they want, let others go
         #due to pythons loops, the "ideal" canidate will always be the first to appear
         for x in the_dict_maker:
             if the_dict_maker[x] in dict2:
                 temp_list.append(the_dict_maker[x])
         print(temp_list)

#HERE
         #gets mens names    
         for x in temp_list:
             #matches females with men in the list
             for y in dict2[x]:
             #if those names match, update    
                 if y in the_dict_maker:
                     print(y)
                     temp_matches.update({y : x})
                     break
         print(temp_matches)           
         #start removing people who are no longer bachelors                
         for x in temp_matches:
             for y in dict1:
                print(x) 
                z = list(dict1[y])
                print(z)
                if x in z: 
                     z = z.remove(x)
                     dict1[y].update(z)
                     print(dict1)
                     
             for y in dict2:
                  print(x)
                  z = list(dict2[y])
                  print(z)
                  if x in z:  
                      z = z.remove(x)
                      dict2[y].update(z)
                      print(dict2)
##             del dict1[x]
##             del dict2[temp_matches[x]]
         the_dict_maker.clear()        
         print('The dict maker:')
         print(the_dict_maker)
         print('temp_matches:')
         print(temp_matches)
#TO HERE                 
                 
                     
                    

#         print(current_temp_matches)
     return
         
         
