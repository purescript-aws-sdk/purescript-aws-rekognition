## Module AWS.Rekognition.Types

#### `options`

``` purescript
options :: Options
```

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException NoArguments
```

<p>You are not authorized to perform the action.</p>

##### Instances
``` purescript
Newtype AccessDeniedException _
Generic AccessDeniedException _
Show AccessDeniedException
Decode AccessDeniedException
Encode AccessDeniedException
```

#### `AgeRange`

``` purescript
newtype AgeRange
  = AgeRange { "Low" :: Maybe (UInteger), "High" :: Maybe (UInteger) }
```

<p>Structure containing the estimated age range, in years, for a face.</p> <p>Rekognition estimates an age-range for faces detected in the input image. Estimated age ranges can overlap; a face of a 5 year old may have an estimated range of 4-6 whilst the face of a 6 year old may have an estimated range of 4-8.</p>

##### Instances
``` purescript
Newtype AgeRange _
Generic AgeRange _
Show AgeRange
Decode AgeRange
Encode AgeRange
```

#### `newAgeRange`

``` purescript
newAgeRange :: AgeRange
```

Constructs AgeRange from required parameters

#### `newAgeRange'`

``` purescript
newAgeRange' :: ({ "Low" :: Maybe (UInteger), "High" :: Maybe (UInteger) } -> { "Low" :: Maybe (UInteger), "High" :: Maybe (UInteger) }) -> AgeRange
```

Constructs AgeRange's fields from required parameters

#### `Attribute`

``` purescript
newtype Attribute
  = Attribute String
```

##### Instances
``` purescript
Newtype Attribute _
Generic Attribute _
Show Attribute
Decode Attribute
Encode Attribute
```

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (Array Attribute)
```

##### Instances
``` purescript
Newtype Attributes _
Generic Attributes _
Show Attributes
Decode Attributes
Encode Attributes
```

#### `Beard`

``` purescript
newtype Beard
  = Beard { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Beard _
Generic Beard _
Show Beard
Decode Beard
Encode Beard
```

#### `newBeard`

``` purescript
newBeard :: Beard
```

Constructs Beard from required parameters

#### `newBeard'`

``` purescript
newBeard' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> Beard
```

Constructs Beard's fields from required parameters

#### `BoundingBox`

``` purescript
newtype BoundingBox
  = BoundingBox { "Width" :: Maybe (Number), "Height" :: Maybe (Number), "Left" :: Maybe (Number), "Top" :: Maybe (Number) }
```

<p>Identifies the bounding box around the object, face or text. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p>The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>

##### Instances
``` purescript
Newtype BoundingBox _
Generic BoundingBox _
Show BoundingBox
Decode BoundingBox
Encode BoundingBox
```

#### `newBoundingBox`

``` purescript
newBoundingBox :: BoundingBox
```

Constructs BoundingBox from required parameters

#### `newBoundingBox'`

``` purescript
newBoundingBox' :: ({ "Width" :: Maybe (Number), "Height" :: Maybe (Number), "Left" :: Maybe (Number), "Top" :: Maybe (Number) } -> { "Width" :: Maybe (Number), "Height" :: Maybe (Number), "Left" :: Maybe (Number), "Top" :: Maybe (Number) }) -> BoundingBox
```

Constructs BoundingBox's fields from required parameters

#### `Celebrity`

``` purescript
newtype Celebrity
  = Celebrity { "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Face" :: Maybe (ComparedFace), "MatchConfidence" :: Maybe (Percent) }
```

<p>Provides information about a celebrity recognized by the operation.</p>

##### Instances
``` purescript
Newtype Celebrity _
Generic Celebrity _
Show Celebrity
Decode Celebrity
Encode Celebrity
```

#### `newCelebrity`

``` purescript
newCelebrity :: Celebrity
```

Constructs Celebrity from required parameters

#### `newCelebrity'`

``` purescript
newCelebrity' :: ({ "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Face" :: Maybe (ComparedFace), "MatchConfidence" :: Maybe (Percent) } -> { "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Face" :: Maybe (ComparedFace), "MatchConfidence" :: Maybe (Percent) }) -> Celebrity
```

Constructs Celebrity's fields from required parameters

#### `CelebrityDetail`

``` purescript
newtype CelebrityDetail
  = CelebrityDetail { "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Confidence" :: Maybe (Percent), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) }
```

<p>Information about a recognized celebrity.</p>

##### Instances
``` purescript
Newtype CelebrityDetail _
Generic CelebrityDetail _
Show CelebrityDetail
Decode CelebrityDetail
Encode CelebrityDetail
```

#### `newCelebrityDetail`

``` purescript
newCelebrityDetail :: CelebrityDetail
```

Constructs CelebrityDetail from required parameters

#### `newCelebrityDetail'`

``` purescript
newCelebrityDetail' :: ({ "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Confidence" :: Maybe (Percent), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) } -> { "Urls" :: Maybe (Urls), "Name" :: Maybe (String), "Id" :: Maybe (RekognitionUniqueId), "Confidence" :: Maybe (Percent), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) }) -> CelebrityDetail
```

Constructs CelebrityDetail's fields from required parameters

#### `CelebrityList`

``` purescript
newtype CelebrityList
  = CelebrityList (Array Celebrity)
```

##### Instances
``` purescript
Newtype CelebrityList _
Generic CelebrityList _
Show CelebrityList
Decode CelebrityList
Encode CelebrityList
```

#### `CelebrityRecognition`

``` purescript
newtype CelebrityRecognition
  = CelebrityRecognition { "Timestamp" :: Maybe (Timestamp), "Celebrity" :: Maybe (CelebrityDetail) }
```

<p>Information about a detected celebrity and the time the celebrity was detected in a stored video. For more information, see .</p>

##### Instances
``` purescript
Newtype CelebrityRecognition _
Generic CelebrityRecognition _
Show CelebrityRecognition
Decode CelebrityRecognition
Encode CelebrityRecognition
```

#### `newCelebrityRecognition`

``` purescript
newCelebrityRecognition :: CelebrityRecognition
```

Constructs CelebrityRecognition from required parameters

#### `newCelebrityRecognition'`

``` purescript
newCelebrityRecognition' :: ({ "Timestamp" :: Maybe (Timestamp), "Celebrity" :: Maybe (CelebrityDetail) } -> { "Timestamp" :: Maybe (Timestamp), "Celebrity" :: Maybe (CelebrityDetail) }) -> CelebrityRecognition
```

Constructs CelebrityRecognition's fields from required parameters

#### `CelebrityRecognitionSortBy`

``` purescript
newtype CelebrityRecognitionSortBy
  = CelebrityRecognitionSortBy String
```

##### Instances
``` purescript
Newtype CelebrityRecognitionSortBy _
Generic CelebrityRecognitionSortBy _
Show CelebrityRecognitionSortBy
Decode CelebrityRecognitionSortBy
Encode CelebrityRecognitionSortBy
```

#### `CelebrityRecognitions`

``` purescript
newtype CelebrityRecognitions
  = CelebrityRecognitions (Array CelebrityRecognition)
```

##### Instances
``` purescript
Newtype CelebrityRecognitions _
Generic CelebrityRecognitions _
Show CelebrityRecognitions
Decode CelebrityRecognitions
Encode CelebrityRecognitions
```

#### `ClientRequestToken`

``` purescript
newtype ClientRequestToken
  = ClientRequestToken String
```

##### Instances
``` purescript
Newtype ClientRequestToken _
Generic ClientRequestToken _
Show ClientRequestToken
Decode ClientRequestToken
Encode ClientRequestToken
```

#### `CollectionId`

``` purescript
newtype CollectionId
  = CollectionId String
```

##### Instances
``` purescript
Newtype CollectionId _
Generic CollectionId _
Show CollectionId
Decode CollectionId
Encode CollectionId
```

#### `CollectionIdList`

``` purescript
newtype CollectionIdList
  = CollectionIdList (Array CollectionId)
```

##### Instances
``` purescript
Newtype CollectionIdList _
Generic CollectionIdList _
Show CollectionIdList
Decode CollectionIdList
Encode CollectionIdList
```

#### `CompareFacesMatch`

``` purescript
newtype CompareFacesMatch
  = CompareFacesMatch { "Similarity" :: Maybe (Percent), "Face" :: Maybe (ComparedFace) }
```

<p>Provides information about a face in a target image that matches the source image face analysed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding box of the face in the target image. The <code>Similarity</code> property is the confidence that the source image face matches the face in the bounding box.</p>

##### Instances
``` purescript
Newtype CompareFacesMatch _
Generic CompareFacesMatch _
Show CompareFacesMatch
Decode CompareFacesMatch
Encode CompareFacesMatch
```

#### `newCompareFacesMatch`

``` purescript
newCompareFacesMatch :: CompareFacesMatch
```

Constructs CompareFacesMatch from required parameters

#### `newCompareFacesMatch'`

``` purescript
newCompareFacesMatch' :: ({ "Similarity" :: Maybe (Percent), "Face" :: Maybe (ComparedFace) } -> { "Similarity" :: Maybe (Percent), "Face" :: Maybe (ComparedFace) }) -> CompareFacesMatch
```

Constructs CompareFacesMatch's fields from required parameters

#### `CompareFacesMatchList`

``` purescript
newtype CompareFacesMatchList
  = CompareFacesMatchList (Array CompareFacesMatch)
```

##### Instances
``` purescript
Newtype CompareFacesMatchList _
Generic CompareFacesMatchList _
Show CompareFacesMatchList
Decode CompareFacesMatchList
Encode CompareFacesMatchList
```

#### `CompareFacesRequest`

``` purescript
newtype CompareFacesRequest
  = CompareFacesRequest { "SourceImage" :: Image, "TargetImage" :: Image, "SimilarityThreshold" :: Maybe (Percent) }
```

##### Instances
``` purescript
Newtype CompareFacesRequest _
Generic CompareFacesRequest _
Show CompareFacesRequest
Decode CompareFacesRequest
Encode CompareFacesRequest
```

#### `newCompareFacesRequest`

``` purescript
newCompareFacesRequest :: Image -> Image -> CompareFacesRequest
```

Constructs CompareFacesRequest from required parameters

#### `newCompareFacesRequest'`

``` purescript
newCompareFacesRequest' :: Image -> Image -> ({ "SourceImage" :: Image, "TargetImage" :: Image, "SimilarityThreshold" :: Maybe (Percent) } -> { "SourceImage" :: Image, "TargetImage" :: Image, "SimilarityThreshold" :: Maybe (Percent) }) -> CompareFacesRequest
```

Constructs CompareFacesRequest's fields from required parameters

#### `CompareFacesResponse`

``` purescript
newtype CompareFacesResponse
  = CompareFacesResponse { "SourceImageFace" :: Maybe (ComparedSourceImageFace), "FaceMatches" :: Maybe (CompareFacesMatchList), "UnmatchedFaces" :: Maybe (CompareFacesUnmatchList), "SourceImageOrientationCorrection" :: Maybe (OrientationCorrection), "TargetImageOrientationCorrection" :: Maybe (OrientationCorrection) }
```

##### Instances
``` purescript
Newtype CompareFacesResponse _
Generic CompareFacesResponse _
Show CompareFacesResponse
Decode CompareFacesResponse
Encode CompareFacesResponse
```

#### `newCompareFacesResponse`

``` purescript
newCompareFacesResponse :: CompareFacesResponse
```

Constructs CompareFacesResponse from required parameters

#### `newCompareFacesResponse'`

``` purescript
newCompareFacesResponse' :: ({ "SourceImageFace" :: Maybe (ComparedSourceImageFace), "FaceMatches" :: Maybe (CompareFacesMatchList), "UnmatchedFaces" :: Maybe (CompareFacesUnmatchList), "SourceImageOrientationCorrection" :: Maybe (OrientationCorrection), "TargetImageOrientationCorrection" :: Maybe (OrientationCorrection) } -> { "SourceImageFace" :: Maybe (ComparedSourceImageFace), "FaceMatches" :: Maybe (CompareFacesMatchList), "UnmatchedFaces" :: Maybe (CompareFacesUnmatchList), "SourceImageOrientationCorrection" :: Maybe (OrientationCorrection), "TargetImageOrientationCorrection" :: Maybe (OrientationCorrection) }) -> CompareFacesResponse
```

Constructs CompareFacesResponse's fields from required parameters

#### `CompareFacesUnmatchList`

``` purescript
newtype CompareFacesUnmatchList
  = CompareFacesUnmatchList (Array ComparedFace)
```

##### Instances
``` purescript
Newtype CompareFacesUnmatchList _
Generic CompareFacesUnmatchList _
Show CompareFacesUnmatchList
Decode CompareFacesUnmatchList
Encode CompareFacesUnmatchList
```

#### `ComparedFace`

``` purescript
newtype ComparedFace
  = ComparedFace { "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality) }
```

<p>Provides face metadata for target image faces that are analysed by <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>

##### Instances
``` purescript
Newtype ComparedFace _
Generic ComparedFace _
Show ComparedFace
Decode ComparedFace
Encode ComparedFace
```

#### `newComparedFace`

``` purescript
newComparedFace :: ComparedFace
```

Constructs ComparedFace from required parameters

#### `newComparedFace'`

``` purescript
newComparedFace' :: ({ "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality) } -> { "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality) }) -> ComparedFace
```

Constructs ComparedFace's fields from required parameters

#### `ComparedFaceList`

``` purescript
newtype ComparedFaceList
  = ComparedFaceList (Array ComparedFace)
```

##### Instances
``` purescript
Newtype ComparedFaceList _
Generic ComparedFaceList _
Show ComparedFaceList
Decode ComparedFaceList
Encode ComparedFaceList
```

#### `ComparedSourceImageFace`

``` purescript
newtype ComparedSourceImageFace
  = ComparedSourceImageFace { "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent) }
```

<p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. </p>

##### Instances
``` purescript
Newtype ComparedSourceImageFace _
Generic ComparedSourceImageFace _
Show ComparedSourceImageFace
Decode ComparedSourceImageFace
Encode ComparedSourceImageFace
```

#### `newComparedSourceImageFace`

``` purescript
newComparedSourceImageFace :: ComparedSourceImageFace
```

Constructs ComparedSourceImageFace from required parameters

#### `newComparedSourceImageFace'`

``` purescript
newComparedSourceImageFace' :: ({ "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent) } -> { "BoundingBox" :: Maybe (BoundingBox), "Confidence" :: Maybe (Percent) }) -> ComparedSourceImageFace
```

Constructs ComparedSourceImageFace's fields from required parameters

#### `ContentModerationDetection`

``` purescript
newtype ContentModerationDetection
  = ContentModerationDetection { "Timestamp" :: Maybe (Timestamp), "ModerationLabel" :: Maybe (ModerationLabel) }
```

<p>Information about a moderation label detection in a stored video.</p>

##### Instances
``` purescript
Newtype ContentModerationDetection _
Generic ContentModerationDetection _
Show ContentModerationDetection
Decode ContentModerationDetection
Encode ContentModerationDetection
```

#### `newContentModerationDetection`

``` purescript
newContentModerationDetection :: ContentModerationDetection
```

Constructs ContentModerationDetection from required parameters

#### `newContentModerationDetection'`

``` purescript
newContentModerationDetection' :: ({ "Timestamp" :: Maybe (Timestamp), "ModerationLabel" :: Maybe (ModerationLabel) } -> { "Timestamp" :: Maybe (Timestamp), "ModerationLabel" :: Maybe (ModerationLabel) }) -> ContentModerationDetection
```

Constructs ContentModerationDetection's fields from required parameters

#### `ContentModerationDetections`

``` purescript
newtype ContentModerationDetections
  = ContentModerationDetections (Array ContentModerationDetection)
```

##### Instances
``` purescript
Newtype ContentModerationDetections _
Generic ContentModerationDetections _
Show ContentModerationDetections
Decode ContentModerationDetections
Encode ContentModerationDetections
```

#### `ContentModerationSortBy`

``` purescript
newtype ContentModerationSortBy
  = ContentModerationSortBy String
```

##### Instances
``` purescript
Newtype ContentModerationSortBy _
Generic ContentModerationSortBy _
Show ContentModerationSortBy
Decode ContentModerationSortBy
Encode ContentModerationSortBy
```

#### `CreateCollectionRequest`

``` purescript
newtype CreateCollectionRequest
  = CreateCollectionRequest { "CollectionId" :: CollectionId }
```

##### Instances
``` purescript
Newtype CreateCollectionRequest _
Generic CreateCollectionRequest _
Show CreateCollectionRequest
Decode CreateCollectionRequest
Encode CreateCollectionRequest
```

#### `newCreateCollectionRequest`

``` purescript
newCreateCollectionRequest :: CollectionId -> CreateCollectionRequest
```

Constructs CreateCollectionRequest from required parameters

#### `newCreateCollectionRequest'`

``` purescript
newCreateCollectionRequest' :: CollectionId -> ({ "CollectionId" :: CollectionId } -> { "CollectionId" :: CollectionId }) -> CreateCollectionRequest
```

Constructs CreateCollectionRequest's fields from required parameters

#### `CreateCollectionResponse`

``` purescript
newtype CreateCollectionResponse
  = CreateCollectionResponse { "StatusCode" :: Maybe (UInteger), "CollectionArn" :: Maybe (String), "FaceModelVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype CreateCollectionResponse _
Generic CreateCollectionResponse _
Show CreateCollectionResponse
Decode CreateCollectionResponse
Encode CreateCollectionResponse
```

#### `newCreateCollectionResponse`

``` purescript
newCreateCollectionResponse :: CreateCollectionResponse
```

Constructs CreateCollectionResponse from required parameters

#### `newCreateCollectionResponse'`

``` purescript
newCreateCollectionResponse' :: ({ "StatusCode" :: Maybe (UInteger), "CollectionArn" :: Maybe (String), "FaceModelVersion" :: Maybe (String) } -> { "StatusCode" :: Maybe (UInteger), "CollectionArn" :: Maybe (String), "FaceModelVersion" :: Maybe (String) }) -> CreateCollectionResponse
```

Constructs CreateCollectionResponse's fields from required parameters

#### `CreateStreamProcessorRequest`

``` purescript
newtype CreateStreamProcessorRequest
  = CreateStreamProcessorRequest { "Input" :: StreamProcessorInput, "Output" :: StreamProcessorOutput, "Name" :: StreamProcessorName, "Settings" :: StreamProcessorSettings, "RoleArn" :: RoleArn }
```

##### Instances
``` purescript
Newtype CreateStreamProcessorRequest _
Generic CreateStreamProcessorRequest _
Show CreateStreamProcessorRequest
Decode CreateStreamProcessorRequest
Encode CreateStreamProcessorRequest
```

#### `newCreateStreamProcessorRequest`

``` purescript
newCreateStreamProcessorRequest :: StreamProcessorInput -> StreamProcessorName -> StreamProcessorOutput -> RoleArn -> StreamProcessorSettings -> CreateStreamProcessorRequest
```

Constructs CreateStreamProcessorRequest from required parameters

#### `newCreateStreamProcessorRequest'`

``` purescript
newCreateStreamProcessorRequest' :: StreamProcessorInput -> StreamProcessorName -> StreamProcessorOutput -> RoleArn -> StreamProcessorSettings -> ({ "Input" :: StreamProcessorInput, "Output" :: StreamProcessorOutput, "Name" :: StreamProcessorName, "Settings" :: StreamProcessorSettings, "RoleArn" :: RoleArn } -> { "Input" :: StreamProcessorInput, "Output" :: StreamProcessorOutput, "Name" :: StreamProcessorName, "Settings" :: StreamProcessorSettings, "RoleArn" :: RoleArn }) -> CreateStreamProcessorRequest
```

Constructs CreateStreamProcessorRequest's fields from required parameters

#### `CreateStreamProcessorResponse`

``` purescript
newtype CreateStreamProcessorResponse
  = CreateStreamProcessorResponse { "StreamProcessorArn" :: Maybe (StreamProcessorArn) }
```

##### Instances
``` purescript
Newtype CreateStreamProcessorResponse _
Generic CreateStreamProcessorResponse _
Show CreateStreamProcessorResponse
Decode CreateStreamProcessorResponse
Encode CreateStreamProcessorResponse
```

#### `newCreateStreamProcessorResponse`

``` purescript
newCreateStreamProcessorResponse :: CreateStreamProcessorResponse
```

Constructs CreateStreamProcessorResponse from required parameters

#### `newCreateStreamProcessorResponse'`

``` purescript
newCreateStreamProcessorResponse' :: ({ "StreamProcessorArn" :: Maybe (StreamProcessorArn) } -> { "StreamProcessorArn" :: Maybe (StreamProcessorArn) }) -> CreateStreamProcessorResponse
```

Constructs CreateStreamProcessorResponse's fields from required parameters

#### `DateTime`

``` purescript
newtype DateTime
  = DateTime Timestamp
```

##### Instances
``` purescript
Newtype DateTime _
Generic DateTime _
Show DateTime
Decode DateTime
Encode DateTime
```

#### `Degree`

``` purescript
newtype Degree
  = Degree Number
```

##### Instances
``` purescript
Newtype Degree _
Generic Degree _
Show Degree
Decode Degree
Encode Degree
```

#### `DeleteCollectionRequest`

``` purescript
newtype DeleteCollectionRequest
  = DeleteCollectionRequest { "CollectionId" :: CollectionId }
```

##### Instances
``` purescript
Newtype DeleteCollectionRequest _
Generic DeleteCollectionRequest _
Show DeleteCollectionRequest
Decode DeleteCollectionRequest
Encode DeleteCollectionRequest
```

#### `newDeleteCollectionRequest`

``` purescript
newDeleteCollectionRequest :: CollectionId -> DeleteCollectionRequest
```

Constructs DeleteCollectionRequest from required parameters

#### `newDeleteCollectionRequest'`

``` purescript
newDeleteCollectionRequest' :: CollectionId -> ({ "CollectionId" :: CollectionId } -> { "CollectionId" :: CollectionId }) -> DeleteCollectionRequest
```

Constructs DeleteCollectionRequest's fields from required parameters

#### `DeleteCollectionResponse`

``` purescript
newtype DeleteCollectionResponse
  = DeleteCollectionResponse { "StatusCode" :: Maybe (UInteger) }
```

##### Instances
``` purescript
Newtype DeleteCollectionResponse _
Generic DeleteCollectionResponse _
Show DeleteCollectionResponse
Decode DeleteCollectionResponse
Encode DeleteCollectionResponse
```

#### `newDeleteCollectionResponse`

``` purescript
newDeleteCollectionResponse :: DeleteCollectionResponse
```

Constructs DeleteCollectionResponse from required parameters

#### `newDeleteCollectionResponse'`

``` purescript
newDeleteCollectionResponse' :: ({ "StatusCode" :: Maybe (UInteger) } -> { "StatusCode" :: Maybe (UInteger) }) -> DeleteCollectionResponse
```

Constructs DeleteCollectionResponse's fields from required parameters

#### `DeleteFacesRequest`

``` purescript
newtype DeleteFacesRequest
  = DeleteFacesRequest { "CollectionId" :: CollectionId, "FaceIds" :: FaceIdList }
```

##### Instances
``` purescript
Newtype DeleteFacesRequest _
Generic DeleteFacesRequest _
Show DeleteFacesRequest
Decode DeleteFacesRequest
Encode DeleteFacesRequest
```

#### `newDeleteFacesRequest`

``` purescript
newDeleteFacesRequest :: CollectionId -> FaceIdList -> DeleteFacesRequest
```

Constructs DeleteFacesRequest from required parameters

#### `newDeleteFacesRequest'`

``` purescript
newDeleteFacesRequest' :: CollectionId -> FaceIdList -> ({ "CollectionId" :: CollectionId, "FaceIds" :: FaceIdList } -> { "CollectionId" :: CollectionId, "FaceIds" :: FaceIdList }) -> DeleteFacesRequest
```

Constructs DeleteFacesRequest's fields from required parameters

#### `DeleteFacesResponse`

``` purescript
newtype DeleteFacesResponse
  = DeleteFacesResponse { "DeletedFaces" :: Maybe (FaceIdList) }
```

##### Instances
``` purescript
Newtype DeleteFacesResponse _
Generic DeleteFacesResponse _
Show DeleteFacesResponse
Decode DeleteFacesResponse
Encode DeleteFacesResponse
```

#### `newDeleteFacesResponse`

``` purescript
newDeleteFacesResponse :: DeleteFacesResponse
```

Constructs DeleteFacesResponse from required parameters

#### `newDeleteFacesResponse'`

``` purescript
newDeleteFacesResponse' :: ({ "DeletedFaces" :: Maybe (FaceIdList) } -> { "DeletedFaces" :: Maybe (FaceIdList) }) -> DeleteFacesResponse
```

Constructs DeleteFacesResponse's fields from required parameters

#### `DeleteStreamProcessorRequest`

``` purescript
newtype DeleteStreamProcessorRequest
  = DeleteStreamProcessorRequest { "Name" :: StreamProcessorName }
```

##### Instances
``` purescript
Newtype DeleteStreamProcessorRequest _
Generic DeleteStreamProcessorRequest _
Show DeleteStreamProcessorRequest
Decode DeleteStreamProcessorRequest
Encode DeleteStreamProcessorRequest
```

#### `newDeleteStreamProcessorRequest`

``` purescript
newDeleteStreamProcessorRequest :: StreamProcessorName -> DeleteStreamProcessorRequest
```

Constructs DeleteStreamProcessorRequest from required parameters

#### `newDeleteStreamProcessorRequest'`

``` purescript
newDeleteStreamProcessorRequest' :: StreamProcessorName -> ({ "Name" :: StreamProcessorName } -> { "Name" :: StreamProcessorName }) -> DeleteStreamProcessorRequest
```

Constructs DeleteStreamProcessorRequest's fields from required parameters

#### `DeleteStreamProcessorResponse`

``` purescript
newtype DeleteStreamProcessorResponse
  = DeleteStreamProcessorResponse NoArguments
```

##### Instances
``` purescript
Newtype DeleteStreamProcessorResponse _
Generic DeleteStreamProcessorResponse _
Show DeleteStreamProcessorResponse
Decode DeleteStreamProcessorResponse
Encode DeleteStreamProcessorResponse
```

#### `DescribeStreamProcessorRequest`

``` purescript
newtype DescribeStreamProcessorRequest
  = DescribeStreamProcessorRequest { "Name" :: StreamProcessorName }
```

##### Instances
``` purescript
Newtype DescribeStreamProcessorRequest _
Generic DescribeStreamProcessorRequest _
Show DescribeStreamProcessorRequest
Decode DescribeStreamProcessorRequest
Encode DescribeStreamProcessorRequest
```

#### `newDescribeStreamProcessorRequest`

``` purescript
newDescribeStreamProcessorRequest :: StreamProcessorName -> DescribeStreamProcessorRequest
```

Constructs DescribeStreamProcessorRequest from required parameters

#### `newDescribeStreamProcessorRequest'`

``` purescript
newDescribeStreamProcessorRequest' :: StreamProcessorName -> ({ "Name" :: StreamProcessorName } -> { "Name" :: StreamProcessorName }) -> DescribeStreamProcessorRequest
```

Constructs DescribeStreamProcessorRequest's fields from required parameters

#### `DescribeStreamProcessorResponse`

``` purescript
newtype DescribeStreamProcessorResponse
  = DescribeStreamProcessorResponse { "Name" :: Maybe (StreamProcessorName), "StreamProcessorArn" :: Maybe (StreamProcessorArn), "Status" :: Maybe (StreamProcessorStatus), "StatusMessage" :: Maybe (String), "CreationTimestamp" :: Maybe (DateTime), "LastUpdateTimestamp" :: Maybe (DateTime), "Input" :: Maybe (StreamProcessorInput), "Output" :: Maybe (StreamProcessorOutput), "RoleArn" :: Maybe (RoleArn), "Settings" :: Maybe (StreamProcessorSettings) }
```

##### Instances
``` purescript
Newtype DescribeStreamProcessorResponse _
Generic DescribeStreamProcessorResponse _
Show DescribeStreamProcessorResponse
Decode DescribeStreamProcessorResponse
Encode DescribeStreamProcessorResponse
```

#### `newDescribeStreamProcessorResponse`

``` purescript
newDescribeStreamProcessorResponse :: DescribeStreamProcessorResponse
```

Constructs DescribeStreamProcessorResponse from required parameters

#### `newDescribeStreamProcessorResponse'`

``` purescript
newDescribeStreamProcessorResponse' :: ({ "Name" :: Maybe (StreamProcessorName), "StreamProcessorArn" :: Maybe (StreamProcessorArn), "Status" :: Maybe (StreamProcessorStatus), "StatusMessage" :: Maybe (String), "CreationTimestamp" :: Maybe (DateTime), "LastUpdateTimestamp" :: Maybe (DateTime), "Input" :: Maybe (StreamProcessorInput), "Output" :: Maybe (StreamProcessorOutput), "RoleArn" :: Maybe (RoleArn), "Settings" :: Maybe (StreamProcessorSettings) } -> { "Name" :: Maybe (StreamProcessorName), "StreamProcessorArn" :: Maybe (StreamProcessorArn), "Status" :: Maybe (StreamProcessorStatus), "StatusMessage" :: Maybe (String), "CreationTimestamp" :: Maybe (DateTime), "LastUpdateTimestamp" :: Maybe (DateTime), "Input" :: Maybe (StreamProcessorInput), "Output" :: Maybe (StreamProcessorOutput), "RoleArn" :: Maybe (RoleArn), "Settings" :: Maybe (StreamProcessorSettings) }) -> DescribeStreamProcessorResponse
```

Constructs DescribeStreamProcessorResponse's fields from required parameters

#### `DetectFacesRequest`

``` purescript
newtype DetectFacesRequest
  = DetectFacesRequest { "Image" :: Image, "Attributes" :: Maybe (Attributes) }
```

##### Instances
``` purescript
Newtype DetectFacesRequest _
Generic DetectFacesRequest _
Show DetectFacesRequest
Decode DetectFacesRequest
Encode DetectFacesRequest
```

#### `newDetectFacesRequest`

``` purescript
newDetectFacesRequest :: Image -> DetectFacesRequest
```

Constructs DetectFacesRequest from required parameters

#### `newDetectFacesRequest'`

``` purescript
newDetectFacesRequest' :: Image -> ({ "Image" :: Image, "Attributes" :: Maybe (Attributes) } -> { "Image" :: Image, "Attributes" :: Maybe (Attributes) }) -> DetectFacesRequest
```

Constructs DetectFacesRequest's fields from required parameters

#### `DetectFacesResponse`

``` purescript
newtype DetectFacesResponse
  = DetectFacesResponse { "FaceDetails" :: Maybe (FaceDetailList), "OrientationCorrection" :: Maybe (OrientationCorrection) }
```

##### Instances
``` purescript
Newtype DetectFacesResponse _
Generic DetectFacesResponse _
Show DetectFacesResponse
Decode DetectFacesResponse
Encode DetectFacesResponse
```

#### `newDetectFacesResponse`

``` purescript
newDetectFacesResponse :: DetectFacesResponse
```

Constructs DetectFacesResponse from required parameters

#### `newDetectFacesResponse'`

``` purescript
newDetectFacesResponse' :: ({ "FaceDetails" :: Maybe (FaceDetailList), "OrientationCorrection" :: Maybe (OrientationCorrection) } -> { "FaceDetails" :: Maybe (FaceDetailList), "OrientationCorrection" :: Maybe (OrientationCorrection) }) -> DetectFacesResponse
```

Constructs DetectFacesResponse's fields from required parameters

#### `DetectLabelsRequest`

``` purescript
newtype DetectLabelsRequest
  = DetectLabelsRequest { "Image" :: Image, "MaxLabels" :: Maybe (UInteger), "MinConfidence" :: Maybe (Percent) }
```

##### Instances
``` purescript
Newtype DetectLabelsRequest _
Generic DetectLabelsRequest _
Show DetectLabelsRequest
Decode DetectLabelsRequest
Encode DetectLabelsRequest
```

#### `newDetectLabelsRequest`

``` purescript
newDetectLabelsRequest :: Image -> DetectLabelsRequest
```

Constructs DetectLabelsRequest from required parameters

#### `newDetectLabelsRequest'`

``` purescript
newDetectLabelsRequest' :: Image -> ({ "Image" :: Image, "MaxLabels" :: Maybe (UInteger), "MinConfidence" :: Maybe (Percent) } -> { "Image" :: Image, "MaxLabels" :: Maybe (UInteger), "MinConfidence" :: Maybe (Percent) }) -> DetectLabelsRequest
```

Constructs DetectLabelsRequest's fields from required parameters

#### `DetectLabelsResponse`

``` purescript
newtype DetectLabelsResponse
  = DetectLabelsResponse { "Labels" :: Maybe (Labels), "OrientationCorrection" :: Maybe (OrientationCorrection) }
```

##### Instances
``` purescript
Newtype DetectLabelsResponse _
Generic DetectLabelsResponse _
Show DetectLabelsResponse
Decode DetectLabelsResponse
Encode DetectLabelsResponse
```

#### `newDetectLabelsResponse`

``` purescript
newDetectLabelsResponse :: DetectLabelsResponse
```

Constructs DetectLabelsResponse from required parameters

#### `newDetectLabelsResponse'`

``` purescript
newDetectLabelsResponse' :: ({ "Labels" :: Maybe (Labels), "OrientationCorrection" :: Maybe (OrientationCorrection) } -> { "Labels" :: Maybe (Labels), "OrientationCorrection" :: Maybe (OrientationCorrection) }) -> DetectLabelsResponse
```

Constructs DetectLabelsResponse's fields from required parameters

#### `DetectModerationLabelsRequest`

``` purescript
newtype DetectModerationLabelsRequest
  = DetectModerationLabelsRequest { "Image" :: Image, "MinConfidence" :: Maybe (Percent) }
```

##### Instances
``` purescript
Newtype DetectModerationLabelsRequest _
Generic DetectModerationLabelsRequest _
Show DetectModerationLabelsRequest
Decode DetectModerationLabelsRequest
Encode DetectModerationLabelsRequest
```

#### `newDetectModerationLabelsRequest`

``` purescript
newDetectModerationLabelsRequest :: Image -> DetectModerationLabelsRequest
```

Constructs DetectModerationLabelsRequest from required parameters

#### `newDetectModerationLabelsRequest'`

``` purescript
newDetectModerationLabelsRequest' :: Image -> ({ "Image" :: Image, "MinConfidence" :: Maybe (Percent) } -> { "Image" :: Image, "MinConfidence" :: Maybe (Percent) }) -> DetectModerationLabelsRequest
```

Constructs DetectModerationLabelsRequest's fields from required parameters

#### `DetectModerationLabelsResponse`

``` purescript
newtype DetectModerationLabelsResponse
  = DetectModerationLabelsResponse { "ModerationLabels" :: Maybe (ModerationLabels) }
```

##### Instances
``` purescript
Newtype DetectModerationLabelsResponse _
Generic DetectModerationLabelsResponse _
Show DetectModerationLabelsResponse
Decode DetectModerationLabelsResponse
Encode DetectModerationLabelsResponse
```

#### `newDetectModerationLabelsResponse`

``` purescript
newDetectModerationLabelsResponse :: DetectModerationLabelsResponse
```

Constructs DetectModerationLabelsResponse from required parameters

#### `newDetectModerationLabelsResponse'`

``` purescript
newDetectModerationLabelsResponse' :: ({ "ModerationLabels" :: Maybe (ModerationLabels) } -> { "ModerationLabels" :: Maybe (ModerationLabels) }) -> DetectModerationLabelsResponse
```

Constructs DetectModerationLabelsResponse's fields from required parameters

#### `DetectTextRequest`

``` purescript
newtype DetectTextRequest
  = DetectTextRequest { "Image" :: Image }
```

##### Instances
``` purescript
Newtype DetectTextRequest _
Generic DetectTextRequest _
Show DetectTextRequest
Decode DetectTextRequest
Encode DetectTextRequest
```

#### `newDetectTextRequest`

``` purescript
newDetectTextRequest :: Image -> DetectTextRequest
```

Constructs DetectTextRequest from required parameters

#### `newDetectTextRequest'`

``` purescript
newDetectTextRequest' :: Image -> ({ "Image" :: Image } -> { "Image" :: Image }) -> DetectTextRequest
```

Constructs DetectTextRequest's fields from required parameters

#### `DetectTextResponse`

``` purescript
newtype DetectTextResponse
  = DetectTextResponse { "TextDetections" :: Maybe (TextDetectionList) }
```

##### Instances
``` purescript
Newtype DetectTextResponse _
Generic DetectTextResponse _
Show DetectTextResponse
Decode DetectTextResponse
Encode DetectTextResponse
```

#### `newDetectTextResponse`

``` purescript
newDetectTextResponse :: DetectTextResponse
```

Constructs DetectTextResponse from required parameters

#### `newDetectTextResponse'`

``` purescript
newDetectTextResponse' :: ({ "TextDetections" :: Maybe (TextDetectionList) } -> { "TextDetections" :: Maybe (TextDetectionList) }) -> DetectTextResponse
```

Constructs DetectTextResponse's fields from required parameters

#### `Emotion`

``` purescript
newtype Emotion
  = Emotion { "Type" :: Maybe (EmotionName), "Confidence" :: Maybe (Percent) }
```

<p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.</p>

##### Instances
``` purescript
Newtype Emotion _
Generic Emotion _
Show Emotion
Decode Emotion
Encode Emotion
```

#### `newEmotion`

``` purescript
newEmotion :: Emotion
```

Constructs Emotion from required parameters

#### `newEmotion'`

``` purescript
newEmotion' :: ({ "Type" :: Maybe (EmotionName), "Confidence" :: Maybe (Percent) } -> { "Type" :: Maybe (EmotionName), "Confidence" :: Maybe (Percent) }) -> Emotion
```

Constructs Emotion's fields from required parameters

#### `EmotionName`

``` purescript
newtype EmotionName
  = EmotionName String
```

##### Instances
``` purescript
Newtype EmotionName _
Generic EmotionName _
Show EmotionName
Decode EmotionName
Encode EmotionName
```

#### `Emotions`

``` purescript
newtype Emotions
  = Emotions (Array Emotion)
```

##### Instances
``` purescript
Newtype Emotions _
Generic Emotions _
Show Emotions
Decode Emotions
Encode Emotions
```

#### `ExternalImageId`

``` purescript
newtype ExternalImageId
  = ExternalImageId String
```

##### Instances
``` purescript
Newtype ExternalImageId _
Generic ExternalImageId _
Show ExternalImageId
Decode ExternalImageId
Encode ExternalImageId
```

#### `EyeOpen`

``` purescript
newtype EyeOpen
  = EyeOpen { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype EyeOpen _
Generic EyeOpen _
Show EyeOpen
Decode EyeOpen
Encode EyeOpen
```

#### `newEyeOpen`

``` purescript
newEyeOpen :: EyeOpen
```

Constructs EyeOpen from required parameters

#### `newEyeOpen'`

``` purescript
newEyeOpen' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> EyeOpen
```

Constructs EyeOpen's fields from required parameters

#### `Eyeglasses`

``` purescript
newtype Eyeglasses
  = Eyeglasses { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Eyeglasses _
Generic Eyeglasses _
Show Eyeglasses
Decode Eyeglasses
Encode Eyeglasses
```

#### `newEyeglasses`

``` purescript
newEyeglasses :: Eyeglasses
```

Constructs Eyeglasses from required parameters

#### `newEyeglasses'`

``` purescript
newEyeglasses' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> Eyeglasses
```

Constructs Eyeglasses's fields from required parameters

#### `Face`

``` purescript
newtype Face
  = Face { "FaceId" :: Maybe (FaceId), "BoundingBox" :: Maybe (BoundingBox), "ImageId" :: Maybe (ImageId), "ExternalImageId" :: Maybe (ExternalImageId), "Confidence" :: Maybe (Percent) }
```

<p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>

##### Instances
``` purescript
Newtype Face _
Generic Face _
Show Face
Decode Face
Encode Face
```

#### `newFace`

``` purescript
newFace :: Face
```

Constructs Face from required parameters

#### `newFace'`

``` purescript
newFace' :: ({ "FaceId" :: Maybe (FaceId), "BoundingBox" :: Maybe (BoundingBox), "ImageId" :: Maybe (ImageId), "ExternalImageId" :: Maybe (ExternalImageId), "Confidence" :: Maybe (Percent) } -> { "FaceId" :: Maybe (FaceId), "BoundingBox" :: Maybe (BoundingBox), "ImageId" :: Maybe (ImageId), "ExternalImageId" :: Maybe (ExternalImageId), "Confidence" :: Maybe (Percent) }) -> Face
```

Constructs Face's fields from required parameters

#### `FaceAttributes`

``` purescript
newtype FaceAttributes
  = FaceAttributes String
```

##### Instances
``` purescript
Newtype FaceAttributes _
Generic FaceAttributes _
Show FaceAttributes
Decode FaceAttributes
Encode FaceAttributes
```

#### `FaceDetail`

``` purescript
newtype FaceDetail
  = FaceDetail { "BoundingBox" :: Maybe (BoundingBox), "AgeRange" :: Maybe (AgeRange), "Smile" :: Maybe (Smile), "Eyeglasses" :: Maybe (Eyeglasses), "Sunglasses" :: Maybe (Sunglasses), "Gender" :: Maybe (Gender), "Beard" :: Maybe (Beard), "Mustache" :: Maybe (Mustache), "EyesOpen" :: Maybe (EyeOpen), "MouthOpen" :: Maybe (MouthOpen), "Emotions" :: Maybe (Emotions), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality), "Confidence" :: Maybe (Percent) }
```

<p>Structure containing attributes of the face that the algorithm detected.</p>

##### Instances
``` purescript
Newtype FaceDetail _
Generic FaceDetail _
Show FaceDetail
Decode FaceDetail
Encode FaceDetail
```

#### `newFaceDetail`

``` purescript
newFaceDetail :: FaceDetail
```

Constructs FaceDetail from required parameters

#### `newFaceDetail'`

``` purescript
newFaceDetail' :: ({ "BoundingBox" :: Maybe (BoundingBox), "AgeRange" :: Maybe (AgeRange), "Smile" :: Maybe (Smile), "Eyeglasses" :: Maybe (Eyeglasses), "Sunglasses" :: Maybe (Sunglasses), "Gender" :: Maybe (Gender), "Beard" :: Maybe (Beard), "Mustache" :: Maybe (Mustache), "EyesOpen" :: Maybe (EyeOpen), "MouthOpen" :: Maybe (MouthOpen), "Emotions" :: Maybe (Emotions), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality), "Confidence" :: Maybe (Percent) } -> { "BoundingBox" :: Maybe (BoundingBox), "AgeRange" :: Maybe (AgeRange), "Smile" :: Maybe (Smile), "Eyeglasses" :: Maybe (Eyeglasses), "Sunglasses" :: Maybe (Sunglasses), "Gender" :: Maybe (Gender), "Beard" :: Maybe (Beard), "Mustache" :: Maybe (Mustache), "EyesOpen" :: Maybe (EyeOpen), "MouthOpen" :: Maybe (MouthOpen), "Emotions" :: Maybe (Emotions), "Landmarks" :: Maybe (Landmarks), "Pose" :: Maybe (Pose), "Quality" :: Maybe (ImageQuality), "Confidence" :: Maybe (Percent) }) -> FaceDetail
```

Constructs FaceDetail's fields from required parameters

#### `FaceDetailList`

``` purescript
newtype FaceDetailList
  = FaceDetailList (Array FaceDetail)
```

##### Instances
``` purescript
Newtype FaceDetailList _
Generic FaceDetailList _
Show FaceDetailList
Decode FaceDetailList
Encode FaceDetailList
```

#### `FaceDetection`

``` purescript
newtype FaceDetection
  = FaceDetection { "Timestamp" :: Maybe (Timestamp), "Face" :: Maybe (FaceDetail) }
```

<p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>

##### Instances
``` purescript
Newtype FaceDetection _
Generic FaceDetection _
Show FaceDetection
Decode FaceDetection
Encode FaceDetection
```

#### `newFaceDetection`

``` purescript
newFaceDetection :: FaceDetection
```

Constructs FaceDetection from required parameters

#### `newFaceDetection'`

``` purescript
newFaceDetection' :: ({ "Timestamp" :: Maybe (Timestamp), "Face" :: Maybe (FaceDetail) } -> { "Timestamp" :: Maybe (Timestamp), "Face" :: Maybe (FaceDetail) }) -> FaceDetection
```

Constructs FaceDetection's fields from required parameters

#### `FaceDetections`

``` purescript
newtype FaceDetections
  = FaceDetections (Array FaceDetection)
```

##### Instances
``` purescript
Newtype FaceDetections _
Generic FaceDetections _
Show FaceDetections
Decode FaceDetections
Encode FaceDetections
```

#### `FaceId`

``` purescript
newtype FaceId
  = FaceId String
```

##### Instances
``` purescript
Newtype FaceId _
Generic FaceId _
Show FaceId
Decode FaceId
Encode FaceId
```

#### `FaceIdList`

``` purescript
newtype FaceIdList
  = FaceIdList (Array FaceId)
```

##### Instances
``` purescript
Newtype FaceIdList _
Generic FaceIdList _
Show FaceIdList
Decode FaceIdList
Encode FaceIdList
```

#### `FaceList`

``` purescript
newtype FaceList
  = FaceList (Array Face)
```

##### Instances
``` purescript
Newtype FaceList _
Generic FaceList _
Show FaceList
Decode FaceList
Encode FaceList
```

#### `FaceMatch`

``` purescript
newtype FaceMatch
  = FaceMatch { "Similarity" :: Maybe (Percent), "Face" :: Maybe (Face) }
```

<p>Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.</p>

##### Instances
``` purescript
Newtype FaceMatch _
Generic FaceMatch _
Show FaceMatch
Decode FaceMatch
Encode FaceMatch
```

#### `newFaceMatch`

``` purescript
newFaceMatch :: FaceMatch
```

Constructs FaceMatch from required parameters

#### `newFaceMatch'`

``` purescript
newFaceMatch' :: ({ "Similarity" :: Maybe (Percent), "Face" :: Maybe (Face) } -> { "Similarity" :: Maybe (Percent), "Face" :: Maybe (Face) }) -> FaceMatch
```

Constructs FaceMatch's fields from required parameters

#### `FaceMatchList`

``` purescript
newtype FaceMatchList
  = FaceMatchList (Array FaceMatch)
```

##### Instances
``` purescript
Newtype FaceMatchList _
Generic FaceMatchList _
Show FaceMatchList
Decode FaceMatchList
Encode FaceMatchList
```

#### `FaceModelVersionList`

``` purescript
newtype FaceModelVersionList
  = FaceModelVersionList (Array String)
```

##### Instances
``` purescript
Newtype FaceModelVersionList _
Generic FaceModelVersionList _
Show FaceModelVersionList
Decode FaceModelVersionList
Encode FaceModelVersionList
```

#### `FaceRecord`

``` purescript
newtype FaceRecord
  = FaceRecord { "Face" :: Maybe (Face), "FaceDetail" :: Maybe (FaceDetail) }
```

<p>Object containing both the face metadata (stored in the back-end database) and facial attributes that are detected but aren't stored in the database.</p>

##### Instances
``` purescript
Newtype FaceRecord _
Generic FaceRecord _
Show FaceRecord
Decode FaceRecord
Encode FaceRecord
```

#### `newFaceRecord`

``` purescript
newFaceRecord :: FaceRecord
```

Constructs FaceRecord from required parameters

#### `newFaceRecord'`

``` purescript
newFaceRecord' :: ({ "Face" :: Maybe (Face), "FaceDetail" :: Maybe (FaceDetail) } -> { "Face" :: Maybe (Face), "FaceDetail" :: Maybe (FaceDetail) }) -> FaceRecord
```

Constructs FaceRecord's fields from required parameters

#### `FaceRecordList`

``` purescript
newtype FaceRecordList
  = FaceRecordList (Array FaceRecord)
```

##### Instances
``` purescript
Newtype FaceRecordList _
Generic FaceRecordList _
Show FaceRecordList
Decode FaceRecordList
Encode FaceRecordList
```

#### `FaceSearchSettings`

``` purescript
newtype FaceSearchSettings
  = FaceSearchSettings { "CollectionId" :: Maybe (CollectionId), "FaceMatchThreshold" :: Maybe (Percent) }
```

<p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request parameter for .</p>

##### Instances
``` purescript
Newtype FaceSearchSettings _
Generic FaceSearchSettings _
Show FaceSearchSettings
Decode FaceSearchSettings
Encode FaceSearchSettings
```

#### `newFaceSearchSettings`

``` purescript
newFaceSearchSettings :: FaceSearchSettings
```

Constructs FaceSearchSettings from required parameters

#### `newFaceSearchSettings'`

``` purescript
newFaceSearchSettings' :: ({ "CollectionId" :: Maybe (CollectionId), "FaceMatchThreshold" :: Maybe (Percent) } -> { "CollectionId" :: Maybe (CollectionId), "FaceMatchThreshold" :: Maybe (Percent) }) -> FaceSearchSettings
```

Constructs FaceSearchSettings's fields from required parameters

#### `FaceSearchSortBy`

``` purescript
newtype FaceSearchSortBy
  = FaceSearchSortBy String
```

##### Instances
``` purescript
Newtype FaceSearchSortBy _
Generic FaceSearchSortBy _
Show FaceSearchSortBy
Decode FaceSearchSortBy
Encode FaceSearchSortBy
```

#### `Gender`

``` purescript
newtype Gender
  = Gender { "Value" :: Maybe (GenderType), "Confidence" :: Maybe (Percent) }
```

<p>Gender of the face and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Gender _
Generic Gender _
Show Gender
Decode Gender
Encode Gender
```

#### `newGender`

``` purescript
newGender :: Gender
```

Constructs Gender from required parameters

#### `newGender'`

``` purescript
newGender' :: ({ "Value" :: Maybe (GenderType), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (GenderType), "Confidence" :: Maybe (Percent) }) -> Gender
```

Constructs Gender's fields from required parameters

#### `GenderType`

``` purescript
newtype GenderType
  = GenderType String
```

##### Instances
``` purescript
Newtype GenderType _
Generic GenderType _
Show GenderType
Decode GenderType
Encode GenderType
```

#### `Geometry`

``` purescript
newtype Geometry
  = Geometry { "BoundingBox" :: Maybe (BoundingBox), "Polygon" :: Maybe (Polygon) }
```

<p>Information about where text detected by is located on an image.</p>

##### Instances
``` purescript
Newtype Geometry _
Generic Geometry _
Show Geometry
Decode Geometry
Encode Geometry
```

#### `newGeometry`

``` purescript
newGeometry :: Geometry
```

Constructs Geometry from required parameters

#### `newGeometry'`

``` purescript
newGeometry' :: ({ "BoundingBox" :: Maybe (BoundingBox), "Polygon" :: Maybe (Polygon) } -> { "BoundingBox" :: Maybe (BoundingBox), "Polygon" :: Maybe (Polygon) }) -> Geometry
```

Constructs Geometry's fields from required parameters

#### `GetCelebrityInfoRequest`

``` purescript
newtype GetCelebrityInfoRequest
  = GetCelebrityInfoRequest { "Id" :: RekognitionUniqueId }
```

##### Instances
``` purescript
Newtype GetCelebrityInfoRequest _
Generic GetCelebrityInfoRequest _
Show GetCelebrityInfoRequest
Decode GetCelebrityInfoRequest
Encode GetCelebrityInfoRequest
```

#### `newGetCelebrityInfoRequest`

``` purescript
newGetCelebrityInfoRequest :: RekognitionUniqueId -> GetCelebrityInfoRequest
```

Constructs GetCelebrityInfoRequest from required parameters

#### `newGetCelebrityInfoRequest'`

``` purescript
newGetCelebrityInfoRequest' :: RekognitionUniqueId -> ({ "Id" :: RekognitionUniqueId } -> { "Id" :: RekognitionUniqueId }) -> GetCelebrityInfoRequest
```

Constructs GetCelebrityInfoRequest's fields from required parameters

#### `GetCelebrityInfoResponse`

``` purescript
newtype GetCelebrityInfoResponse
  = GetCelebrityInfoResponse { "Urls" :: Maybe (Urls), "Name" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype GetCelebrityInfoResponse _
Generic GetCelebrityInfoResponse _
Show GetCelebrityInfoResponse
Decode GetCelebrityInfoResponse
Encode GetCelebrityInfoResponse
```

#### `newGetCelebrityInfoResponse`

``` purescript
newGetCelebrityInfoResponse :: GetCelebrityInfoResponse
```

Constructs GetCelebrityInfoResponse from required parameters

#### `newGetCelebrityInfoResponse'`

``` purescript
newGetCelebrityInfoResponse' :: ({ "Urls" :: Maybe (Urls), "Name" :: Maybe (String) } -> { "Urls" :: Maybe (Urls), "Name" :: Maybe (String) }) -> GetCelebrityInfoResponse
```

Constructs GetCelebrityInfoResponse's fields from required parameters

#### `GetCelebrityRecognitionRequest`

``` purescript
newtype GetCelebrityRecognitionRequest
  = GetCelebrityRecognitionRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (CelebrityRecognitionSortBy) }
```

##### Instances
``` purescript
Newtype GetCelebrityRecognitionRequest _
Generic GetCelebrityRecognitionRequest _
Show GetCelebrityRecognitionRequest
Decode GetCelebrityRecognitionRequest
Encode GetCelebrityRecognitionRequest
```

#### `newGetCelebrityRecognitionRequest`

``` purescript
newGetCelebrityRecognitionRequest :: JobId -> GetCelebrityRecognitionRequest
```

Constructs GetCelebrityRecognitionRequest from required parameters

#### `newGetCelebrityRecognitionRequest'`

``` purescript
newGetCelebrityRecognitionRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (CelebrityRecognitionSortBy) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (CelebrityRecognitionSortBy) }) -> GetCelebrityRecognitionRequest
```

Constructs GetCelebrityRecognitionRequest's fields from required parameters

#### `GetCelebrityRecognitionResponse`

``` purescript
newtype GetCelebrityRecognitionResponse
  = GetCelebrityRecognitionResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Celebrities" :: Maybe (CelebrityRecognitions) }
```

##### Instances
``` purescript
Newtype GetCelebrityRecognitionResponse _
Generic GetCelebrityRecognitionResponse _
Show GetCelebrityRecognitionResponse
Decode GetCelebrityRecognitionResponse
Encode GetCelebrityRecognitionResponse
```

#### `newGetCelebrityRecognitionResponse`

``` purescript
newGetCelebrityRecognitionResponse :: GetCelebrityRecognitionResponse
```

Constructs GetCelebrityRecognitionResponse from required parameters

#### `newGetCelebrityRecognitionResponse'`

``` purescript
newGetCelebrityRecognitionResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Celebrities" :: Maybe (CelebrityRecognitions) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Celebrities" :: Maybe (CelebrityRecognitions) }) -> GetCelebrityRecognitionResponse
```

Constructs GetCelebrityRecognitionResponse's fields from required parameters

#### `GetContentModerationRequest`

``` purescript
newtype GetContentModerationRequest
  = GetContentModerationRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (ContentModerationSortBy) }
```

##### Instances
``` purescript
Newtype GetContentModerationRequest _
Generic GetContentModerationRequest _
Show GetContentModerationRequest
Decode GetContentModerationRequest
Encode GetContentModerationRequest
```

#### `newGetContentModerationRequest`

``` purescript
newGetContentModerationRequest :: JobId -> GetContentModerationRequest
```

Constructs GetContentModerationRequest from required parameters

#### `newGetContentModerationRequest'`

``` purescript
newGetContentModerationRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (ContentModerationSortBy) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (ContentModerationSortBy) }) -> GetContentModerationRequest
```

Constructs GetContentModerationRequest's fields from required parameters

#### `GetContentModerationResponse`

``` purescript
newtype GetContentModerationResponse
  = GetContentModerationResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "ModerationLabels" :: Maybe (ContentModerationDetections), "NextToken" :: Maybe (PaginationToken) }
```

##### Instances
``` purescript
Newtype GetContentModerationResponse _
Generic GetContentModerationResponse _
Show GetContentModerationResponse
Decode GetContentModerationResponse
Encode GetContentModerationResponse
```

#### `newGetContentModerationResponse`

``` purescript
newGetContentModerationResponse :: GetContentModerationResponse
```

Constructs GetContentModerationResponse from required parameters

#### `newGetContentModerationResponse'`

``` purescript
newGetContentModerationResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "ModerationLabels" :: Maybe (ContentModerationDetections), "NextToken" :: Maybe (PaginationToken) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "ModerationLabels" :: Maybe (ContentModerationDetections), "NextToken" :: Maybe (PaginationToken) }) -> GetContentModerationResponse
```

Constructs GetContentModerationResponse's fields from required parameters

#### `GetFaceDetectionRequest`

``` purescript
newtype GetFaceDetectionRequest
  = GetFaceDetectionRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken) }
```

##### Instances
``` purescript
Newtype GetFaceDetectionRequest _
Generic GetFaceDetectionRequest _
Show GetFaceDetectionRequest
Decode GetFaceDetectionRequest
Encode GetFaceDetectionRequest
```

#### `newGetFaceDetectionRequest`

``` purescript
newGetFaceDetectionRequest :: JobId -> GetFaceDetectionRequest
```

Constructs GetFaceDetectionRequest from required parameters

#### `newGetFaceDetectionRequest'`

``` purescript
newGetFaceDetectionRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken) }) -> GetFaceDetectionRequest
```

Constructs GetFaceDetectionRequest's fields from required parameters

#### `GetFaceDetectionResponse`

``` purescript
newtype GetFaceDetectionResponse
  = GetFaceDetectionResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Faces" :: Maybe (FaceDetections) }
```

##### Instances
``` purescript
Newtype GetFaceDetectionResponse _
Generic GetFaceDetectionResponse _
Show GetFaceDetectionResponse
Decode GetFaceDetectionResponse
Encode GetFaceDetectionResponse
```

#### `newGetFaceDetectionResponse`

``` purescript
newGetFaceDetectionResponse :: GetFaceDetectionResponse
```

Constructs GetFaceDetectionResponse from required parameters

#### `newGetFaceDetectionResponse'`

``` purescript
newGetFaceDetectionResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Faces" :: Maybe (FaceDetections) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Faces" :: Maybe (FaceDetections) }) -> GetFaceDetectionResponse
```

Constructs GetFaceDetectionResponse's fields from required parameters

#### `GetFaceSearchRequest`

``` purescript
newtype GetFaceSearchRequest
  = GetFaceSearchRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (FaceSearchSortBy) }
```

##### Instances
``` purescript
Newtype GetFaceSearchRequest _
Generic GetFaceSearchRequest _
Show GetFaceSearchRequest
Decode GetFaceSearchRequest
Encode GetFaceSearchRequest
```

#### `newGetFaceSearchRequest`

``` purescript
newGetFaceSearchRequest :: JobId -> GetFaceSearchRequest
```

Constructs GetFaceSearchRequest from required parameters

#### `newGetFaceSearchRequest'`

``` purescript
newGetFaceSearchRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (FaceSearchSortBy) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (FaceSearchSortBy) }) -> GetFaceSearchRequest
```

Constructs GetFaceSearchRequest's fields from required parameters

#### `GetFaceSearchResponse`

``` purescript
newtype GetFaceSearchResponse
  = GetFaceSearchResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "NextToken" :: Maybe (PaginationToken), "VideoMetadata" :: Maybe (VideoMetadata), "Persons" :: Maybe (PersonMatches) }
```

##### Instances
``` purescript
Newtype GetFaceSearchResponse _
Generic GetFaceSearchResponse _
Show GetFaceSearchResponse
Decode GetFaceSearchResponse
Encode GetFaceSearchResponse
```

#### `newGetFaceSearchResponse`

``` purescript
newGetFaceSearchResponse :: GetFaceSearchResponse
```

Constructs GetFaceSearchResponse from required parameters

#### `newGetFaceSearchResponse'`

``` purescript
newGetFaceSearchResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "NextToken" :: Maybe (PaginationToken), "VideoMetadata" :: Maybe (VideoMetadata), "Persons" :: Maybe (PersonMatches) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "NextToken" :: Maybe (PaginationToken), "VideoMetadata" :: Maybe (VideoMetadata), "Persons" :: Maybe (PersonMatches) }) -> GetFaceSearchResponse
```

Constructs GetFaceSearchResponse's fields from required parameters

#### `GetLabelDetectionRequest`

``` purescript
newtype GetLabelDetectionRequest
  = GetLabelDetectionRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (LabelDetectionSortBy) }
```

##### Instances
``` purescript
Newtype GetLabelDetectionRequest _
Generic GetLabelDetectionRequest _
Show GetLabelDetectionRequest
Decode GetLabelDetectionRequest
Encode GetLabelDetectionRequest
```

#### `newGetLabelDetectionRequest`

``` purescript
newGetLabelDetectionRequest :: JobId -> GetLabelDetectionRequest
```

Constructs GetLabelDetectionRequest from required parameters

#### `newGetLabelDetectionRequest'`

``` purescript
newGetLabelDetectionRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (LabelDetectionSortBy) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (LabelDetectionSortBy) }) -> GetLabelDetectionRequest
```

Constructs GetLabelDetectionRequest's fields from required parameters

#### `GetLabelDetectionResponse`

``` purescript
newtype GetLabelDetectionResponse
  = GetLabelDetectionResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Labels" :: Maybe (LabelDetections) }
```

##### Instances
``` purescript
Newtype GetLabelDetectionResponse _
Generic GetLabelDetectionResponse _
Show GetLabelDetectionResponse
Decode GetLabelDetectionResponse
Encode GetLabelDetectionResponse
```

#### `newGetLabelDetectionResponse`

``` purescript
newGetLabelDetectionResponse :: GetLabelDetectionResponse
```

Constructs GetLabelDetectionResponse from required parameters

#### `newGetLabelDetectionResponse'`

``` purescript
newGetLabelDetectionResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Labels" :: Maybe (LabelDetections) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Labels" :: Maybe (LabelDetections) }) -> GetLabelDetectionResponse
```

Constructs GetLabelDetectionResponse's fields from required parameters

#### `GetPersonTrackingRequest`

``` purescript
newtype GetPersonTrackingRequest
  = GetPersonTrackingRequest { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (PersonTrackingSortBy) }
```

##### Instances
``` purescript
Newtype GetPersonTrackingRequest _
Generic GetPersonTrackingRequest _
Show GetPersonTrackingRequest
Decode GetPersonTrackingRequest
Encode GetPersonTrackingRequest
```

#### `newGetPersonTrackingRequest`

``` purescript
newGetPersonTrackingRequest :: JobId -> GetPersonTrackingRequest
```

Constructs GetPersonTrackingRequest from required parameters

#### `newGetPersonTrackingRequest'`

``` purescript
newGetPersonTrackingRequest' :: JobId -> ({ "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (PersonTrackingSortBy) } -> { "JobId" :: JobId, "MaxResults" :: Maybe (MaxResults), "NextToken" :: Maybe (PaginationToken), "SortBy" :: Maybe (PersonTrackingSortBy) }) -> GetPersonTrackingRequest
```

Constructs GetPersonTrackingRequest's fields from required parameters

#### `GetPersonTrackingResponse`

``` purescript
newtype GetPersonTrackingResponse
  = GetPersonTrackingResponse { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Persons" :: Maybe (PersonDetections) }
```

##### Instances
``` purescript
Newtype GetPersonTrackingResponse _
Generic GetPersonTrackingResponse _
Show GetPersonTrackingResponse
Decode GetPersonTrackingResponse
Encode GetPersonTrackingResponse
```

#### `newGetPersonTrackingResponse`

``` purescript
newGetPersonTrackingResponse :: GetPersonTrackingResponse
```

Constructs GetPersonTrackingResponse from required parameters

#### `newGetPersonTrackingResponse'`

``` purescript
newGetPersonTrackingResponse' :: ({ "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Persons" :: Maybe (PersonDetections) } -> { "JobStatus" :: Maybe (VideoJobStatus), "StatusMessage" :: Maybe (StatusMessage), "VideoMetadata" :: Maybe (VideoMetadata), "NextToken" :: Maybe (PaginationToken), "Persons" :: Maybe (PersonDetections) }) -> GetPersonTrackingResponse
```

Constructs GetPersonTrackingResponse's fields from required parameters

#### `IdempotentParameterMismatchException`

``` purescript
newtype IdempotentParameterMismatchException
  = IdempotentParameterMismatchException NoArguments
```

<p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.</p>

##### Instances
``` purescript
Newtype IdempotentParameterMismatchException _
Generic IdempotentParameterMismatchException _
Show IdempotentParameterMismatchException
Decode IdempotentParameterMismatchException
Encode IdempotentParameterMismatchException
```

#### `Image`

``` purescript
newtype Image
  = Image { "Bytes" :: Maybe (ImageBlob), "S3Object" :: Maybe (S3Object) }
```

<p>Provides the input image either as bytes or an S3 object.</p> <p>You pass image bytes to a Rekognition API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass an image loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Rekognition API operations. For more information, see <a>images-bytes</a>.</p> <p> You pass images stored in an S3 bucket to a Rekognition API operation by using the <code>S3Object</code> property. Images stored in an S3 bucket do not need to be base64-encoded.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>

##### Instances
``` purescript
Newtype Image _
Generic Image _
Show Image
Decode Image
Encode Image
```

#### `newImage`

``` purescript
newImage :: Image
```

Constructs Image from required parameters

#### `newImage'`

``` purescript
newImage' :: ({ "Bytes" :: Maybe (ImageBlob), "S3Object" :: Maybe (S3Object) } -> { "Bytes" :: Maybe (ImageBlob), "S3Object" :: Maybe (S3Object) }) -> Image
```

Constructs Image's fields from required parameters

#### `ImageBlob`

``` purescript
newtype ImageBlob
  = ImageBlob String
```

##### Instances
``` purescript
Newtype ImageBlob _
Generic ImageBlob _
Show ImageBlob
Decode ImageBlob
Encode ImageBlob
```

#### `ImageId`

``` purescript
newtype ImageId
  = ImageId String
```

##### Instances
``` purescript
Newtype ImageId _
Generic ImageId _
Show ImageId
Decode ImageId
Encode ImageId
```

#### `ImageQuality`

``` purescript
newtype ImageQuality
  = ImageQuality { "Brightness" :: Maybe (Number), "Sharpness" :: Maybe (Number) }
```

<p>Identifies face image brightness and sharpness. </p>

##### Instances
``` purescript
Newtype ImageQuality _
Generic ImageQuality _
Show ImageQuality
Decode ImageQuality
Encode ImageQuality
```

#### `newImageQuality`

``` purescript
newImageQuality :: ImageQuality
```

Constructs ImageQuality from required parameters

#### `newImageQuality'`

``` purescript
newImageQuality' :: ({ "Brightness" :: Maybe (Number), "Sharpness" :: Maybe (Number) } -> { "Brightness" :: Maybe (Number), "Sharpness" :: Maybe (Number) }) -> ImageQuality
```

Constructs ImageQuality's fields from required parameters

#### `ImageTooLargeException`

``` purescript
newtype ImageTooLargeException
  = ImageTooLargeException NoArguments
```

<p>The input image size exceeds the allowed limit. For more information, see <a>limits</a>. </p>

##### Instances
``` purescript
Newtype ImageTooLargeException _
Generic ImageTooLargeException _
Show ImageTooLargeException
Decode ImageTooLargeException
Encode ImageTooLargeException
```

#### `IndexFacesRequest`

``` purescript
newtype IndexFacesRequest
  = IndexFacesRequest { "CollectionId" :: CollectionId, "Image" :: Image, "ExternalImageId" :: Maybe (ExternalImageId), "DetectionAttributes" :: Maybe (Attributes) }
```

##### Instances
``` purescript
Newtype IndexFacesRequest _
Generic IndexFacesRequest _
Show IndexFacesRequest
Decode IndexFacesRequest
Encode IndexFacesRequest
```

#### `newIndexFacesRequest`

``` purescript
newIndexFacesRequest :: CollectionId -> Image -> IndexFacesRequest
```

Constructs IndexFacesRequest from required parameters

#### `newIndexFacesRequest'`

``` purescript
newIndexFacesRequest' :: CollectionId -> Image -> ({ "CollectionId" :: CollectionId, "Image" :: Image, "ExternalImageId" :: Maybe (ExternalImageId), "DetectionAttributes" :: Maybe (Attributes) } -> { "CollectionId" :: CollectionId, "Image" :: Image, "ExternalImageId" :: Maybe (ExternalImageId), "DetectionAttributes" :: Maybe (Attributes) }) -> IndexFacesRequest
```

Constructs IndexFacesRequest's fields from required parameters

#### `IndexFacesResponse`

``` purescript
newtype IndexFacesResponse
  = IndexFacesResponse { "FaceRecords" :: Maybe (FaceRecordList), "OrientationCorrection" :: Maybe (OrientationCorrection), "FaceModelVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype IndexFacesResponse _
Generic IndexFacesResponse _
Show IndexFacesResponse
Decode IndexFacesResponse
Encode IndexFacesResponse
```

#### `newIndexFacesResponse`

``` purescript
newIndexFacesResponse :: IndexFacesResponse
```

Constructs IndexFacesResponse from required parameters

#### `newIndexFacesResponse'`

``` purescript
newIndexFacesResponse' :: ({ "FaceRecords" :: Maybe (FaceRecordList), "OrientationCorrection" :: Maybe (OrientationCorrection), "FaceModelVersion" :: Maybe (String) } -> { "FaceRecords" :: Maybe (FaceRecordList), "OrientationCorrection" :: Maybe (OrientationCorrection), "FaceModelVersion" :: Maybe (String) }) -> IndexFacesResponse
```

Constructs IndexFacesResponse's fields from required parameters

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError NoArguments
```

<p>Amazon Rekognition experienced a service issue. Try your call again.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `InvalidImageFormatException`

``` purescript
newtype InvalidImageFormatException
  = InvalidImageFormatException NoArguments
```

<p>The provided image format is not supported. </p>

##### Instances
``` purescript
Newtype InvalidImageFormatException _
Generic InvalidImageFormatException _
Show InvalidImageFormatException
Decode InvalidImageFormatException
Encode InvalidImageFormatException
```

#### `InvalidPaginationTokenException`

``` purescript
newtype InvalidPaginationTokenException
  = InvalidPaginationTokenException NoArguments
```

<p>Pagination token in the request is not valid.</p>

##### Instances
``` purescript
Newtype InvalidPaginationTokenException _
Generic InvalidPaginationTokenException _
Show InvalidPaginationTokenException
Decode InvalidPaginationTokenException
Encode InvalidPaginationTokenException
```

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException NoArguments
```

<p>Input parameter violated a constraint. Validate your parameter before calling the API operation again.</p>

##### Instances
``` purescript
Newtype InvalidParameterException _
Generic InvalidParameterException _
Show InvalidParameterException
Decode InvalidParameterException
Encode InvalidParameterException
```

#### `InvalidS3ObjectException`

``` purescript
newtype InvalidS3ObjectException
  = InvalidS3ObjectException NoArguments
```

<p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>

##### Instances
``` purescript
Newtype InvalidS3ObjectException _
Generic InvalidS3ObjectException _
Show InvalidS3ObjectException
Decode InvalidS3ObjectException
Encode InvalidS3ObjectException
```

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `JobTag`

``` purescript
newtype JobTag
  = JobTag String
```

##### Instances
``` purescript
Newtype JobTag _
Generic JobTag _
Show JobTag
Decode JobTag
Encode JobTag
```

#### `KinesisDataArn`

``` purescript
newtype KinesisDataArn
  = KinesisDataArn String
```

##### Instances
``` purescript
Newtype KinesisDataArn _
Generic KinesisDataArn _
Show KinesisDataArn
Decode KinesisDataArn
Encode KinesisDataArn
```

#### `KinesisDataStream`

``` purescript
newtype KinesisDataStream
  = KinesisDataStream { "Arn" :: Maybe (KinesisDataArn) }
```

<p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see .</p>

##### Instances
``` purescript
Newtype KinesisDataStream _
Generic KinesisDataStream _
Show KinesisDataStream
Decode KinesisDataStream
Encode KinesisDataStream
```

#### `newKinesisDataStream`

``` purescript
newKinesisDataStream :: KinesisDataStream
```

Constructs KinesisDataStream from required parameters

#### `newKinesisDataStream'`

``` purescript
newKinesisDataStream' :: ({ "Arn" :: Maybe (KinesisDataArn) } -> { "Arn" :: Maybe (KinesisDataArn) }) -> KinesisDataStream
```

Constructs KinesisDataStream's fields from required parameters

#### `KinesisVideoArn`

``` purescript
newtype KinesisVideoArn
  = KinesisVideoArn String
```

##### Instances
``` purescript
Newtype KinesisVideoArn _
Generic KinesisVideoArn _
Show KinesisVideoArn
Decode KinesisVideoArn
Encode KinesisVideoArn
```

#### `KinesisVideoStream`

``` purescript
newtype KinesisVideoStream
  = KinesisVideoStream { "Arn" :: Maybe (KinesisVideoArn) }
```

<p>Kinesis video stream stream that provides the source streaming video for a Rekognition Video stream processor. For more information, see .</p>

##### Instances
``` purescript
Newtype KinesisVideoStream _
Generic KinesisVideoStream _
Show KinesisVideoStream
Decode KinesisVideoStream
Encode KinesisVideoStream
```

#### `newKinesisVideoStream`

``` purescript
newKinesisVideoStream :: KinesisVideoStream
```

Constructs KinesisVideoStream from required parameters

#### `newKinesisVideoStream'`

``` purescript
newKinesisVideoStream' :: ({ "Arn" :: Maybe (KinesisVideoArn) } -> { "Arn" :: Maybe (KinesisVideoArn) }) -> KinesisVideoStream
```

Constructs KinesisVideoStream's fields from required parameters

#### `Label`

``` purescript
newtype Label
  = Label { "Name" :: Maybe (String), "Confidence" :: Maybe (Percent) }
```

<p>Structure containing details about the detected label, including name, and level of confidence.</p>

##### Instances
``` purescript
Newtype Label _
Generic Label _
Show Label
Decode Label
Encode Label
```

#### `newLabel`

``` purescript
newLabel :: Label
```

Constructs Label from required parameters

#### `newLabel'`

``` purescript
newLabel' :: ({ "Name" :: Maybe (String), "Confidence" :: Maybe (Percent) } -> { "Name" :: Maybe (String), "Confidence" :: Maybe (Percent) }) -> Label
```

Constructs Label's fields from required parameters

#### `LabelDetection`

``` purescript
newtype LabelDetection
  = LabelDetection { "Timestamp" :: Maybe (Timestamp), "Label" :: Maybe (Label) }
```

<p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>

##### Instances
``` purescript
Newtype LabelDetection _
Generic LabelDetection _
Show LabelDetection
Decode LabelDetection
Encode LabelDetection
```

#### `newLabelDetection`

``` purescript
newLabelDetection :: LabelDetection
```

Constructs LabelDetection from required parameters

#### `newLabelDetection'`

``` purescript
newLabelDetection' :: ({ "Timestamp" :: Maybe (Timestamp), "Label" :: Maybe (Label) } -> { "Timestamp" :: Maybe (Timestamp), "Label" :: Maybe (Label) }) -> LabelDetection
```

Constructs LabelDetection's fields from required parameters

#### `LabelDetectionSortBy`

``` purescript
newtype LabelDetectionSortBy
  = LabelDetectionSortBy String
```

##### Instances
``` purescript
Newtype LabelDetectionSortBy _
Generic LabelDetectionSortBy _
Show LabelDetectionSortBy
Decode LabelDetectionSortBy
Encode LabelDetectionSortBy
```

#### `LabelDetections`

``` purescript
newtype LabelDetections
  = LabelDetections (Array LabelDetection)
```

##### Instances
``` purescript
Newtype LabelDetections _
Generic LabelDetections _
Show LabelDetections
Decode LabelDetections
Encode LabelDetections
```

#### `Labels`

``` purescript
newtype Labels
  = Labels (Array Label)
```

##### Instances
``` purescript
Newtype Labels _
Generic Labels _
Show Labels
Decode Labels
Encode Labels
```

#### `Landmark`

``` purescript
newtype Landmark
  = Landmark { "Type" :: Maybe (LandmarkType), "X" :: Maybe (Number), "Y" :: Maybe (Number) }
```

<p>Indicates the location of the landmark on the face.</p>

##### Instances
``` purescript
Newtype Landmark _
Generic Landmark _
Show Landmark
Decode Landmark
Encode Landmark
```

#### `newLandmark`

``` purescript
newLandmark :: Landmark
```

Constructs Landmark from required parameters

#### `newLandmark'`

``` purescript
newLandmark' :: ({ "Type" :: Maybe (LandmarkType), "X" :: Maybe (Number), "Y" :: Maybe (Number) } -> { "Type" :: Maybe (LandmarkType), "X" :: Maybe (Number), "Y" :: Maybe (Number) }) -> Landmark
```

Constructs Landmark's fields from required parameters

#### `LandmarkType`

``` purescript
newtype LandmarkType
  = LandmarkType String
```

##### Instances
``` purescript
Newtype LandmarkType _
Generic LandmarkType _
Show LandmarkType
Decode LandmarkType
Encode LandmarkType
```

#### `Landmarks`

``` purescript
newtype Landmarks
  = Landmarks (Array Landmark)
```

##### Instances
``` purescript
Newtype Landmarks _
Generic Landmarks _
Show Landmarks
Decode Landmarks
Encode Landmarks
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException NoArguments
```

<p/>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `ListCollectionsRequest`

``` purescript
newtype ListCollectionsRequest
  = ListCollectionsRequest { "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype ListCollectionsRequest _
Generic ListCollectionsRequest _
Show ListCollectionsRequest
Decode ListCollectionsRequest
Encode ListCollectionsRequest
```

#### `newListCollectionsRequest`

``` purescript
newListCollectionsRequest :: ListCollectionsRequest
```

Constructs ListCollectionsRequest from required parameters

#### `newListCollectionsRequest'`

``` purescript
newListCollectionsRequest' :: ({ "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) } -> { "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) }) -> ListCollectionsRequest
```

Constructs ListCollectionsRequest's fields from required parameters

#### `ListCollectionsResponse`

``` purescript
newtype ListCollectionsResponse
  = ListCollectionsResponse { "CollectionIds" :: Maybe (CollectionIdList), "NextToken" :: Maybe (PaginationToken), "FaceModelVersions" :: Maybe (FaceModelVersionList) }
```

##### Instances
``` purescript
Newtype ListCollectionsResponse _
Generic ListCollectionsResponse _
Show ListCollectionsResponse
Decode ListCollectionsResponse
Encode ListCollectionsResponse
```

#### `newListCollectionsResponse`

``` purescript
newListCollectionsResponse :: ListCollectionsResponse
```

Constructs ListCollectionsResponse from required parameters

#### `newListCollectionsResponse'`

``` purescript
newListCollectionsResponse' :: ({ "CollectionIds" :: Maybe (CollectionIdList), "NextToken" :: Maybe (PaginationToken), "FaceModelVersions" :: Maybe (FaceModelVersionList) } -> { "CollectionIds" :: Maybe (CollectionIdList), "NextToken" :: Maybe (PaginationToken), "FaceModelVersions" :: Maybe (FaceModelVersionList) }) -> ListCollectionsResponse
```

Constructs ListCollectionsResponse's fields from required parameters

#### `ListFacesRequest`

``` purescript
newtype ListFacesRequest
  = ListFacesRequest { "CollectionId" :: CollectionId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) }
```

##### Instances
``` purescript
Newtype ListFacesRequest _
Generic ListFacesRequest _
Show ListFacesRequest
Decode ListFacesRequest
Encode ListFacesRequest
```

#### `newListFacesRequest`

``` purescript
newListFacesRequest :: CollectionId -> ListFacesRequest
```

Constructs ListFacesRequest from required parameters

#### `newListFacesRequest'`

``` purescript
newListFacesRequest' :: CollectionId -> ({ "CollectionId" :: CollectionId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) } -> { "CollectionId" :: CollectionId, "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (PageSize) }) -> ListFacesRequest
```

Constructs ListFacesRequest's fields from required parameters

#### `ListFacesResponse`

``` purescript
newtype ListFacesResponse
  = ListFacesResponse { "Faces" :: Maybe (FaceList), "NextToken" :: Maybe (String), "FaceModelVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype ListFacesResponse _
Generic ListFacesResponse _
Show ListFacesResponse
Decode ListFacesResponse
Encode ListFacesResponse
```

#### `newListFacesResponse`

``` purescript
newListFacesResponse :: ListFacesResponse
```

Constructs ListFacesResponse from required parameters

#### `newListFacesResponse'`

``` purescript
newListFacesResponse' :: ({ "Faces" :: Maybe (FaceList), "NextToken" :: Maybe (String), "FaceModelVersion" :: Maybe (String) } -> { "Faces" :: Maybe (FaceList), "NextToken" :: Maybe (String), "FaceModelVersion" :: Maybe (String) }) -> ListFacesResponse
```

Constructs ListFacesResponse's fields from required parameters

#### `ListStreamProcessorsRequest`

``` purescript
newtype ListStreamProcessorsRequest
  = ListStreamProcessorsRequest { "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListStreamProcessorsRequest _
Generic ListStreamProcessorsRequest _
Show ListStreamProcessorsRequest
Decode ListStreamProcessorsRequest
Encode ListStreamProcessorsRequest
```

#### `newListStreamProcessorsRequest`

``` purescript
newListStreamProcessorsRequest :: ListStreamProcessorsRequest
```

Constructs ListStreamProcessorsRequest from required parameters

#### `newListStreamProcessorsRequest'`

``` purescript
newListStreamProcessorsRequest' :: ({ "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (PaginationToken), "MaxResults" :: Maybe (MaxResults) }) -> ListStreamProcessorsRequest
```

Constructs ListStreamProcessorsRequest's fields from required parameters

#### `ListStreamProcessorsResponse`

``` purescript
newtype ListStreamProcessorsResponse
  = ListStreamProcessorsResponse { "NextToken" :: Maybe (PaginationToken), "StreamProcessors" :: Maybe (StreamProcessorList) }
```

##### Instances
``` purescript
Newtype ListStreamProcessorsResponse _
Generic ListStreamProcessorsResponse _
Show ListStreamProcessorsResponse
Decode ListStreamProcessorsResponse
Encode ListStreamProcessorsResponse
```

#### `newListStreamProcessorsResponse`

``` purescript
newListStreamProcessorsResponse :: ListStreamProcessorsResponse
```

Constructs ListStreamProcessorsResponse from required parameters

#### `newListStreamProcessorsResponse'`

``` purescript
newListStreamProcessorsResponse' :: ({ "NextToken" :: Maybe (PaginationToken), "StreamProcessors" :: Maybe (StreamProcessorList) } -> { "NextToken" :: Maybe (PaginationToken), "StreamProcessors" :: Maybe (StreamProcessorList) }) -> ListStreamProcessorsResponse
```

Constructs ListStreamProcessorsResponse's fields from required parameters

#### `MaxFaces`

``` purescript
newtype MaxFaces
  = MaxFaces Int
```

##### Instances
``` purescript
Newtype MaxFaces _
Generic MaxFaces _
Show MaxFaces
Decode MaxFaces
Encode MaxFaces
```

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `ModerationLabel`

``` purescript
newtype ModerationLabel
  = ModerationLabel { "Confidence" :: Maybe (Percent), "Name" :: Maybe (String), "ParentName" :: Maybe (String) }
```

<p>Provides information about a single type of moderated content found in an image or video. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see <a>moderation</a>.</p>

##### Instances
``` purescript
Newtype ModerationLabel _
Generic ModerationLabel _
Show ModerationLabel
Decode ModerationLabel
Encode ModerationLabel
```

#### `newModerationLabel`

``` purescript
newModerationLabel :: ModerationLabel
```

Constructs ModerationLabel from required parameters

#### `newModerationLabel'`

``` purescript
newModerationLabel' :: ({ "Confidence" :: Maybe (Percent), "Name" :: Maybe (String), "ParentName" :: Maybe (String) } -> { "Confidence" :: Maybe (Percent), "Name" :: Maybe (String), "ParentName" :: Maybe (String) }) -> ModerationLabel
```

Constructs ModerationLabel's fields from required parameters

#### `ModerationLabels`

``` purescript
newtype ModerationLabels
  = ModerationLabels (Array ModerationLabel)
```

##### Instances
``` purescript
Newtype ModerationLabels _
Generic ModerationLabels _
Show ModerationLabels
Decode ModerationLabels
Encode ModerationLabels
```

#### `MouthOpen`

``` purescript
newtype MouthOpen
  = MouthOpen { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype MouthOpen _
Generic MouthOpen _
Show MouthOpen
Decode MouthOpen
Encode MouthOpen
```

#### `newMouthOpen`

``` purescript
newMouthOpen :: MouthOpen
```

Constructs MouthOpen from required parameters

#### `newMouthOpen'`

``` purescript
newMouthOpen' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> MouthOpen
```

Constructs MouthOpen's fields from required parameters

#### `Mustache`

``` purescript
newtype Mustache
  = Mustache { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Mustache _
Generic Mustache _
Show Mustache
Decode Mustache
Encode Mustache
```

#### `newMustache`

``` purescript
newMustache :: Mustache
```

Constructs Mustache from required parameters

#### `newMustache'`

``` purescript
newMustache' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> Mustache
```

Constructs Mustache's fields from required parameters

#### `NotificationChannel`

``` purescript
newtype NotificationChannel
  = NotificationChannel { "SNSTopicArn" :: SNSTopicArn, "RoleArn" :: RoleArn }
```

<p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see <a>api-video</a>.</p>

##### Instances
``` purescript
Newtype NotificationChannel _
Generic NotificationChannel _
Show NotificationChannel
Decode NotificationChannel
Encode NotificationChannel
```

#### `newNotificationChannel`

``` purescript
newNotificationChannel :: RoleArn -> SNSTopicArn -> NotificationChannel
```

Constructs NotificationChannel from required parameters

#### `newNotificationChannel'`

``` purescript
newNotificationChannel' :: RoleArn -> SNSTopicArn -> ({ "SNSTopicArn" :: SNSTopicArn, "RoleArn" :: RoleArn } -> { "SNSTopicArn" :: SNSTopicArn, "RoleArn" :: RoleArn }) -> NotificationChannel
```

Constructs NotificationChannel's fields from required parameters

#### `OrientationCorrection`

``` purescript
newtype OrientationCorrection
  = OrientationCorrection String
```

##### Instances
``` purescript
Newtype OrientationCorrection _
Generic OrientationCorrection _
Show OrientationCorrection
Decode OrientationCorrection
Encode OrientationCorrection
```

#### `PageSize`

``` purescript
newtype PageSize
  = PageSize Int
```

##### Instances
``` purescript
Newtype PageSize _
Generic PageSize _
Show PageSize
Decode PageSize
Encode PageSize
```

#### `PaginationToken`

``` purescript
newtype PaginationToken
  = PaginationToken String
```

##### Instances
``` purescript
Newtype PaginationToken _
Generic PaginationToken _
Show PaginationToken
Decode PaginationToken
Encode PaginationToken
```

#### `Percent`

``` purescript
newtype Percent
  = Percent Number
```

##### Instances
``` purescript
Newtype Percent _
Generic Percent _
Show Percent
Decode Percent
Encode Percent
```

#### `PersonDetail`

``` purescript
newtype PersonDetail
  = PersonDetail { "Index" :: Maybe (PersonIndex), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) }
```

<p>Details about a person detected in a video analysis request.</p>

##### Instances
``` purescript
Newtype PersonDetail _
Generic PersonDetail _
Show PersonDetail
Decode PersonDetail
Encode PersonDetail
```

#### `newPersonDetail`

``` purescript
newPersonDetail :: PersonDetail
```

Constructs PersonDetail from required parameters

#### `newPersonDetail'`

``` purescript
newPersonDetail' :: ({ "Index" :: Maybe (PersonIndex), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) } -> { "Index" :: Maybe (PersonIndex), "BoundingBox" :: Maybe (BoundingBox), "Face" :: Maybe (FaceDetail) }) -> PersonDetail
```

Constructs PersonDetail's fields from required parameters

#### `PersonDetection`

``` purescript
newtype PersonDetection
  = PersonDetection { "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail) }
```

<p>Details and tracking information for a single time a person is tracked in a video. Amazon Rekognition operations that track persons return an array of <code>PersonDetection</code> objects with elements for each time a person is tracked in a video. For more information, see . </p>

##### Instances
``` purescript
Newtype PersonDetection _
Generic PersonDetection _
Show PersonDetection
Decode PersonDetection
Encode PersonDetection
```

#### `newPersonDetection`

``` purescript
newPersonDetection :: PersonDetection
```

Constructs PersonDetection from required parameters

#### `newPersonDetection'`

``` purescript
newPersonDetection' :: ({ "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail) } -> { "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail) }) -> PersonDetection
```

Constructs PersonDetection's fields from required parameters

#### `PersonDetections`

``` purescript
newtype PersonDetections
  = PersonDetections (Array PersonDetection)
```

##### Instances
``` purescript
Newtype PersonDetections _
Generic PersonDetections _
Show PersonDetections
Decode PersonDetections
Encode PersonDetections
```

#### `PersonIndex`

``` purescript
newtype PersonIndex
  = PersonIndex Number
```

##### Instances
``` purescript
Newtype PersonIndex _
Generic PersonIndex _
Show PersonIndex
Decode PersonIndex
Encode PersonIndex
```

#### `PersonMatch`

``` purescript
newtype PersonMatch
  = PersonMatch { "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail), "FaceMatches" :: Maybe (FaceMatchList) }
```

<p>Information about a person whose face matches a face(s) in a Amazon Rekognition collection. Includes information about the faces in the Amazon Rekognition collection (,information about the person (<a>PersonDetail</a>) and the timestamp for when the person was detected in a video. An array of <code>PersonMatch</code> objects is returned by . </p>

##### Instances
``` purescript
Newtype PersonMatch _
Generic PersonMatch _
Show PersonMatch
Decode PersonMatch
Encode PersonMatch
```

#### `newPersonMatch`

``` purescript
newPersonMatch :: PersonMatch
```

Constructs PersonMatch from required parameters

#### `newPersonMatch'`

``` purescript
newPersonMatch' :: ({ "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail), "FaceMatches" :: Maybe (FaceMatchList) } -> { "Timestamp" :: Maybe (Timestamp), "Person" :: Maybe (PersonDetail), "FaceMatches" :: Maybe (FaceMatchList) }) -> PersonMatch
```

Constructs PersonMatch's fields from required parameters

#### `PersonMatches`

``` purescript
newtype PersonMatches
  = PersonMatches (Array PersonMatch)
```

##### Instances
``` purescript
Newtype PersonMatches _
Generic PersonMatches _
Show PersonMatches
Decode PersonMatches
Encode PersonMatches
```

#### `PersonTrackingSortBy`

``` purescript
newtype PersonTrackingSortBy
  = PersonTrackingSortBy String
```

##### Instances
``` purescript
Newtype PersonTrackingSortBy _
Generic PersonTrackingSortBy _
Show PersonTrackingSortBy
Decode PersonTrackingSortBy
Encode PersonTrackingSortBy
```

#### `Point`

``` purescript
newtype Point
  = Point { "X" :: Maybe (Number), "Y" :: Maybe (Number) }
```

<p>The X and Y coordinates of a point on an image. The X and Y values returned are ratios of the overall image size. For example, if the input image is 700x200 and the operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p> <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned by . <code>Polygon</code> represents a fine-grained polygon around detected text. For more information, see . </p>

##### Instances
``` purescript
Newtype Point _
Generic Point _
Show Point
Decode Point
Encode Point
```

#### `newPoint`

``` purescript
newPoint :: Point
```

Constructs Point from required parameters

#### `newPoint'`

``` purescript
newPoint' :: ({ "X" :: Maybe (Number), "Y" :: Maybe (Number) } -> { "X" :: Maybe (Number), "Y" :: Maybe (Number) }) -> Point
```

Constructs Point's fields from required parameters

#### `Polygon`

``` purescript
newtype Polygon
  = Polygon (Array Point)
```

##### Instances
``` purescript
Newtype Polygon _
Generic Polygon _
Show Polygon
Decode Polygon
Encode Polygon
```

#### `Pose`

``` purescript
newtype Pose
  = Pose { "Roll" :: Maybe (Degree), "Yaw" :: Maybe (Degree), "Pitch" :: Maybe (Degree) }
```

<p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>

##### Instances
``` purescript
Newtype Pose _
Generic Pose _
Show Pose
Decode Pose
Encode Pose
```

#### `newPose`

``` purescript
newPose :: Pose
```

Constructs Pose from required parameters

#### `newPose'`

``` purescript
newPose' :: ({ "Roll" :: Maybe (Degree), "Yaw" :: Maybe (Degree), "Pitch" :: Maybe (Degree) } -> { "Roll" :: Maybe (Degree), "Yaw" :: Maybe (Degree), "Pitch" :: Maybe (Degree) }) -> Pose
```

Constructs Pose's fields from required parameters

#### `ProvisionedThroughputExceededException`

``` purescript
newtype ProvisionedThroughputExceededException
  = ProvisionedThroughputExceededException NoArguments
```

<p>The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.</p>

##### Instances
``` purescript
Newtype ProvisionedThroughputExceededException _
Generic ProvisionedThroughputExceededException _
Show ProvisionedThroughputExceededException
Decode ProvisionedThroughputExceededException
Encode ProvisionedThroughputExceededException
```

#### `RecognizeCelebritiesRequest`

``` purescript
newtype RecognizeCelebritiesRequest
  = RecognizeCelebritiesRequest { "Image" :: Image }
```

##### Instances
``` purescript
Newtype RecognizeCelebritiesRequest _
Generic RecognizeCelebritiesRequest _
Show RecognizeCelebritiesRequest
Decode RecognizeCelebritiesRequest
Encode RecognizeCelebritiesRequest
```

#### `newRecognizeCelebritiesRequest`

``` purescript
newRecognizeCelebritiesRequest :: Image -> RecognizeCelebritiesRequest
```

Constructs RecognizeCelebritiesRequest from required parameters

#### `newRecognizeCelebritiesRequest'`

``` purescript
newRecognizeCelebritiesRequest' :: Image -> ({ "Image" :: Image } -> { "Image" :: Image }) -> RecognizeCelebritiesRequest
```

Constructs RecognizeCelebritiesRequest's fields from required parameters

#### `RecognizeCelebritiesResponse`

``` purescript
newtype RecognizeCelebritiesResponse
  = RecognizeCelebritiesResponse { "CelebrityFaces" :: Maybe (CelebrityList), "UnrecognizedFaces" :: Maybe (ComparedFaceList), "OrientationCorrection" :: Maybe (OrientationCorrection) }
```

##### Instances
``` purescript
Newtype RecognizeCelebritiesResponse _
Generic RecognizeCelebritiesResponse _
Show RecognizeCelebritiesResponse
Decode RecognizeCelebritiesResponse
Encode RecognizeCelebritiesResponse
```

#### `newRecognizeCelebritiesResponse`

``` purescript
newRecognizeCelebritiesResponse :: RecognizeCelebritiesResponse
```

Constructs RecognizeCelebritiesResponse from required parameters

#### `newRecognizeCelebritiesResponse'`

``` purescript
newRecognizeCelebritiesResponse' :: ({ "CelebrityFaces" :: Maybe (CelebrityList), "UnrecognizedFaces" :: Maybe (ComparedFaceList), "OrientationCorrection" :: Maybe (OrientationCorrection) } -> { "CelebrityFaces" :: Maybe (CelebrityList), "UnrecognizedFaces" :: Maybe (ComparedFaceList), "OrientationCorrection" :: Maybe (OrientationCorrection) }) -> RecognizeCelebritiesResponse
```

Constructs RecognizeCelebritiesResponse's fields from required parameters

#### `RekognitionUniqueId`

``` purescript
newtype RekognitionUniqueId
  = RekognitionUniqueId String
```

##### Instances
``` purescript
Newtype RekognitionUniqueId _
Generic RekognitionUniqueId _
Show RekognitionUniqueId
Decode RekognitionUniqueId
Encode RekognitionUniqueId
```

#### `ResourceAlreadyExistsException`

``` purescript
newtype ResourceAlreadyExistsException
  = ResourceAlreadyExistsException NoArguments
```

<p>A collection with the specified ID already exists.</p>

##### Instances
``` purescript
Newtype ResourceAlreadyExistsException _
Generic ResourceAlreadyExistsException _
Show ResourceAlreadyExistsException
Decode ResourceAlreadyExistsException
Encode ResourceAlreadyExistsException
```

#### `ResourceInUseException`

``` purescript
newtype ResourceInUseException
  = ResourceInUseException NoArguments
```

<p/>

##### Instances
``` purescript
Newtype ResourceInUseException _
Generic ResourceInUseException _
Show ResourceInUseException
Decode ResourceInUseException
Encode ResourceInUseException
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>The collection specified in the request cannot be found.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `RoleArn`

``` purescript
newtype RoleArn
  = RoleArn String
```

##### Instances
``` purescript
Newtype RoleArn _
Generic RoleArn _
Show RoleArn
Decode RoleArn
Encode RoleArn
```

#### `S3Bucket`

``` purescript
newtype S3Bucket
  = S3Bucket String
```

##### Instances
``` purescript
Newtype S3Bucket _
Generic S3Bucket _
Show S3Bucket
Decode S3Bucket
Encode S3Bucket
```

#### `S3Object`

``` purescript
newtype S3Object
  = S3Object { "Bucket" :: Maybe (S3Bucket), "Name" :: Maybe (S3ObjectName), "Version" :: Maybe (S3ObjectVersion) }
```

<p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>

##### Instances
``` purescript
Newtype S3Object _
Generic S3Object _
Show S3Object
Decode S3Object
Encode S3Object
```

#### `newS3Object`

``` purescript
newS3Object :: S3Object
```

Constructs S3Object from required parameters

#### `newS3Object'`

``` purescript
newS3Object' :: ({ "Bucket" :: Maybe (S3Bucket), "Name" :: Maybe (S3ObjectName), "Version" :: Maybe (S3ObjectVersion) } -> { "Bucket" :: Maybe (S3Bucket), "Name" :: Maybe (S3ObjectName), "Version" :: Maybe (S3ObjectVersion) }) -> S3Object
```

Constructs S3Object's fields from required parameters

#### `S3ObjectName`

``` purescript
newtype S3ObjectName
  = S3ObjectName String
```

##### Instances
``` purescript
Newtype S3ObjectName _
Generic S3ObjectName _
Show S3ObjectName
Decode S3ObjectName
Encode S3ObjectName
```

#### `S3ObjectVersion`

``` purescript
newtype S3ObjectVersion
  = S3ObjectVersion String
```

##### Instances
``` purescript
Newtype S3ObjectVersion _
Generic S3ObjectVersion _
Show S3ObjectVersion
Decode S3ObjectVersion
Encode S3ObjectVersion
```

#### `SNSTopicArn`

``` purescript
newtype SNSTopicArn
  = SNSTopicArn String
```

##### Instances
``` purescript
Newtype SNSTopicArn _
Generic SNSTopicArn _
Show SNSTopicArn
Decode SNSTopicArn
Encode SNSTopicArn
```

#### `SearchFacesByImageRequest`

``` purescript
newtype SearchFacesByImageRequest
  = SearchFacesByImageRequest { "CollectionId" :: CollectionId, "Image" :: Image, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) }
```

##### Instances
``` purescript
Newtype SearchFacesByImageRequest _
Generic SearchFacesByImageRequest _
Show SearchFacesByImageRequest
Decode SearchFacesByImageRequest
Encode SearchFacesByImageRequest
```

#### `newSearchFacesByImageRequest`

``` purescript
newSearchFacesByImageRequest :: CollectionId -> Image -> SearchFacesByImageRequest
```

Constructs SearchFacesByImageRequest from required parameters

#### `newSearchFacesByImageRequest'`

``` purescript
newSearchFacesByImageRequest' :: CollectionId -> Image -> ({ "CollectionId" :: CollectionId, "Image" :: Image, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) } -> { "CollectionId" :: CollectionId, "Image" :: Image, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) }) -> SearchFacesByImageRequest
```

Constructs SearchFacesByImageRequest's fields from required parameters

#### `SearchFacesByImageResponse`

``` purescript
newtype SearchFacesByImageResponse
  = SearchFacesByImageResponse { "SearchedFaceBoundingBox" :: Maybe (BoundingBox), "SearchedFaceConfidence" :: Maybe (Percent), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype SearchFacesByImageResponse _
Generic SearchFacesByImageResponse _
Show SearchFacesByImageResponse
Decode SearchFacesByImageResponse
Encode SearchFacesByImageResponse
```

#### `newSearchFacesByImageResponse`

``` purescript
newSearchFacesByImageResponse :: SearchFacesByImageResponse
```

Constructs SearchFacesByImageResponse from required parameters

#### `newSearchFacesByImageResponse'`

``` purescript
newSearchFacesByImageResponse' :: ({ "SearchedFaceBoundingBox" :: Maybe (BoundingBox), "SearchedFaceConfidence" :: Maybe (Percent), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) } -> { "SearchedFaceBoundingBox" :: Maybe (BoundingBox), "SearchedFaceConfidence" :: Maybe (Percent), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) }) -> SearchFacesByImageResponse
```

Constructs SearchFacesByImageResponse's fields from required parameters

#### `SearchFacesRequest`

``` purescript
newtype SearchFacesRequest
  = SearchFacesRequest { "CollectionId" :: CollectionId, "FaceId" :: FaceId, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) }
```

##### Instances
``` purescript
Newtype SearchFacesRequest _
Generic SearchFacesRequest _
Show SearchFacesRequest
Decode SearchFacesRequest
Encode SearchFacesRequest
```

#### `newSearchFacesRequest`

``` purescript
newSearchFacesRequest :: CollectionId -> FaceId -> SearchFacesRequest
```

Constructs SearchFacesRequest from required parameters

#### `newSearchFacesRequest'`

``` purescript
newSearchFacesRequest' :: CollectionId -> FaceId -> ({ "CollectionId" :: CollectionId, "FaceId" :: FaceId, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) } -> { "CollectionId" :: CollectionId, "FaceId" :: FaceId, "MaxFaces" :: Maybe (MaxFaces), "FaceMatchThreshold" :: Maybe (Percent) }) -> SearchFacesRequest
```

Constructs SearchFacesRequest's fields from required parameters

#### `SearchFacesResponse`

``` purescript
newtype SearchFacesResponse
  = SearchFacesResponse { "SearchedFaceId" :: Maybe (FaceId), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) }
```

##### Instances
``` purescript
Newtype SearchFacesResponse _
Generic SearchFacesResponse _
Show SearchFacesResponse
Decode SearchFacesResponse
Encode SearchFacesResponse
```

#### `newSearchFacesResponse`

``` purescript
newSearchFacesResponse :: SearchFacesResponse
```

Constructs SearchFacesResponse from required parameters

#### `newSearchFacesResponse'`

``` purescript
newSearchFacesResponse' :: ({ "SearchedFaceId" :: Maybe (FaceId), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) } -> { "SearchedFaceId" :: Maybe (FaceId), "FaceMatches" :: Maybe (FaceMatchList), "FaceModelVersion" :: Maybe (String) }) -> SearchFacesResponse
```

Constructs SearchFacesResponse's fields from required parameters

#### `Smile`

``` purescript
newtype Smile
  = Smile { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Smile _
Generic Smile _
Show Smile
Decode Smile
Encode Smile
```

#### `newSmile`

``` purescript
newSmile :: Smile
```

Constructs Smile from required parameters

#### `newSmile'`

``` purescript
newSmile' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> Smile
```

Constructs Smile's fields from required parameters

#### `StartCelebrityRecognitionRequest`

``` purescript
newtype StartCelebrityRecognitionRequest
  = StartCelebrityRecognitionRequest { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartCelebrityRecognitionRequest _
Generic StartCelebrityRecognitionRequest _
Show StartCelebrityRecognitionRequest
Decode StartCelebrityRecognitionRequest
Encode StartCelebrityRecognitionRequest
```

#### `newStartCelebrityRecognitionRequest`

``` purescript
newStartCelebrityRecognitionRequest :: Video -> StartCelebrityRecognitionRequest
```

Constructs StartCelebrityRecognitionRequest from required parameters

#### `newStartCelebrityRecognitionRequest'`

``` purescript
newStartCelebrityRecognitionRequest' :: Video -> ({ "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }) -> StartCelebrityRecognitionRequest
```

Constructs StartCelebrityRecognitionRequest's fields from required parameters

#### `StartCelebrityRecognitionResponse`

``` purescript
newtype StartCelebrityRecognitionResponse
  = StartCelebrityRecognitionResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartCelebrityRecognitionResponse _
Generic StartCelebrityRecognitionResponse _
Show StartCelebrityRecognitionResponse
Decode StartCelebrityRecognitionResponse
Encode StartCelebrityRecognitionResponse
```

#### `newStartCelebrityRecognitionResponse`

``` purescript
newStartCelebrityRecognitionResponse :: StartCelebrityRecognitionResponse
```

Constructs StartCelebrityRecognitionResponse from required parameters

#### `newStartCelebrityRecognitionResponse'`

``` purescript
newStartCelebrityRecognitionResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartCelebrityRecognitionResponse
```

Constructs StartCelebrityRecognitionResponse's fields from required parameters

#### `StartContentModerationRequest`

``` purescript
newtype StartContentModerationRequest
  = StartContentModerationRequest { "Video" :: Video, "MinConfidence" :: Maybe (Percent), "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartContentModerationRequest _
Generic StartContentModerationRequest _
Show StartContentModerationRequest
Decode StartContentModerationRequest
Encode StartContentModerationRequest
```

#### `newStartContentModerationRequest`

``` purescript
newStartContentModerationRequest :: Video -> StartContentModerationRequest
```

Constructs StartContentModerationRequest from required parameters

#### `newStartContentModerationRequest'`

``` purescript
newStartContentModerationRequest' :: Video -> ({ "Video" :: Video, "MinConfidence" :: Maybe (Percent), "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "MinConfidence" :: Maybe (Percent), "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }) -> StartContentModerationRequest
```

Constructs StartContentModerationRequest's fields from required parameters

#### `StartContentModerationResponse`

``` purescript
newtype StartContentModerationResponse
  = StartContentModerationResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartContentModerationResponse _
Generic StartContentModerationResponse _
Show StartContentModerationResponse
Decode StartContentModerationResponse
Encode StartContentModerationResponse
```

#### `newStartContentModerationResponse`

``` purescript
newStartContentModerationResponse :: StartContentModerationResponse
```

Constructs StartContentModerationResponse from required parameters

#### `newStartContentModerationResponse'`

``` purescript
newStartContentModerationResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartContentModerationResponse
```

Constructs StartContentModerationResponse's fields from required parameters

#### `StartFaceDetectionRequest`

``` purescript
newtype StartFaceDetectionRequest
  = StartFaceDetectionRequest { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "FaceAttributes" :: Maybe (FaceAttributes), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartFaceDetectionRequest _
Generic StartFaceDetectionRequest _
Show StartFaceDetectionRequest
Decode StartFaceDetectionRequest
Encode StartFaceDetectionRequest
```

#### `newStartFaceDetectionRequest`

``` purescript
newStartFaceDetectionRequest :: Video -> StartFaceDetectionRequest
```

Constructs StartFaceDetectionRequest from required parameters

#### `newStartFaceDetectionRequest'`

``` purescript
newStartFaceDetectionRequest' :: Video -> ({ "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "FaceAttributes" :: Maybe (FaceAttributes), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "FaceAttributes" :: Maybe (FaceAttributes), "JobTag" :: Maybe (JobTag) }) -> StartFaceDetectionRequest
```

Constructs StartFaceDetectionRequest's fields from required parameters

#### `StartFaceDetectionResponse`

``` purescript
newtype StartFaceDetectionResponse
  = StartFaceDetectionResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartFaceDetectionResponse _
Generic StartFaceDetectionResponse _
Show StartFaceDetectionResponse
Decode StartFaceDetectionResponse
Encode StartFaceDetectionResponse
```

#### `newStartFaceDetectionResponse`

``` purescript
newStartFaceDetectionResponse :: StartFaceDetectionResponse
```

Constructs StartFaceDetectionResponse from required parameters

#### `newStartFaceDetectionResponse'`

``` purescript
newStartFaceDetectionResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartFaceDetectionResponse
```

Constructs StartFaceDetectionResponse's fields from required parameters

#### `StartFaceSearchRequest`

``` purescript
newtype StartFaceSearchRequest
  = StartFaceSearchRequest { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "FaceMatchThreshold" :: Maybe (Percent), "CollectionId" :: CollectionId, "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartFaceSearchRequest _
Generic StartFaceSearchRequest _
Show StartFaceSearchRequest
Decode StartFaceSearchRequest
Encode StartFaceSearchRequest
```

#### `newStartFaceSearchRequest`

``` purescript
newStartFaceSearchRequest :: CollectionId -> Video -> StartFaceSearchRequest
```

Constructs StartFaceSearchRequest from required parameters

#### `newStartFaceSearchRequest'`

``` purescript
newStartFaceSearchRequest' :: CollectionId -> Video -> ({ "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "FaceMatchThreshold" :: Maybe (Percent), "CollectionId" :: CollectionId, "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "FaceMatchThreshold" :: Maybe (Percent), "CollectionId" :: CollectionId, "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }) -> StartFaceSearchRequest
```

Constructs StartFaceSearchRequest's fields from required parameters

#### `StartFaceSearchResponse`

``` purescript
newtype StartFaceSearchResponse
  = StartFaceSearchResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartFaceSearchResponse _
Generic StartFaceSearchResponse _
Show StartFaceSearchResponse
Decode StartFaceSearchResponse
Encode StartFaceSearchResponse
```

#### `newStartFaceSearchResponse`

``` purescript
newStartFaceSearchResponse :: StartFaceSearchResponse
```

Constructs StartFaceSearchResponse from required parameters

#### `newStartFaceSearchResponse'`

``` purescript
newStartFaceSearchResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartFaceSearchResponse
```

Constructs StartFaceSearchResponse's fields from required parameters

#### `StartLabelDetectionRequest`

``` purescript
newtype StartLabelDetectionRequest
  = StartLabelDetectionRequest { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "MinConfidence" :: Maybe (Percent), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartLabelDetectionRequest _
Generic StartLabelDetectionRequest _
Show StartLabelDetectionRequest
Decode StartLabelDetectionRequest
Encode StartLabelDetectionRequest
```

#### `newStartLabelDetectionRequest`

``` purescript
newStartLabelDetectionRequest :: Video -> StartLabelDetectionRequest
```

Constructs StartLabelDetectionRequest from required parameters

#### `newStartLabelDetectionRequest'`

``` purescript
newStartLabelDetectionRequest' :: Video -> ({ "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "MinConfidence" :: Maybe (Percent), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "MinConfidence" :: Maybe (Percent), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }) -> StartLabelDetectionRequest
```

Constructs StartLabelDetectionRequest's fields from required parameters

#### `StartLabelDetectionResponse`

``` purescript
newtype StartLabelDetectionResponse
  = StartLabelDetectionResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartLabelDetectionResponse _
Generic StartLabelDetectionResponse _
Show StartLabelDetectionResponse
Decode StartLabelDetectionResponse
Encode StartLabelDetectionResponse
```

#### `newStartLabelDetectionResponse`

``` purescript
newStartLabelDetectionResponse :: StartLabelDetectionResponse
```

Constructs StartLabelDetectionResponse from required parameters

#### `newStartLabelDetectionResponse'`

``` purescript
newStartLabelDetectionResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartLabelDetectionResponse
```

Constructs StartLabelDetectionResponse's fields from required parameters

#### `StartPersonTrackingRequest`

``` purescript
newtype StartPersonTrackingRequest
  = StartPersonTrackingRequest { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }
```

##### Instances
``` purescript
Newtype StartPersonTrackingRequest _
Generic StartPersonTrackingRequest _
Show StartPersonTrackingRequest
Decode StartPersonTrackingRequest
Encode StartPersonTrackingRequest
```

#### `newStartPersonTrackingRequest`

``` purescript
newStartPersonTrackingRequest :: Video -> StartPersonTrackingRequest
```

Constructs StartPersonTrackingRequest from required parameters

#### `newStartPersonTrackingRequest'`

``` purescript
newStartPersonTrackingRequest' :: Video -> ({ "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) } -> { "Video" :: Video, "ClientRequestToken" :: Maybe (ClientRequestToken), "NotificationChannel" :: Maybe (NotificationChannel), "JobTag" :: Maybe (JobTag) }) -> StartPersonTrackingRequest
```

Constructs StartPersonTrackingRequest's fields from required parameters

#### `StartPersonTrackingResponse`

``` purescript
newtype StartPersonTrackingResponse
  = StartPersonTrackingResponse { "JobId" :: Maybe (JobId) }
```

##### Instances
``` purescript
Newtype StartPersonTrackingResponse _
Generic StartPersonTrackingResponse _
Show StartPersonTrackingResponse
Decode StartPersonTrackingResponse
Encode StartPersonTrackingResponse
```

#### `newStartPersonTrackingResponse`

``` purescript
newStartPersonTrackingResponse :: StartPersonTrackingResponse
```

Constructs StartPersonTrackingResponse from required parameters

#### `newStartPersonTrackingResponse'`

``` purescript
newStartPersonTrackingResponse' :: ({ "JobId" :: Maybe (JobId) } -> { "JobId" :: Maybe (JobId) }) -> StartPersonTrackingResponse
```

Constructs StartPersonTrackingResponse's fields from required parameters

#### `StartStreamProcessorRequest`

``` purescript
newtype StartStreamProcessorRequest
  = StartStreamProcessorRequest { "Name" :: StreamProcessorName }
```

##### Instances
``` purescript
Newtype StartStreamProcessorRequest _
Generic StartStreamProcessorRequest _
Show StartStreamProcessorRequest
Decode StartStreamProcessorRequest
Encode StartStreamProcessorRequest
```

#### `newStartStreamProcessorRequest`

``` purescript
newStartStreamProcessorRequest :: StreamProcessorName -> StartStreamProcessorRequest
```

Constructs StartStreamProcessorRequest from required parameters

#### `newStartStreamProcessorRequest'`

``` purescript
newStartStreamProcessorRequest' :: StreamProcessorName -> ({ "Name" :: StreamProcessorName } -> { "Name" :: StreamProcessorName }) -> StartStreamProcessorRequest
```

Constructs StartStreamProcessorRequest's fields from required parameters

#### `StartStreamProcessorResponse`

``` purescript
newtype StartStreamProcessorResponse
  = StartStreamProcessorResponse NoArguments
```

##### Instances
``` purescript
Newtype StartStreamProcessorResponse _
Generic StartStreamProcessorResponse _
Show StartStreamProcessorResponse
Decode StartStreamProcessorResponse
Encode StartStreamProcessorResponse
```

#### `StatusMessage`

``` purescript
newtype StatusMessage
  = StatusMessage String
```

##### Instances
``` purescript
Newtype StatusMessage _
Generic StatusMessage _
Show StatusMessage
Decode StatusMessage
Encode StatusMessage
```

#### `StopStreamProcessorRequest`

``` purescript
newtype StopStreamProcessorRequest
  = StopStreamProcessorRequest { "Name" :: StreamProcessorName }
```

##### Instances
``` purescript
Newtype StopStreamProcessorRequest _
Generic StopStreamProcessorRequest _
Show StopStreamProcessorRequest
Decode StopStreamProcessorRequest
Encode StopStreamProcessorRequest
```

#### `newStopStreamProcessorRequest`

``` purescript
newStopStreamProcessorRequest :: StreamProcessorName -> StopStreamProcessorRequest
```

Constructs StopStreamProcessorRequest from required parameters

#### `newStopStreamProcessorRequest'`

``` purescript
newStopStreamProcessorRequest' :: StreamProcessorName -> ({ "Name" :: StreamProcessorName } -> { "Name" :: StreamProcessorName }) -> StopStreamProcessorRequest
```

Constructs StopStreamProcessorRequest's fields from required parameters

#### `StopStreamProcessorResponse`

``` purescript
newtype StopStreamProcessorResponse
  = StopStreamProcessorResponse NoArguments
```

##### Instances
``` purescript
Newtype StopStreamProcessorResponse _
Generic StopStreamProcessorResponse _
Show StopStreamProcessorResponse
Decode StopStreamProcessorResponse
Encode StopStreamProcessorResponse
```

#### `StreamProcessor`

``` purescript
newtype StreamProcessor
  = StreamProcessor { "Name" :: Maybe (StreamProcessorName), "Status" :: Maybe (StreamProcessorStatus) }
```

<p>An object that recognizes faces in a streaming video. An Amazon Rekognition stream processor is created by a call to . The request parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts. </p>

##### Instances
``` purescript
Newtype StreamProcessor _
Generic StreamProcessor _
Show StreamProcessor
Decode StreamProcessor
Encode StreamProcessor
```

#### `newStreamProcessor`

``` purescript
newStreamProcessor :: StreamProcessor
```

Constructs StreamProcessor from required parameters

#### `newStreamProcessor'`

``` purescript
newStreamProcessor' :: ({ "Name" :: Maybe (StreamProcessorName), "Status" :: Maybe (StreamProcessorStatus) } -> { "Name" :: Maybe (StreamProcessorName), "Status" :: Maybe (StreamProcessorStatus) }) -> StreamProcessor
```

Constructs StreamProcessor's fields from required parameters

#### `StreamProcessorArn`

``` purescript
newtype StreamProcessorArn
  = StreamProcessorArn String
```

##### Instances
``` purescript
Newtype StreamProcessorArn _
Generic StreamProcessorArn _
Show StreamProcessorArn
Decode StreamProcessorArn
Encode StreamProcessorArn
```

#### `StreamProcessorInput`

``` purescript
newtype StreamProcessorInput
  = StreamProcessorInput { "KinesisVideoStream" :: Maybe (KinesisVideoStream) }
```

<p>Information about the source streaming video. </p>

##### Instances
``` purescript
Newtype StreamProcessorInput _
Generic StreamProcessorInput _
Show StreamProcessorInput
Decode StreamProcessorInput
Encode StreamProcessorInput
```

#### `newStreamProcessorInput`

``` purescript
newStreamProcessorInput :: StreamProcessorInput
```

Constructs StreamProcessorInput from required parameters

#### `newStreamProcessorInput'`

``` purescript
newStreamProcessorInput' :: ({ "KinesisVideoStream" :: Maybe (KinesisVideoStream) } -> { "KinesisVideoStream" :: Maybe (KinesisVideoStream) }) -> StreamProcessorInput
```

Constructs StreamProcessorInput's fields from required parameters

#### `StreamProcessorList`

``` purescript
newtype StreamProcessorList
  = StreamProcessorList (Array StreamProcessor)
```

##### Instances
``` purescript
Newtype StreamProcessorList _
Generic StreamProcessorList _
Show StreamProcessorList
Decode StreamProcessorList
Encode StreamProcessorList
```

#### `StreamProcessorName`

``` purescript
newtype StreamProcessorName
  = StreamProcessorName String
```

##### Instances
``` purescript
Newtype StreamProcessorName _
Generic StreamProcessorName _
Show StreamProcessorName
Decode StreamProcessorName
Encode StreamProcessorName
```

#### `StreamProcessorOutput`

``` purescript
newtype StreamProcessorOutput
  = StreamProcessorOutput { "KinesisDataStream" :: Maybe (KinesisDataStream) }
```

<p>Information about the Amazon Kinesis Data Streams stream to which a Rekognition Video stream processor streams the results of a video analysis. For more information, see .</p>

##### Instances
``` purescript
Newtype StreamProcessorOutput _
Generic StreamProcessorOutput _
Show StreamProcessorOutput
Decode StreamProcessorOutput
Encode StreamProcessorOutput
```

#### `newStreamProcessorOutput`

``` purescript
newStreamProcessorOutput :: StreamProcessorOutput
```

Constructs StreamProcessorOutput from required parameters

#### `newStreamProcessorOutput'`

``` purescript
newStreamProcessorOutput' :: ({ "KinesisDataStream" :: Maybe (KinesisDataStream) } -> { "KinesisDataStream" :: Maybe (KinesisDataStream) }) -> StreamProcessorOutput
```

Constructs StreamProcessorOutput's fields from required parameters

#### `StreamProcessorSettings`

``` purescript
newtype StreamProcessorSettings
  = StreamProcessorSettings { "FaceSearch" :: Maybe (FaceSearchSettings) }
```

<p>Input parameters used to recognize faces in a streaming video analyzed by a Amazon Rekognition stream processor.</p>

##### Instances
``` purescript
Newtype StreamProcessorSettings _
Generic StreamProcessorSettings _
Show StreamProcessorSettings
Decode StreamProcessorSettings
Encode StreamProcessorSettings
```

#### `newStreamProcessorSettings`

``` purescript
newStreamProcessorSettings :: StreamProcessorSettings
```

Constructs StreamProcessorSettings from required parameters

#### `newStreamProcessorSettings'`

``` purescript
newStreamProcessorSettings' :: ({ "FaceSearch" :: Maybe (FaceSearchSettings) } -> { "FaceSearch" :: Maybe (FaceSearchSettings) }) -> StreamProcessorSettings
```

Constructs StreamProcessorSettings's fields from required parameters

#### `StreamProcessorStatus`

``` purescript
newtype StreamProcessorStatus
  = StreamProcessorStatus String
```

##### Instances
``` purescript
Newtype StreamProcessorStatus _
Generic StreamProcessorStatus _
Show StreamProcessorStatus
Decode StreamProcessorStatus
Encode StreamProcessorStatus
```

#### `Sunglasses`

``` purescript
newtype Sunglasses
  = Sunglasses { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }
```

<p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>

##### Instances
``` purescript
Newtype Sunglasses _
Generic Sunglasses _
Show Sunglasses
Decode Sunglasses
Encode Sunglasses
```

#### `newSunglasses`

``` purescript
newSunglasses :: Sunglasses
```

Constructs Sunglasses from required parameters

#### `newSunglasses'`

``` purescript
newSunglasses' :: ({ "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) } -> { "Value" :: Maybe (Boolean), "Confidence" :: Maybe (Percent) }) -> Sunglasses
```

Constructs Sunglasses's fields from required parameters

#### `TextDetection`

``` purescript
newtype TextDetection
  = TextDetection { "DetectedText" :: Maybe (String), "Type" :: Maybe (TextTypes), "Id" :: Maybe (UInteger), "ParentId" :: Maybe (UInteger), "Confidence" :: Maybe (Percent), "Geometry" :: Maybe (Geometry) }
```

<p>Information about a word or line of text detected by .</p> <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the image. </p> <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which the word appears. The word <code>Id</code> is also an index for the word within a line of words. </p> <p>For more information, see <a>text-detection</a>.</p>

##### Instances
``` purescript
Newtype TextDetection _
Generic TextDetection _
Show TextDetection
Decode TextDetection
Encode TextDetection
```

#### `newTextDetection`

``` purescript
newTextDetection :: TextDetection
```

Constructs TextDetection from required parameters

#### `newTextDetection'`

``` purescript
newTextDetection' :: ({ "DetectedText" :: Maybe (String), "Type" :: Maybe (TextTypes), "Id" :: Maybe (UInteger), "ParentId" :: Maybe (UInteger), "Confidence" :: Maybe (Percent), "Geometry" :: Maybe (Geometry) } -> { "DetectedText" :: Maybe (String), "Type" :: Maybe (TextTypes), "Id" :: Maybe (UInteger), "ParentId" :: Maybe (UInteger), "Confidence" :: Maybe (Percent), "Geometry" :: Maybe (Geometry) }) -> TextDetection
```

Constructs TextDetection's fields from required parameters

#### `TextDetectionList`

``` purescript
newtype TextDetectionList
  = TextDetectionList (Array TextDetection)
```

##### Instances
``` purescript
Newtype TextDetectionList _
Generic TextDetectionList _
Show TextDetectionList
Decode TextDetectionList
Encode TextDetectionList
```

#### `TextTypes`

``` purescript
newtype TextTypes
  = TextTypes String
```

##### Instances
``` purescript
Newtype TextTypes _
Generic TextTypes _
Show TextTypes
Decode TextTypes
Encode TextTypes
```

#### `ThrottlingException`

``` purescript
newtype ThrottlingException
  = ThrottlingException NoArguments
```

<p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>

##### Instances
``` purescript
Newtype ThrottlingException _
Generic ThrottlingException _
Show ThrottlingException
Decode ThrottlingException
Encode ThrottlingException
```

#### `UInteger`

``` purescript
newtype UInteger
  = UInteger Int
```

##### Instances
``` purescript
Newtype UInteger _
Generic UInteger _
Show UInteger
Decode UInteger
Encode UInteger
```

#### `ULong`

``` purescript
newtype ULong
  = ULong Number
```

##### Instances
``` purescript
Newtype ULong _
Generic ULong _
Show ULong
Decode ULong
Encode ULong
```

#### `Url`

``` purescript
newtype Url
  = Url String
```

##### Instances
``` purescript
Newtype Url _
Generic Url _
Show Url
Decode Url
Encode Url
```

#### `Urls`

``` purescript
newtype Urls
  = Urls (Array Url)
```

##### Instances
``` purescript
Newtype Urls _
Generic Urls _
Show Urls
Decode Urls
Encode Urls
```

#### `Video`

``` purescript
newtype Video
  = Video { "S3Object" :: Maybe (S3Object) }
```

<p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as use <code>Video</code> to specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>

##### Instances
``` purescript
Newtype Video _
Generic Video _
Show Video
Decode Video
Encode Video
```

#### `newVideo`

``` purescript
newVideo :: Video
```

Constructs Video from required parameters

#### `newVideo'`

``` purescript
newVideo' :: ({ "S3Object" :: Maybe (S3Object) } -> { "S3Object" :: Maybe (S3Object) }) -> Video
```

Constructs Video's fields from required parameters

#### `VideoJobStatus`

``` purescript
newtype VideoJobStatus
  = VideoJobStatus String
```

##### Instances
``` purescript
Newtype VideoJobStatus _
Generic VideoJobStatus _
Show VideoJobStatus
Decode VideoJobStatus
Encode VideoJobStatus
```

#### `VideoMetadata`

``` purescript
newtype VideoMetadata
  = VideoMetadata { "Codec" :: Maybe (String), "DurationMillis" :: Maybe (ULong), "Format" :: Maybe (String), "FrameRate" :: Maybe (Number), "FrameHeight" :: Maybe (ULong), "FrameWidth" :: Maybe (ULong) }
```

<p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>

##### Instances
``` purescript
Newtype VideoMetadata _
Generic VideoMetadata _
Show VideoMetadata
Decode VideoMetadata
Encode VideoMetadata
```

#### `newVideoMetadata`

``` purescript
newVideoMetadata :: VideoMetadata
```

Constructs VideoMetadata from required parameters

#### `newVideoMetadata'`

``` purescript
newVideoMetadata' :: ({ "Codec" :: Maybe (String), "DurationMillis" :: Maybe (ULong), "Format" :: Maybe (String), "FrameRate" :: Maybe (Number), "FrameHeight" :: Maybe (ULong), "FrameWidth" :: Maybe (ULong) } -> { "Codec" :: Maybe (String), "DurationMillis" :: Maybe (ULong), "Format" :: Maybe (String), "FrameRate" :: Maybe (Number), "FrameHeight" :: Maybe (ULong), "FrameWidth" :: Maybe (ULong) }) -> VideoMetadata
```

Constructs VideoMetadata's fields from required parameters

#### `VideoTooLargeException`

``` purescript
newtype VideoTooLargeException
  = VideoTooLargeException NoArguments
```

<p>The file size or duration of the supplied media is too large. The maximum file size is 8GB. The maximum duration is 2 hours. </p>

##### Instances
``` purescript
Newtype VideoTooLargeException _
Generic VideoTooLargeException _
Show VideoTooLargeException
Decode VideoTooLargeException
Encode VideoTooLargeException
```


