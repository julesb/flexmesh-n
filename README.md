# flexmesh-n

A bit of scad-clj to generate [FlexMesh 2.0](http://www.thingiverse.com/thing:442571) compatible parts with any number of sides. FlexMesh provides tri and quad pieces only. The flexmesh-n stl files are also available at http://www.thingiverse.com/thing:517589

The geometry was worked out by looking at the FlexMesh .stl files and printed parts and inferring the CSG, with a couple of measurements taken as well.

The tolerance for the connectors can be altered by changing the cutout-width value in src/flexmesh.clj.

The repo includes generated scad and stl files for 5 - 10 sided parts in the output directory.

All credit for the FlexMesh design goes to [neobobkrause](http://www.thingiverse.com/neobobkrause/about). FlexMesh 2.0 can be found at http://www.thingiverse.com/thing:442571


## License

Copyright © 2014 julesb

Distributed under the Eclipse Public License either version 1.0 or (at
your option) any later version.
