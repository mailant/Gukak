					

					STEPS TO GET OVERLAP MATRIX
				*********************************************


1. From music sheet (.pdf file), input all notes manually to Aria Maestosa to get an .aria file.

2. Open the .aria file with a text editor.

3. Copy and save the part that looks something like this:

<note pitch="54" start="0" end="960" volume="80”/>
<note pitch="59" start="960" end="5760" volume="80"/>
<note pitch="61" start="5760" end="6720" volume="80"/>
<note pitch="56" start="6720" end="7680" volume="80"/>
<note pitch="61" start="7680" end="8000" volume="80”/>

to a new .txt file (with name say “sujechon_gukakjeonjip_info.txt"). 

4. Run the Python code find_distmat.ipynb to get 3 .txt files: “sujechon_gukakjeonjip_allnode.txt”, “sujechon_gukakjeonjip_nodelist.txt” and “sujechon_gukakjeonjip_distmat.txt”.

5. Run the Matlab code sujechon_barcode.m to get the barcode and save the annotated interval information to a file called "sujechon_gukakjeonjip_intervals.txt".

6. Run cycleinfo_extract.ipynb to get cycle information from the above file, the information is then saved to "sujechon_cycleinfo_matlabinx.txt".

7. Run convertnodeinx.ipynb to convert node indices from music order (matlab index) to pitch order (pitch index).

8. Run plotOM_sjc.ipynb to get the plot of the overlap matrix.
