# Part I An Introduction to VTK

## Chapter 1 Welcome
## Chapter 2 Installation
## Chapter 3 System Overview

## Chapter 4 The Basics
### 4.1 Creating Simple Models
* cylinder
### 4.2 Using VTK Interactors
### 4.3 Filtering Data
* shrink polygons
### 4.4 Controlling The Camera
* clipping plane, postion, focal, view up
### 4.5 Controlling Lights
* directional light: position, focal, color
* spotlight: cone angle
### 4.6 Controlling 3D Props
* prop	2dActor
		prop3D	actor
* The order used in VTK to apply these transformations:
1. Shift to Origin
2. Scale
3. Rotate Y
4. Rotate X
5. Rotate Z
6. Shift from Origin
7. Translate
### 4.7 Using Texture
### 4.8 Picking
### 4.9 vtkCoordinate and Coordinate Systems
### 4.10 Controlling vtkActor2D
### 4.11 Text Annotation
### 4.12 Special Plotting Classes
### 4.13 Transforming Data
### 4.14 Antialiasing
### 4.15 Translucent polygonal geometry
### 4.16 Animation

## Chapter 5 Visualization Techniques
### 5.1 Visualizing vtkDataSet (and Subclasses)
* Working With Data Attributes9
* Color Mapping2
* Contouring3
* Glyphing. 94
* Streamlines5
* Stream Surfaces . 97
* Cutting8vii
* Merging Data.99
* Appending Data.100
* Probing00
* Color An Isosurface With Another Scalar .102
* Extract Subset of Cells .103
* Extract Cells as Polygonal Data104
5.2 Visualizing Polygonal Data .105
Manually Create vtkPolyData . .106
Generate Surface Normals .107
Decimation .107
Smooth Mesh. . .109
Clip Data110
Generate Texture Coordinates. .111
5.3 Visualizing Structured Grids112
Manually Create vtkStructuredGrid112
Extract Computational Plane. . .112
Subsampling Structured Grids. .113
5.4 Visualizing Rectilinear Grids114
Manually Create vtkRectilinearGrid114
Extract Computational Plane. . .114
5.5 Visualizing Unstructured Grids .115
Manually Create vtkUnstructuredGrid .115
Extract Portions of the Mesh115
Contour Unstructured Grids117
Chapter 6 Image Processing & Visualization 119
6.1 Manually Creating vtkImageData . .120
6.2 Subsampling Image Data121
6.3 Warp Based On Scalar Values . .122
6.4 Image Display. . .123
Image Viewer . .123
Image Actor .124
vtkImagePlaneWidget . .125
6.5 Image Sources . .125
ImageCanvasSource2D .126
ImageEllipsoidSource . .126
ImageGaussianSource . .127
ImageGridSource . .127
ImageNoiseSource. .127
ImageSinusoidSource . .128
6.6 Image Processing128
Convert Scalar Type128
Change Spacing, Origin, or Extent .129
Append Images .129
Map Image to Color.131
Image Luminance . .132
Histogram . .132
Image Logic.132
Gradient .133
Gaussian Smoothing133
Image Flip . .134viii
Image Permute . 134
Image Mathematics 135
Image Reslice37
Iterating through an image . 138
Chapter 7 Volume Rendering 139
7.1 Historical Note on Supported Data Types. . 140
7.2 A Simple Example . 140
7.3 Why Multiple Volume Rendering Techniques? 142
7.4 Creating a vtkVolume43
7.5 Using vtkPiecewiseFunction.43
7.6 Using vtkColorTransferFunction44
7.7 Controlling Color / Opacity with a vtkVolumeProperty.45
7.8 Controlling Shading with a vtkVolumeProperty.47
7.9 Creating a Volume Mapper. 149
7.10 Cropping a Volume . 150
7.11 Clipping a Volume . 151
7.12 Controlling the Normal Encoding. . 152
7.13 Volumetric Ray Casting for vtkImageData. 153
7.14 Fixed Point Ray Casting 156
7.15 2D Texture Mapping 156
7.16 3D Texture Mapping 156
7.17 Volumetric Ray Casting for vtkUnstructuredGrid . 157
7.18 ZSweep . 158
7.19 Projected Tetrahedra 159
7.20 Speed vs. Accuracy Trade-offs . 159
7.21 Using a vtkLODProp3D to Improve Performance . 161
Chapter 8 Information Visualization 163
8.1 Exploring Relationships in Tabular Data64
Converting a Table to a Graph . 164
Converting a Table to a Tree68
8.2 Graph Visualization Techniques 170
Vertex Layout. . 171
Edge Layout 172
Converting Layouts to Geometry. . 173
Area Layouts75
8.3 Views and Representations . 176
Selections in Views 179
8.4 Graph Algorithms80
Boost Graph Library Algorithms82
Creating Graph Algorithms 185
The Parallel Boost Graph Library . 186
Multithreaded Graph Library86
8.5 Databases.87
Connecting to a Database. . 187
Executing Queries . 188
Queries and Threads.89
Reading Results 189
Writing Data.90
Table Schemata 190ix
8.6 Statistics .192
Specifying columns of interest .193
Phases . .193
Univariate Algorithms . .194
Bivariate statistics:. .195
Multivariate statistics: . .195
Using statistics algorithms. .196
Parallel Statistics Algorithms . .197
8.7 Processing Multi-Dimensional Data.198
Design . .199
Using multi-dimensional arrays201
Performance.203
Populating Dense Arrays. . .203
Populating Sparse Arrays . .203
Iteration .204
Array Data . .205
Array Sources . .205
Array Algorithms. . .206
Chapter 9 Geospatial Visualization 207
9.1 Geographic Views and Representations.207
9.2 Generating Hierarchies. .210
9.3 Hierarchical Data Sources—On-demand resolution210
9.4 Terrain . .211
9.5 Cartographic Projections211
Chapter 10 Building Models 213
10.1 Implicit Modeling. . .213
Creating An Implicit Model213
Sampling Implicit Functions215
10.2 Extrusion.217
10.3 Constructing Surfaces. . .218
Delaunay Triangulation .218
Gaussian Splatting . .222
Surfaces from Unorganized Points .224
Chapter 11 Time Varying Data 227
11.1 Introduction to temporal support227
11.2 VTK's implementation of time support .228
TIME_RANGE .228
TIME_STEPS . .228
UPDATE_TIME_STEPS . .229
DATA_TIME_STEPS. .229
CONTINUE_EXECUTING229
Using time support .230
Chapter 12 Reading and Writing Data 239
12.1 Readers . .239
Data Object Readers240x
Data Set Readers40
Image and Volume Readers 240
Rectilinear Grid Readers41
Structured Grid Readers 241
Polygonal Data Readers 241
Unstructured Grid Readers. 242
Graph Readers . 242
Table Readers. . 242
Composite Data Readers43
12.2 Writers. . 243
Data Object Writers 244
Data Set Writers 244
Image and Volume Writers 244
Rectilinear Grid Writers 244
Structured Grid Writers 244
Polygonal Data Writers 244
Unstructured Grid Writers . 245
Graph Writers. . 245
Table Writers45
Composite Data Writers 245
12.3 Importers 245
12.4 Exporters 246
12.5 Creating Hardcopy . 246
Saving Images . 247
Saving Large (High-Resolution) Images47
12.6 Creating Movie Files.48
12.7 Working With Field Data49
Chapter 13 Interaction, Widgets and Selections 255
13.1 Interactors55
vtkRenderWindowInteractor55
Interactor Styles 256
vtkInteractorStyle56
Adding vtkRenderWindowInteractor Observers57
13.2 Widgets . 258
Reconfigurable Bindings60
Cursor Management and Highlighting. 261
Widget Hierarchies. 261
Timers. . 261
Priorities 261
Point Placers.62
13.3 A tour of the widgets.62
Measurement Widgets . 262
Widgets for probing or manipulating underlying data . 265
Annotation widgets. 272
Segmentation / Registration widgets76
Miscellaneous. . 284
An Example 289
13.4 Selections91
13.5 Types of selections . 292
Index selections 292xi
Pedigree ID selections . .292
Global ID selections292
Frustum selections . .292
Value selections.293
Threshold selections293
Location selections .293
Block selections.293
Part III VTK Developer’s Guide
Chapter 14 Contributing Code 297
14.1 Coding Considerations . .297
Conditions on Contributing Code To VTK .297
Coding Style299
How To Contribute Code . .299
14.2 Standard Methods: Creating and Deleting Objects .300
14.3 Copying Objects and Protected Methods302
14.4 Using STL . .303
14.5 Managing Include Files .304
14.6 Writing A VTK Class: An Overview305
Find A Similar Class305
Identify A Superclass . .305
Single Class Per .h File .306
Required Methods . .306
Document Code .306
Use SetGet Macros .307
Add Class To VTK .307
14.7 Object Factories .307
Overview308
How To Write A Factory. . .308
How To Install A Factory . .309
Example Factory310
14.8 Kitware’s Quality Software Process.312
CVS Source Code Repository . .313
CDash Regression Testing System .313
Working The Process . .314
The Effectiveness of the Process. . .315
Chapter 15 Managing Pipeline Execution 317
15.1 Information Objects .318
15.2 Pipeline Execution Models. .319
15.3 Pipeline Information Flow . .320
15.4 Interface of Information Objects321
15.5 Standard Executives .323
vtkDemandDrivenPipeline .323
vtkStreamingDemandDrivenPipeline . .325
vtkCompositeDataPipeline .326
15.6 Choosing the Default Executive.326xii
Chapter 16 Interfacing To VTK Data Objects 327
16.1 Data Arrays . 327
vtkDataArray Methods. 328
16.2 Datasets . 333
vtkDataSet Methods 335
vtkDataSet Examples38
16.3 Image Data . 339
vtkImageData Methods 339
vtkImageData Example 340
16.4 Rectilinear Grids 341
vtkRectilinearGrid Methods.42
16.5 Point Sets.43
vtkPointSet Methods43
vtkPointSet Example43
16.6 Structured Grids 344
vtkStructuredGrid Methods 344
16.7 Polygonal Data . 345
vtkPolyData Methods. . 346
16.8 Unstructured Grids . 350
vtkUnstructuredGrid Methods . 350
16.9 Cells. 352
vtkCell Methods 352
16.10 Supporting Objects for Data Sets55
vtkPoints Methods . 355
vtkCellArray Methods . 357
vtkCellTypes Methods . 359
vtkCellLinks Methods . 360
16.11 Field and Attribute Data 362
vtkFieldData Methods . 362
vtkDataSetAttributes Methods . 364
16.12 Selections69
vtkSelection Methods. . 369
vtkSelectionNode Methods 370
vtkSelectionNode Property Methods70
16.13 Graphs71
vtkGraph Methods . 372
vtkDirectedGraph75
vtkUndirectedGraph 375
vtkMutableDirectedGraph and vtkMutableUndirectedGraph Methods
375
vtkDirectedAcyclicGraph. . 377
vtkTree . 377
16.14 Tables77
vtkTable Methods. . 377
16.15 Multi-Dimensional Arrays . 379
vtkArray Methods. . 379
vtkTypedArray Methods80
vtkDenseArray Methods.81
vtkSparseArray Methods82
vtkArrayData Methods. 383xiii
Chapter 17 How To Write an Algorithm for VTK 385
17.1 Overview385
The Pipeline Interface . .385
The User Interface . .388
Fulfilling Pipeline Requests389
17.2 Laws of VTK Algorithms. . .390
Never Modify Input Data . .390
Reference Count Data . .390
Use Debug Macros .391
Reclaim/Delete Allocated Memory.391
Compute Modified Time391
Use ProgressEvent and AbortExecute .392
Implement PrintSelf() Methods.394
Get Input/Output Data From Pipeline Information .394
17.3 Example Algorithms.394
A Graphics Filter394
A Simple Imaging Filter399
A Threaded Imaging Filter .401
A Simple Reader406
A Streaming Filter . .409
An Abstract Filter . .412
Composite Dataset Aware Filters . .416
Programmable Filters . .419
Chapter 18 Integrating With The Windowing System 421
18.1 vtkRenderWindow Interaction Style421
18.2 General Guidelines for GUI Interaction.423
18.3 X Windows, Xt, and Motif. .427
18.4 Microsoft Windows / Microsoft Foundation Classes (MFC). . .432
18.5 Tcl/Tk . .433
18.6 Java. .434
18.7 Using VTK with Qt .434
Chapter 19 Coding Resources 437
19.1 Object Diagrams.437
Foundation. .437
Cells.437
Datasets .438
Topology and Attribute Data. . .439
Pipeline .439
Sources and Filters .439
Mappers .439
Graphics.441
Volume Rendering. .441
Imaging .442
OpenGL Renderer . .442
Picking. .442
Transformation Hierarchy . .443
Widgets and Interaction Style . .443
19.2 Summary Of Filters .444xiv
Source Objects . 444
Imaging Filters 450
Visualization Filters 455
Mapper Objects 463
Actor (Prop) Objects64
Views and Informatics . 465
19.3 VTK File Formats69
Simple Legacy Formats 470
XML File Formats . 482Part I
An Introduction to VTKChapter






