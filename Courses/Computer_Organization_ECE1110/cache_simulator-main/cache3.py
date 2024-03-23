# -*- coding: utf-8 -*-
"""
Created on Wed Apr 20 06:36:18 2022

@author: RAYAN
"""

import numpy as np
import collections

block_size = 64 #64

cache_size_L1 = 32000   # 32KB =32000

number_of_lines_L1 = (cache_size_L1//block_size)  # nbre of lines in cache L1

cache_size_L2 = 2000000 # 2MB=2000000

number_of_lines_L2 = (cache_size_L2//block_size)

L1 = [[None]]*number_of_lines_L1

dirty_L1 = [0]*number_of_lines_L1     # dirty bits array 

L2 = [[None]]*number_of_lines_L2

dirty_L2 = [0]*number_of_lines_L2



k_L1 = 4
k_L2 = 8
k_L3 = 10 
number_of_sets_L1 = int(number_of_lines_L1/k_L1)
number_of_sets_L2 = int(number_of_lines_L2/k_L2)

S1 = np.array_split(L1,number_of_sets_L1)  # sets in L1

LRU_L1 = np.array_split(L1,number_of_sets_L1)

S2 = np.array_split(L2,number_of_sets_L2)  # sets in L2

LRU__L2 = np.array_split(L2,number_of_sets_L2)


class LRU_cache:
  def __init__(self, size):
    self.size = size
    self.LRU = collections.OrderedDict()
 
  def get(self, tag):
    try:
      set_index = self.LRU.pop(tag)
      self.LRU[tag] = set_index
      return set_index
    except KeyError:
      return -1
 
  def put(self, tag, set_index):
    try:
      self.LRU.pop(tag)
    except KeyError:
      if len(self.LRU) >= self.size:
        self.LRU.popitem(last=False)
    self.LRU[tag] = set_index
 
  def print_LRU(self):
    print(self.LRU)       

    
  def eviction(self):
    if len(self.LRU)==self.size:
     return 1


write_through=0
write_back=1

hit_L1=0
miss_L1=0
hit_L2=0
miss_L2=0
L1 = []
for i in range(number_of_sets_L1):
    L1.append(LRU_cache(len(S1[0])))
    
L2 = []
for i in range(number_of_sets_L1):
    L2.append(LRU_cache(len(S2[0])))
    

with open("FinalTestCase1.txt",'r') as file:
    for line in file:
        A=file.readline()
        print("")
        print(A)
        write_read=A[0]
        tag_number=int(A[2]+A[3]+A[4])
        index_L1 = int(A[11]+A[12])
        index_L2 = (((int(A[7]+A[8]))*number_of_lines_L1)+index_L1)%number_of_lines_L1
    
        if write_read=='r':
        
            if L1[index_L1].get(tag_number)==-1:
                print("Miss in L1, go to L2")
                L1[index_L1].put(tag_number, index_L1)
                L1[index_L1].print_LRU()
                dirty_L1[index_L1]=0
                miss_L1+=1 
                # miss in L1, go to L2
                if L2[index_L2].get(tag_number)==-1:
                    print("Miss in L2, go to Main Memory")
                    L2[index_L2].put(tag_number,index_L2)
                    L2[index_L2].print_LRU()
                    dirty_L2[index_L2]=0
                    miss_L2+=1
                    # miss in L2, go to Main Memory
                    print("Latency = 151")
                else:
                    print("Hit in L2")
                    L2[index_L2].print_LRU()
                    dirty_L2[index_L2]=0
                    print("Latency = 51")
                    hit_L2+=1
            else:
                print("Hit in L1")
                dirty_L1[index_L1]=0
                L1[index_L1].print_LRU()
                hit_L1+=1
                print("Latency = 1")
            
        else: # if we want to write
            if write_through==1:   # data is written to all levels of cache + MM if hit
                if L1[index_L1].get(tag_number)==-1:
                    print("Write miss in L1, go to L2")
                    miss_L1+=1
                else:
                    print("Write Hit in L1, write in L1 and go to L2")
                    L1[index_L1].put(tag_number, index_L1)
                    L2[index_L2].put(tag_number,index_L2)  # if hit, write to all caches and MM
                    hit_L1+=1
                    print("Latency = 151")
                if L2[index_L2].get(tag_number)==-1:
                    miss_L2+=1
                    print("Write miss in L2, go to Main Memory and write it there")
                    print("Latency = 151")
                else:
                    L2[index_L2].put(tag_number,index_L2)
                    hit_L2+=1
                    print("Write hit in L2, write it in L2 and Main Memory")
                    print("Latency = 151")
                
            else:    # write_back=1 and write_through=0
                if L1[index_L1].get(tag_number)==-1:
                    print("Write miss in L1, go to L2")
                    dirty_L1[index_L1]=1
                    print("Dirty bits for L1: ", dirty_L1)
                    miss_L1+=1
                    if L1[index_L1].eviction() == 1:  #if the set is full
                        print("Eviction in L1, go to L2")  
                    else:
                        print("Latency is 151")
                    L1[index_L1].put(tag_number,index_L1)
                    # now search in L2
                    if L2[index_L2].get(tag_number)==-1:
                        print("Write miss in L2, go to Main Memory")
                        miss_L2+=1
                        if L2[index_L2].eviction()==1:
                            print("Eviction in L2, fetch from Main Memory")
                    
                            L2[index_L2].put(tag_number,index_L2)
                            dirty_L2[index_L2]=1
                            print("Dirty bits for L2: ", dirty_L2)
                            print("Latency = 151")
                        else:
                            print("Write Hit in L2, so write in L1 (write back), mark as dirty bit")
                            hit_L2+=1
                            L2[index_L2].put(tag_number,index_L2)  # hitting in higher level will bring it to lower one
                            L1[index_L1].put(tag_number,index_L1)  # so we write it in L1 too
                            dirty_L2[index_L2]=1
                            dirty_L1[index_L1]=1
                            print("Dirty bits for L1: ", dirty_L1)
                            print("Dirty bits for L2: ", dirty_L2)
                            print("Latency = 151")
                else:
                    print("write Hit in L1, write data in L1 and mark dirty bit")
                    hit_L1=0
                    L1[index_L1].put(tag_number,index_L1)
                    dirty_L1[index_L1]=1
                    print("Dirty bits for L1: ", dirty_L1)
                    print("Latency = 151")  

hit_L1_ratio = (hit_L1)/(hit_L1+miss_L1)
hit_L2_ratio = (hit_L2)/(hit_L2+miss_L2)
miss_L1_ratio = (miss_L1)/(hit_L1+miss_L1)
miss_L2_ratio = (miss_L2)/(hit_L2+miss_L2)

print("Hit ratio in L1: ",hit_L1_ratio)
print("Miss ratio in L1", miss_L1_ratio)
print("Hit ratio in L2: ", hit_L2_ratio)
print("Miss ratio in L2: ", miss_L2_ratio)

# hit=hit_L1+hit_L2
# miss=miss_L1+miss_L2
# hit_ratio=hit/(hit+miss)
# miss_ratio=miss/(hit+miss)
# print("Hit ratio = ",hit_ratio)
# print("Miss ratio = ", miss_ratio)
# for x in range(100)::
#     A=input("Please input: ") # r(008)(00)(00)(x)
#     write_read=A[0]
#     tag_number=int(A[2]+A[3]+A[4])
#     index_L1 = int(A[11]+A[12])
#     index_L2 = (((int(A[7]+A[8]))*number_of_lines_L1)+index_L1)%number_of_lines_L1
    
#     if write_read=='r':
        
#         if L1[index_L1].get(tag_number)==-1:
#             print("Miss in L1")
#             L1[index_L1].put(tag_number, index_L1)
#             L1[index_L1].print_LRU()
            
            
            
#             # miss in L1, go to L2
#             if L2[index_L2].get(tag_number)==-1:
#                 print("Miss in L2")
#                 L2[index_L2].put(tag_number,index_L2)
#                 L2[index_L2].print_LRU()
                
#                 # miss in L2, go to Main Memory
#                 print("Fetch from Main Memory")
#                 print("Latency = 151")
#             else:
#                 print("Hit in L2")
#                 L2[index_L2].print_LRU()
#                 print("Latency = 51")
#         else:
#             print("Hit in L1")
#             L1[index_L1].print_LRU()
#             print("Latency = 1")
            
#     else: # if we want to write
#         if write_through==1:   # data is written to all levels of cache + MM if hit
#             if L1[index_L1].get(tag_number)==-1:
#                 print("Write miss in L1")
#                 L1[index_L1].put(tag_number,index_L1)
#                 print("Latency = 1")
#             else:
#                 print("Write Hit in L1")
#                 L2[index_L2].put(tag_number,index_L2)  # if hit, write to all caches and MM
#                 print("Latency is 151")
                
#         else:    # write back = if miss, allocate space in cache, if hit, write data and mark dirty
#             if L1[index_L1].get(tag_number)==-1:
#                 print("Write miss in L1")
                
#                 if L1[index_L1].eviction() == 1:
#                     print("Eviction")  
#                 L1[index_L1].put(tag_number,index_L1)
                
#                 # now search in L2
#                 if L2[index_L2].get(tag_number)==-1:
#                     print("Write miss in L2")
#                     if L2[index_L2].eviction()==1:
#                         print("Eviction")
                    
#                     L2[index_L2].put(tag_number,index_L2)
#                     print("Latency = 51")
#                 else:
#                     print("Write Hit in L2")
#                     L2[index_L2].put(tag_number,index_L2)  # hitting in higher level will bring it to lower one
#                     L1[index_L1].put(tag_number,index_L1)  # so we write it in L1 too
#             else:
#                 print("write Hit in L1")
#                 L1[index_L1].put(tag_number,index_L1)
#                 print("Latency = 1")
   
          
            

