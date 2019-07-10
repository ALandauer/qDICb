The q-factor-based Digital Image Correlation Algorithm.

## Purpose
This version of qDIC (qDICb) removes the dependences on various Toolboxes to which all users may not have access. The most optimized version of qDIC extensively makes use of Toolboxes, particularly Image Processing. The version of qDIC has been reworked to achieve similar performance in accuracy and speed with only the base MATLAB functions and several file exchange functions, which have been included. However, validation along the lines of the original paper has not been conducted.

Warning: input parameters for several important thresholds and setting may be different from qDIC, but we have not (yet) run test cases establish the corrected values to the new, slightly different function used in qDICb

## Running qDICb

### Software Requirements
MATLAB 2011b (for "griddedInterpolant") is the minimum supported requirements to run this code.  Under some circumstances older versions may function using "interpn", but performance and/or accuracy may suffer (and you'll have to implement the change to "interpn").  Development is currently under Matlab 2017a on CentOS 7 and Windows 7 x64.

### Input Image Requirements
* To check if the images have the required speckle pattern and intensity values for correlation please use our [DIC simulator](https://github.com/FranckLab/DIC-Simulator).
* We recommend that the input image stack  should have at least 3 times the subset size as the number of pixels in each dimension. The default subset size is 64x64, meaning the the minimum input image size should be 192x192.
* Non-square images are acceptable
* The fundamental image type used for input is .mat
* Out-of-the-box qDIC supports most common Matlab-readable images with `img2mat.m`, other file formats require simple modification

### Running including example case
1. Make sure that the main files are in the current (working) directory for MATLAB. 
2. Copy the desired test images `test_images` directory as needed.
3. Run the `exampleRunFile.m` file to get 2D displacement fields between the two images. Note that the displacement output is in an nx1x3 cell array.

## Files
* Function files
 - addDisplacements_2D.m
 - checkConvergenceSSD_2D.m
 - DIC.m
 - filterDisplacements_2D.m
 - flagOutliers_2D.m
 - funIDIC.m
 - IDIC.m
 - inc2cum.m
 - FIDICinc2cum.m
 - removeOutliers_2D.m
 - replaceOutliers_2D.m
 - areaMapping_2D.m
 - rms_vec.m
 - gauss_kernel.m
 - 

* Supplemental .m files from the MATLAB/MATLAB file exchange:
 - inpaint_nans.m
 - quantile.m
 - FastPeakFind.m
 - getPaddingIndices.m
 - padarray.m
 - padarray_algo.m

* Example files to run basic qDICb
 - exampleRunFile.m
 - img2mat.m
 - imageCropping.m
 - image_eval.m
 - Example test images

## FAQ

**What are the requirements for the input images?**

Please refer to [input image requirement](https://github.com/FranckLab/FIDIC#input-image-requirements).

**Can I use qDICb for finding displacement fields in 3D images?**

No. But you can use [FIDVC](https://github.com/FranckLab/FIDVC), this finds 3D displacements in 3D image stack (i.e. a volumetric image). We do not support any 3D-DIC (stereo) functionality.

## Cite
If used please cite:
[Landauer, A.K., Patel, M., Henann, D.L. et al. Exp Mech (2018). https://doi.org/10.1007/s11340-018-0377-4)

```bibtex
@Article{Landauer2018,
author="Landauer, AK
and Patel, M
and Henann, DL
and Franck, C",
title="A q-Factor-Based Digital Image Correlation Algorithm (qDIC) for Resolving Finite Deformations with Degenerate Speckle Patterns",
journal="Experimental Mechanics",
year="2018",
issn="1741-2765",
doi="10.1007/s11340-018-0377-4",
url="https://doi.org/10.1007/s11340-018-0377-4"
}
}
```

## Contact and support
For questions, please first refer to [FAQ](https://github.com/FranckLab/qDIC#faq) and [Questions/Issues](https://github.com/FranckLab/qDIC/issues) or the same for FIDVC (shared code for many functions, so certain questions will translate between the two). Add a new question if similar issue hasn't been reported. We will try to help you as soon as possible. The author's contact information can be found at [Franck Lab](https://www.franck.engr.wisc.edu/).
