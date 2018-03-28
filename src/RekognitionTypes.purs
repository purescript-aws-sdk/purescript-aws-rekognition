
module AWS.Rekognition.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>You are not authorized to perform the action.</p>
newtype AccessDeniedException = AccessDeniedException Types.NoArguments
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where decode = genericDecode options
instance encodeAccessDeniedException :: Encode AccessDeniedException where encode = genericEncode options



-- | <p>Structure containing the estimated age range, in years, for a face.</p> <p>Rekognition estimates an age-range for faces detected in the input image. Estimated age ranges can overlap; a face of a 5 year old may have an estimated range of 4-6 whilst the face of a 6 year old may have an estimated range of 4-8.</p>
newtype AgeRange = AgeRange 
  { "Low" :: NullOrUndefined (UInteger)
  , "High" :: NullOrUndefined (UInteger)
  }
derive instance newtypeAgeRange :: Newtype AgeRange _
derive instance repGenericAgeRange :: Generic AgeRange _
instance showAgeRange :: Show AgeRange where show = genericShow
instance decodeAgeRange :: Decode AgeRange where decode = genericDecode options
instance encodeAgeRange :: Encode AgeRange where encode = genericEncode options

-- | Constructs AgeRange from required parameters
newAgeRange :: AgeRange
newAgeRange  = AgeRange { "High": (NullOrUndefined Nothing), "Low": (NullOrUndefined Nothing) }

-- | Constructs AgeRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAgeRange' :: ( { "Low" :: NullOrUndefined (UInteger) , "High" :: NullOrUndefined (UInteger) } -> {"Low" :: NullOrUndefined (UInteger) , "High" :: NullOrUndefined (UInteger) } ) -> AgeRange
newAgeRange'  customize = (AgeRange <<< customize) { "High": (NullOrUndefined Nothing), "Low": (NullOrUndefined Nothing) }



newtype Attribute = Attribute String
derive instance newtypeAttribute :: Newtype Attribute _
derive instance repGenericAttribute :: Generic Attribute _
instance showAttribute :: Show Attribute where show = genericShow
instance decodeAttribute :: Decode Attribute where decode = genericDecode options
instance encodeAttribute :: Encode Attribute where encode = genericEncode options



newtype Attributes = Attributes (Array Attribute)
derive instance newtypeAttributes :: Newtype Attributes _
derive instance repGenericAttributes :: Generic Attributes _
instance showAttributes :: Show Attributes where show = genericShow
instance decodeAttributes :: Decode Attributes where decode = genericDecode options
instance encodeAttributes :: Encode Attributes where encode = genericEncode options



-- | <p>Indicates whether or not the face has a beard, and the confidence level in the determination.</p>
newtype Beard = Beard 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeBeard :: Newtype Beard _
derive instance repGenericBeard :: Generic Beard _
instance showBeard :: Show Beard where show = genericShow
instance decodeBeard :: Decode Beard where decode = genericDecode options
instance encodeBeard :: Encode Beard where encode = genericEncode options

-- | Constructs Beard from required parameters
newBeard :: Beard
newBeard  = Beard { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Beard's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBeard' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> Beard
newBeard'  customize = (Beard <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>Identifies the bounding box around the object, face or text. The <code>left</code> (x-coordinate) and <code>top</code> (y-coordinate) are coordinates representing the top and left sides of the bounding box. Note that the upper-left corner of the image is the origin (0,0). </p> <p>The <code>top</code> and <code>left</code> values returned are ratios of the overall image size. For example, if the input image is 700x200 pixels, and the top-left coordinate of the bounding box is 350x50 pixels, the API returns a <code>left</code> value of 0.5 (350/700) and a <code>top</code> value of 0.25 (50/200).</p> <p>The <code>width</code> and <code>height</code> values represent the dimensions of the bounding box as a ratio of the overall image dimension. For example, if the input image is 700x200 pixels, and the bounding box width is 70 pixels, the width returned is 0.1. </p> <note> <p> The bounding box coordinates can have negative values. For example, if Amazon Rekognition is able to detect a face that is at the image edge and is only partially visible, the service can return coordinates that are outside the image bounds and, depending on the image edge, you might get negative values or values greater than 1 for the <code>left</code> or <code>top</code> values. </p> </note>
newtype BoundingBox = BoundingBox 
  { "Width" :: NullOrUndefined (Number)
  , "Height" :: NullOrUndefined (Number)
  , "Left" :: NullOrUndefined (Number)
  , "Top" :: NullOrUndefined (Number)
  }
derive instance newtypeBoundingBox :: Newtype BoundingBox _
derive instance repGenericBoundingBox :: Generic BoundingBox _
instance showBoundingBox :: Show BoundingBox where show = genericShow
instance decodeBoundingBox :: Decode BoundingBox where decode = genericDecode options
instance encodeBoundingBox :: Encode BoundingBox where encode = genericEncode options

-- | Constructs BoundingBox from required parameters
newBoundingBox :: BoundingBox
newBoundingBox  = BoundingBox { "Height": (NullOrUndefined Nothing), "Left": (NullOrUndefined Nothing), "Top": (NullOrUndefined Nothing), "Width": (NullOrUndefined Nothing) }

-- | Constructs BoundingBox's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBoundingBox' :: ( { "Width" :: NullOrUndefined (Number) , "Height" :: NullOrUndefined (Number) , "Left" :: NullOrUndefined (Number) , "Top" :: NullOrUndefined (Number) } -> {"Width" :: NullOrUndefined (Number) , "Height" :: NullOrUndefined (Number) , "Left" :: NullOrUndefined (Number) , "Top" :: NullOrUndefined (Number) } ) -> BoundingBox
newBoundingBox'  customize = (BoundingBox <<< customize) { "Height": (NullOrUndefined Nothing), "Left": (NullOrUndefined Nothing), "Top": (NullOrUndefined Nothing), "Width": (NullOrUndefined Nothing) }



-- | <p>Provides information about a celebrity recognized by the operation.</p>
newtype Celebrity = Celebrity 
  { "Urls" :: NullOrUndefined (Urls)
  , "Name" :: NullOrUndefined (String)
  , "Id" :: NullOrUndefined (RekognitionUniqueId)
  , "Face" :: NullOrUndefined (ComparedFace)
  , "MatchConfidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeCelebrity :: Newtype Celebrity _
derive instance repGenericCelebrity :: Generic Celebrity _
instance showCelebrity :: Show Celebrity where show = genericShow
instance decodeCelebrity :: Decode Celebrity where decode = genericDecode options
instance encodeCelebrity :: Encode Celebrity where encode = genericEncode options

-- | Constructs Celebrity from required parameters
newCelebrity :: Celebrity
newCelebrity  = Celebrity { "Face": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "MatchConfidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }

-- | Constructs Celebrity's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCelebrity' :: ( { "Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (RekognitionUniqueId) , "Face" :: NullOrUndefined (ComparedFace) , "MatchConfidence" :: NullOrUndefined (Percent) } -> {"Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (RekognitionUniqueId) , "Face" :: NullOrUndefined (ComparedFace) , "MatchConfidence" :: NullOrUndefined (Percent) } ) -> Celebrity
newCelebrity'  customize = (Celebrity <<< customize) { "Face": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "MatchConfidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }



-- | <p>Information about a recognized celebrity.</p>
newtype CelebrityDetail = CelebrityDetail 
  { "Urls" :: NullOrUndefined (Urls)
  , "Name" :: NullOrUndefined (String)
  , "Id" :: NullOrUndefined (RekognitionUniqueId)
  , "Confidence" :: NullOrUndefined (Percent)
  , "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "Face" :: NullOrUndefined (FaceDetail)
  }
derive instance newtypeCelebrityDetail :: Newtype CelebrityDetail _
derive instance repGenericCelebrityDetail :: Generic CelebrityDetail _
instance showCelebrityDetail :: Show CelebrityDetail where show = genericShow
instance decodeCelebrityDetail :: Decode CelebrityDetail where decode = genericDecode options
instance encodeCelebrityDetail :: Encode CelebrityDetail where encode = genericEncode options

-- | Constructs CelebrityDetail from required parameters
newCelebrityDetail :: CelebrityDetail
newCelebrityDetail  = CelebrityDetail { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Face": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }

-- | Constructs CelebrityDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCelebrityDetail' :: ( { "Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (RekognitionUniqueId) , "Confidence" :: NullOrUndefined (Percent) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "Face" :: NullOrUndefined (FaceDetail) } -> {"Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) , "Id" :: NullOrUndefined (RekognitionUniqueId) , "Confidence" :: NullOrUndefined (Percent) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "Face" :: NullOrUndefined (FaceDetail) } ) -> CelebrityDetail
newCelebrityDetail'  customize = (CelebrityDetail <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Face": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }



newtype CelebrityList = CelebrityList (Array Celebrity)
derive instance newtypeCelebrityList :: Newtype CelebrityList _
derive instance repGenericCelebrityList :: Generic CelebrityList _
instance showCelebrityList :: Show CelebrityList where show = genericShow
instance decodeCelebrityList :: Decode CelebrityList where decode = genericDecode options
instance encodeCelebrityList :: Encode CelebrityList where encode = genericEncode options



-- | <p>Information about a detected celebrity and the time the celebrity was detected in a stored video. For more information, see .</p>
newtype CelebrityRecognition = CelebrityRecognition 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "Celebrity" :: NullOrUndefined (CelebrityDetail)
  }
derive instance newtypeCelebrityRecognition :: Newtype CelebrityRecognition _
derive instance repGenericCelebrityRecognition :: Generic CelebrityRecognition _
instance showCelebrityRecognition :: Show CelebrityRecognition where show = genericShow
instance decodeCelebrityRecognition :: Decode CelebrityRecognition where decode = genericDecode options
instance encodeCelebrityRecognition :: Encode CelebrityRecognition where encode = genericEncode options

-- | Constructs CelebrityRecognition from required parameters
newCelebrityRecognition :: CelebrityRecognition
newCelebrityRecognition  = CelebrityRecognition { "Celebrity": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs CelebrityRecognition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCelebrityRecognition' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "Celebrity" :: NullOrUndefined (CelebrityDetail) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "Celebrity" :: NullOrUndefined (CelebrityDetail) } ) -> CelebrityRecognition
newCelebrityRecognition'  customize = (CelebrityRecognition <<< customize) { "Celebrity": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype CelebrityRecognitionSortBy = CelebrityRecognitionSortBy String
derive instance newtypeCelebrityRecognitionSortBy :: Newtype CelebrityRecognitionSortBy _
derive instance repGenericCelebrityRecognitionSortBy :: Generic CelebrityRecognitionSortBy _
instance showCelebrityRecognitionSortBy :: Show CelebrityRecognitionSortBy where show = genericShow
instance decodeCelebrityRecognitionSortBy :: Decode CelebrityRecognitionSortBy where decode = genericDecode options
instance encodeCelebrityRecognitionSortBy :: Encode CelebrityRecognitionSortBy where encode = genericEncode options



newtype CelebrityRecognitions = CelebrityRecognitions (Array CelebrityRecognition)
derive instance newtypeCelebrityRecognitions :: Newtype CelebrityRecognitions _
derive instance repGenericCelebrityRecognitions :: Generic CelebrityRecognitions _
instance showCelebrityRecognitions :: Show CelebrityRecognitions where show = genericShow
instance decodeCelebrityRecognitions :: Decode CelebrityRecognitions where decode = genericDecode options
instance encodeCelebrityRecognitions :: Encode CelebrityRecognitions where encode = genericEncode options



newtype ClientRequestToken = ClientRequestToken String
derive instance newtypeClientRequestToken :: Newtype ClientRequestToken _
derive instance repGenericClientRequestToken :: Generic ClientRequestToken _
instance showClientRequestToken :: Show ClientRequestToken where show = genericShow
instance decodeClientRequestToken :: Decode ClientRequestToken where decode = genericDecode options
instance encodeClientRequestToken :: Encode ClientRequestToken where encode = genericEncode options



newtype CollectionId = CollectionId String
derive instance newtypeCollectionId :: Newtype CollectionId _
derive instance repGenericCollectionId :: Generic CollectionId _
instance showCollectionId :: Show CollectionId where show = genericShow
instance decodeCollectionId :: Decode CollectionId where decode = genericDecode options
instance encodeCollectionId :: Encode CollectionId where encode = genericEncode options



newtype CollectionIdList = CollectionIdList (Array CollectionId)
derive instance newtypeCollectionIdList :: Newtype CollectionIdList _
derive instance repGenericCollectionIdList :: Generic CollectionIdList _
instance showCollectionIdList :: Show CollectionIdList where show = genericShow
instance decodeCollectionIdList :: Decode CollectionIdList where decode = genericDecode options
instance encodeCollectionIdList :: Encode CollectionIdList where encode = genericEncode options



-- | <p>Provides information about a face in a target image that matches the source image face analysed by <code>CompareFaces</code>. The <code>Face</code> property contains the bounding box of the face in the target image. The <code>Similarity</code> property is the confidence that the source image face matches the face in the bounding box.</p>
newtype CompareFacesMatch = CompareFacesMatch 
  { "Similarity" :: NullOrUndefined (Percent)
  , "Face" :: NullOrUndefined (ComparedFace)
  }
derive instance newtypeCompareFacesMatch :: Newtype CompareFacesMatch _
derive instance repGenericCompareFacesMatch :: Generic CompareFacesMatch _
instance showCompareFacesMatch :: Show CompareFacesMatch where show = genericShow
instance decodeCompareFacesMatch :: Decode CompareFacesMatch where decode = genericDecode options
instance encodeCompareFacesMatch :: Encode CompareFacesMatch where encode = genericEncode options

-- | Constructs CompareFacesMatch from required parameters
newCompareFacesMatch :: CompareFacesMatch
newCompareFacesMatch  = CompareFacesMatch { "Face": (NullOrUndefined Nothing), "Similarity": (NullOrUndefined Nothing) }

-- | Constructs CompareFacesMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompareFacesMatch' :: ( { "Similarity" :: NullOrUndefined (Percent) , "Face" :: NullOrUndefined (ComparedFace) } -> {"Similarity" :: NullOrUndefined (Percent) , "Face" :: NullOrUndefined (ComparedFace) } ) -> CompareFacesMatch
newCompareFacesMatch'  customize = (CompareFacesMatch <<< customize) { "Face": (NullOrUndefined Nothing), "Similarity": (NullOrUndefined Nothing) }



newtype CompareFacesMatchList = CompareFacesMatchList (Array CompareFacesMatch)
derive instance newtypeCompareFacesMatchList :: Newtype CompareFacesMatchList _
derive instance repGenericCompareFacesMatchList :: Generic CompareFacesMatchList _
instance showCompareFacesMatchList :: Show CompareFacesMatchList where show = genericShow
instance decodeCompareFacesMatchList :: Decode CompareFacesMatchList where decode = genericDecode options
instance encodeCompareFacesMatchList :: Encode CompareFacesMatchList where encode = genericEncode options



newtype CompareFacesRequest = CompareFacesRequest 
  { "SourceImage" :: (Image)
  , "TargetImage" :: (Image)
  , "SimilarityThreshold" :: NullOrUndefined (Percent)
  }
derive instance newtypeCompareFacesRequest :: Newtype CompareFacesRequest _
derive instance repGenericCompareFacesRequest :: Generic CompareFacesRequest _
instance showCompareFacesRequest :: Show CompareFacesRequest where show = genericShow
instance decodeCompareFacesRequest :: Decode CompareFacesRequest where decode = genericDecode options
instance encodeCompareFacesRequest :: Encode CompareFacesRequest where encode = genericEncode options

-- | Constructs CompareFacesRequest from required parameters
newCompareFacesRequest :: Image -> Image -> CompareFacesRequest
newCompareFacesRequest _SourceImage _TargetImage = CompareFacesRequest { "SourceImage": _SourceImage, "TargetImage": _TargetImage, "SimilarityThreshold": (NullOrUndefined Nothing) }

-- | Constructs CompareFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompareFacesRequest' :: Image -> Image -> ( { "SourceImage" :: (Image) , "TargetImage" :: (Image) , "SimilarityThreshold" :: NullOrUndefined (Percent) } -> {"SourceImage" :: (Image) , "TargetImage" :: (Image) , "SimilarityThreshold" :: NullOrUndefined (Percent) } ) -> CompareFacesRequest
newCompareFacesRequest' _SourceImage _TargetImage customize = (CompareFacesRequest <<< customize) { "SourceImage": _SourceImage, "TargetImage": _TargetImage, "SimilarityThreshold": (NullOrUndefined Nothing) }



newtype CompareFacesResponse = CompareFacesResponse 
  { "SourceImageFace" :: NullOrUndefined (ComparedSourceImageFace)
  , "FaceMatches" :: NullOrUndefined (CompareFacesMatchList)
  , "UnmatchedFaces" :: NullOrUndefined (CompareFacesUnmatchList)
  , "SourceImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  , "TargetImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  }
derive instance newtypeCompareFacesResponse :: Newtype CompareFacesResponse _
derive instance repGenericCompareFacesResponse :: Generic CompareFacesResponse _
instance showCompareFacesResponse :: Show CompareFacesResponse where show = genericShow
instance decodeCompareFacesResponse :: Decode CompareFacesResponse where decode = genericDecode options
instance encodeCompareFacesResponse :: Encode CompareFacesResponse where encode = genericEncode options

-- | Constructs CompareFacesResponse from required parameters
newCompareFacesResponse :: CompareFacesResponse
newCompareFacesResponse  = CompareFacesResponse { "FaceMatches": (NullOrUndefined Nothing), "SourceImageFace": (NullOrUndefined Nothing), "SourceImageOrientationCorrection": (NullOrUndefined Nothing), "TargetImageOrientationCorrection": (NullOrUndefined Nothing), "UnmatchedFaces": (NullOrUndefined Nothing) }

-- | Constructs CompareFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCompareFacesResponse' :: ( { "SourceImageFace" :: NullOrUndefined (ComparedSourceImageFace) , "FaceMatches" :: NullOrUndefined (CompareFacesMatchList) , "UnmatchedFaces" :: NullOrUndefined (CompareFacesUnmatchList) , "SourceImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection) , "TargetImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection) } -> {"SourceImageFace" :: NullOrUndefined (ComparedSourceImageFace) , "FaceMatches" :: NullOrUndefined (CompareFacesMatchList) , "UnmatchedFaces" :: NullOrUndefined (CompareFacesUnmatchList) , "SourceImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection) , "TargetImageOrientationCorrection" :: NullOrUndefined (OrientationCorrection) } ) -> CompareFacesResponse
newCompareFacesResponse'  customize = (CompareFacesResponse <<< customize) { "FaceMatches": (NullOrUndefined Nothing), "SourceImageFace": (NullOrUndefined Nothing), "SourceImageOrientationCorrection": (NullOrUndefined Nothing), "TargetImageOrientationCorrection": (NullOrUndefined Nothing), "UnmatchedFaces": (NullOrUndefined Nothing) }



newtype CompareFacesUnmatchList = CompareFacesUnmatchList (Array ComparedFace)
derive instance newtypeCompareFacesUnmatchList :: Newtype CompareFacesUnmatchList _
derive instance repGenericCompareFacesUnmatchList :: Generic CompareFacesUnmatchList _
instance showCompareFacesUnmatchList :: Show CompareFacesUnmatchList where show = genericShow
instance decodeCompareFacesUnmatchList :: Decode CompareFacesUnmatchList where decode = genericDecode options
instance encodeCompareFacesUnmatchList :: Encode CompareFacesUnmatchList where encode = genericEncode options



-- | <p>Provides face metadata for target image faces that are analysed by <code>CompareFaces</code> and <code>RecognizeCelebrities</code>.</p>
newtype ComparedFace = ComparedFace 
  { "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "Confidence" :: NullOrUndefined (Percent)
  , "Landmarks" :: NullOrUndefined (Landmarks)
  , "Pose" :: NullOrUndefined (Pose)
  , "Quality" :: NullOrUndefined (ImageQuality)
  }
derive instance newtypeComparedFace :: Newtype ComparedFace _
derive instance repGenericComparedFace :: Generic ComparedFace _
instance showComparedFace :: Show ComparedFace where show = genericShow
instance decodeComparedFace :: Decode ComparedFace where decode = genericDecode options
instance encodeComparedFace :: Encode ComparedFace where encode = genericEncode options

-- | Constructs ComparedFace from required parameters
newComparedFace :: ComparedFace
newComparedFace  = ComparedFace { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Landmarks": (NullOrUndefined Nothing), "Pose": (NullOrUndefined Nothing), "Quality": (NullOrUndefined Nothing) }

-- | Constructs ComparedFace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComparedFace' :: ( { "BoundingBox" :: NullOrUndefined (BoundingBox) , "Confidence" :: NullOrUndefined (Percent) , "Landmarks" :: NullOrUndefined (Landmarks) , "Pose" :: NullOrUndefined (Pose) , "Quality" :: NullOrUndefined (ImageQuality) } -> {"BoundingBox" :: NullOrUndefined (BoundingBox) , "Confidence" :: NullOrUndefined (Percent) , "Landmarks" :: NullOrUndefined (Landmarks) , "Pose" :: NullOrUndefined (Pose) , "Quality" :: NullOrUndefined (ImageQuality) } ) -> ComparedFace
newComparedFace'  customize = (ComparedFace <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Landmarks": (NullOrUndefined Nothing), "Pose": (NullOrUndefined Nothing), "Quality": (NullOrUndefined Nothing) }



newtype ComparedFaceList = ComparedFaceList (Array ComparedFace)
derive instance newtypeComparedFaceList :: Newtype ComparedFaceList _
derive instance repGenericComparedFaceList :: Generic ComparedFaceList _
instance showComparedFaceList :: Show ComparedFaceList where show = genericShow
instance decodeComparedFaceList :: Decode ComparedFaceList where decode = genericDecode options
instance encodeComparedFaceList :: Encode ComparedFaceList where encode = genericEncode options



-- | <p>Type that describes the face Amazon Rekognition chose to compare with the faces in the target. This contains a bounding box for the selected face and confidence level that the bounding box contains a face. Note that Amazon Rekognition selects the largest face in the source image for this comparison. </p>
newtype ComparedSourceImageFace = ComparedSourceImageFace 
  { "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeComparedSourceImageFace :: Newtype ComparedSourceImageFace _
derive instance repGenericComparedSourceImageFace :: Generic ComparedSourceImageFace _
instance showComparedSourceImageFace :: Show ComparedSourceImageFace where show = genericShow
instance decodeComparedSourceImageFace :: Decode ComparedSourceImageFace where decode = genericDecode options
instance encodeComparedSourceImageFace :: Encode ComparedSourceImageFace where encode = genericEncode options

-- | Constructs ComparedSourceImageFace from required parameters
newComparedSourceImageFace :: ComparedSourceImageFace
newComparedSourceImageFace  = ComparedSourceImageFace { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing) }

-- | Constructs ComparedSourceImageFace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newComparedSourceImageFace' :: ( { "BoundingBox" :: NullOrUndefined (BoundingBox) , "Confidence" :: NullOrUndefined (Percent) } -> {"BoundingBox" :: NullOrUndefined (BoundingBox) , "Confidence" :: NullOrUndefined (Percent) } ) -> ComparedSourceImageFace
newComparedSourceImageFace'  customize = (ComparedSourceImageFace <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing) }



-- | <p>Information about a moderation label detection in a stored video.</p>
newtype ContentModerationDetection = ContentModerationDetection 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "ModerationLabel" :: NullOrUndefined (ModerationLabel)
  }
derive instance newtypeContentModerationDetection :: Newtype ContentModerationDetection _
derive instance repGenericContentModerationDetection :: Generic ContentModerationDetection _
instance showContentModerationDetection :: Show ContentModerationDetection where show = genericShow
instance decodeContentModerationDetection :: Decode ContentModerationDetection where decode = genericDecode options
instance encodeContentModerationDetection :: Encode ContentModerationDetection where encode = genericEncode options

-- | Constructs ContentModerationDetection from required parameters
newContentModerationDetection :: ContentModerationDetection
newContentModerationDetection  = ContentModerationDetection { "ModerationLabel": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs ContentModerationDetection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newContentModerationDetection' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "ModerationLabel" :: NullOrUndefined (ModerationLabel) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "ModerationLabel" :: NullOrUndefined (ModerationLabel) } ) -> ContentModerationDetection
newContentModerationDetection'  customize = (ContentModerationDetection <<< customize) { "ModerationLabel": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype ContentModerationDetections = ContentModerationDetections (Array ContentModerationDetection)
derive instance newtypeContentModerationDetections :: Newtype ContentModerationDetections _
derive instance repGenericContentModerationDetections :: Generic ContentModerationDetections _
instance showContentModerationDetections :: Show ContentModerationDetections where show = genericShow
instance decodeContentModerationDetections :: Decode ContentModerationDetections where decode = genericDecode options
instance encodeContentModerationDetections :: Encode ContentModerationDetections where encode = genericEncode options



newtype ContentModerationSortBy = ContentModerationSortBy String
derive instance newtypeContentModerationSortBy :: Newtype ContentModerationSortBy _
derive instance repGenericContentModerationSortBy :: Generic ContentModerationSortBy _
instance showContentModerationSortBy :: Show ContentModerationSortBy where show = genericShow
instance decodeContentModerationSortBy :: Decode ContentModerationSortBy where decode = genericDecode options
instance encodeContentModerationSortBy :: Encode ContentModerationSortBy where encode = genericEncode options



newtype CreateCollectionRequest = CreateCollectionRequest 
  { "CollectionId" :: (CollectionId)
  }
derive instance newtypeCreateCollectionRequest :: Newtype CreateCollectionRequest _
derive instance repGenericCreateCollectionRequest :: Generic CreateCollectionRequest _
instance showCreateCollectionRequest :: Show CreateCollectionRequest where show = genericShow
instance decodeCreateCollectionRequest :: Decode CreateCollectionRequest where decode = genericDecode options
instance encodeCreateCollectionRequest :: Encode CreateCollectionRequest where encode = genericEncode options

-- | Constructs CreateCollectionRequest from required parameters
newCreateCollectionRequest :: CollectionId -> CreateCollectionRequest
newCreateCollectionRequest _CollectionId = CreateCollectionRequest { "CollectionId": _CollectionId }

-- | Constructs CreateCollectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCollectionRequest' :: CollectionId -> ( { "CollectionId" :: (CollectionId) } -> {"CollectionId" :: (CollectionId) } ) -> CreateCollectionRequest
newCreateCollectionRequest' _CollectionId customize = (CreateCollectionRequest <<< customize) { "CollectionId": _CollectionId }



newtype CreateCollectionResponse = CreateCollectionResponse 
  { "StatusCode" :: NullOrUndefined (UInteger)
  , "CollectionArn" :: NullOrUndefined (String)
  , "FaceModelVersion" :: NullOrUndefined (String)
  }
derive instance newtypeCreateCollectionResponse :: Newtype CreateCollectionResponse _
derive instance repGenericCreateCollectionResponse :: Generic CreateCollectionResponse _
instance showCreateCollectionResponse :: Show CreateCollectionResponse where show = genericShow
instance decodeCreateCollectionResponse :: Decode CreateCollectionResponse where decode = genericDecode options
instance encodeCreateCollectionResponse :: Encode CreateCollectionResponse where encode = genericEncode options

-- | Constructs CreateCollectionResponse from required parameters
newCreateCollectionResponse :: CreateCollectionResponse
newCreateCollectionResponse  = CreateCollectionResponse { "CollectionArn": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "StatusCode": (NullOrUndefined Nothing) }

-- | Constructs CreateCollectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateCollectionResponse' :: ( { "StatusCode" :: NullOrUndefined (UInteger) , "CollectionArn" :: NullOrUndefined (String) , "FaceModelVersion" :: NullOrUndefined (String) } -> {"StatusCode" :: NullOrUndefined (UInteger) , "CollectionArn" :: NullOrUndefined (String) , "FaceModelVersion" :: NullOrUndefined (String) } ) -> CreateCollectionResponse
newCreateCollectionResponse'  customize = (CreateCollectionResponse <<< customize) { "CollectionArn": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "StatusCode": (NullOrUndefined Nothing) }



newtype CreateStreamProcessorRequest = CreateStreamProcessorRequest 
  { "Input" :: (StreamProcessorInput)
  , "Output" :: (StreamProcessorOutput)
  , "Name" :: (StreamProcessorName)
  , "Settings" :: (StreamProcessorSettings)
  , "RoleArn" :: (RoleArn)
  }
derive instance newtypeCreateStreamProcessorRequest :: Newtype CreateStreamProcessorRequest _
derive instance repGenericCreateStreamProcessorRequest :: Generic CreateStreamProcessorRequest _
instance showCreateStreamProcessorRequest :: Show CreateStreamProcessorRequest where show = genericShow
instance decodeCreateStreamProcessorRequest :: Decode CreateStreamProcessorRequest where decode = genericDecode options
instance encodeCreateStreamProcessorRequest :: Encode CreateStreamProcessorRequest where encode = genericEncode options

-- | Constructs CreateStreamProcessorRequest from required parameters
newCreateStreamProcessorRequest :: StreamProcessorInput -> StreamProcessorName -> StreamProcessorOutput -> RoleArn -> StreamProcessorSettings -> CreateStreamProcessorRequest
newCreateStreamProcessorRequest _Input _Name _Output _RoleArn _Settings = CreateStreamProcessorRequest { "Input": _Input, "Name": _Name, "Output": _Output, "RoleArn": _RoleArn, "Settings": _Settings }

-- | Constructs CreateStreamProcessorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamProcessorRequest' :: StreamProcessorInput -> StreamProcessorName -> StreamProcessorOutput -> RoleArn -> StreamProcessorSettings -> ( { "Input" :: (StreamProcessorInput) , "Output" :: (StreamProcessorOutput) , "Name" :: (StreamProcessorName) , "Settings" :: (StreamProcessorSettings) , "RoleArn" :: (RoleArn) } -> {"Input" :: (StreamProcessorInput) , "Output" :: (StreamProcessorOutput) , "Name" :: (StreamProcessorName) , "Settings" :: (StreamProcessorSettings) , "RoleArn" :: (RoleArn) } ) -> CreateStreamProcessorRequest
newCreateStreamProcessorRequest' _Input _Name _Output _RoleArn _Settings customize = (CreateStreamProcessorRequest <<< customize) { "Input": _Input, "Name": _Name, "Output": _Output, "RoleArn": _RoleArn, "Settings": _Settings }



newtype CreateStreamProcessorResponse = CreateStreamProcessorResponse 
  { "StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn)
  }
derive instance newtypeCreateStreamProcessorResponse :: Newtype CreateStreamProcessorResponse _
derive instance repGenericCreateStreamProcessorResponse :: Generic CreateStreamProcessorResponse _
instance showCreateStreamProcessorResponse :: Show CreateStreamProcessorResponse where show = genericShow
instance decodeCreateStreamProcessorResponse :: Decode CreateStreamProcessorResponse where decode = genericDecode options
instance encodeCreateStreamProcessorResponse :: Encode CreateStreamProcessorResponse where encode = genericEncode options

-- | Constructs CreateStreamProcessorResponse from required parameters
newCreateStreamProcessorResponse :: CreateStreamProcessorResponse
newCreateStreamProcessorResponse  = CreateStreamProcessorResponse { "StreamProcessorArn": (NullOrUndefined Nothing) }

-- | Constructs CreateStreamProcessorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateStreamProcessorResponse' :: ( { "StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn) } -> {"StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn) } ) -> CreateStreamProcessorResponse
newCreateStreamProcessorResponse'  customize = (CreateStreamProcessorResponse <<< customize) { "StreamProcessorArn": (NullOrUndefined Nothing) }



newtype DateTime = DateTime Types.Timestamp
derive instance newtypeDateTime :: Newtype DateTime _
derive instance repGenericDateTime :: Generic DateTime _
instance showDateTime :: Show DateTime where show = genericShow
instance decodeDateTime :: Decode DateTime where decode = genericDecode options
instance encodeDateTime :: Encode DateTime where encode = genericEncode options



newtype Degree = Degree Number
derive instance newtypeDegree :: Newtype Degree _
derive instance repGenericDegree :: Generic Degree _
instance showDegree :: Show Degree where show = genericShow
instance decodeDegree :: Decode Degree where decode = genericDecode options
instance encodeDegree :: Encode Degree where encode = genericEncode options



newtype DeleteCollectionRequest = DeleteCollectionRequest 
  { "CollectionId" :: (CollectionId)
  }
derive instance newtypeDeleteCollectionRequest :: Newtype DeleteCollectionRequest _
derive instance repGenericDeleteCollectionRequest :: Generic DeleteCollectionRequest _
instance showDeleteCollectionRequest :: Show DeleteCollectionRequest where show = genericShow
instance decodeDeleteCollectionRequest :: Decode DeleteCollectionRequest where decode = genericDecode options
instance encodeDeleteCollectionRequest :: Encode DeleteCollectionRequest where encode = genericEncode options

-- | Constructs DeleteCollectionRequest from required parameters
newDeleteCollectionRequest :: CollectionId -> DeleteCollectionRequest
newDeleteCollectionRequest _CollectionId = DeleteCollectionRequest { "CollectionId": _CollectionId }

-- | Constructs DeleteCollectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCollectionRequest' :: CollectionId -> ( { "CollectionId" :: (CollectionId) } -> {"CollectionId" :: (CollectionId) } ) -> DeleteCollectionRequest
newDeleteCollectionRequest' _CollectionId customize = (DeleteCollectionRequest <<< customize) { "CollectionId": _CollectionId }



newtype DeleteCollectionResponse = DeleteCollectionResponse 
  { "StatusCode" :: NullOrUndefined (UInteger)
  }
derive instance newtypeDeleteCollectionResponse :: Newtype DeleteCollectionResponse _
derive instance repGenericDeleteCollectionResponse :: Generic DeleteCollectionResponse _
instance showDeleteCollectionResponse :: Show DeleteCollectionResponse where show = genericShow
instance decodeDeleteCollectionResponse :: Decode DeleteCollectionResponse where decode = genericDecode options
instance encodeDeleteCollectionResponse :: Encode DeleteCollectionResponse where encode = genericEncode options

-- | Constructs DeleteCollectionResponse from required parameters
newDeleteCollectionResponse :: DeleteCollectionResponse
newDeleteCollectionResponse  = DeleteCollectionResponse { "StatusCode": (NullOrUndefined Nothing) }

-- | Constructs DeleteCollectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteCollectionResponse' :: ( { "StatusCode" :: NullOrUndefined (UInteger) } -> {"StatusCode" :: NullOrUndefined (UInteger) } ) -> DeleteCollectionResponse
newDeleteCollectionResponse'  customize = (DeleteCollectionResponse <<< customize) { "StatusCode": (NullOrUndefined Nothing) }



newtype DeleteFacesRequest = DeleteFacesRequest 
  { "CollectionId" :: (CollectionId)
  , "FaceIds" :: (FaceIdList)
  }
derive instance newtypeDeleteFacesRequest :: Newtype DeleteFacesRequest _
derive instance repGenericDeleteFacesRequest :: Generic DeleteFacesRequest _
instance showDeleteFacesRequest :: Show DeleteFacesRequest where show = genericShow
instance decodeDeleteFacesRequest :: Decode DeleteFacesRequest where decode = genericDecode options
instance encodeDeleteFacesRequest :: Encode DeleteFacesRequest where encode = genericEncode options

-- | Constructs DeleteFacesRequest from required parameters
newDeleteFacesRequest :: CollectionId -> FaceIdList -> DeleteFacesRequest
newDeleteFacesRequest _CollectionId _FaceIds = DeleteFacesRequest { "CollectionId": _CollectionId, "FaceIds": _FaceIds }

-- | Constructs DeleteFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFacesRequest' :: CollectionId -> FaceIdList -> ( { "CollectionId" :: (CollectionId) , "FaceIds" :: (FaceIdList) } -> {"CollectionId" :: (CollectionId) , "FaceIds" :: (FaceIdList) } ) -> DeleteFacesRequest
newDeleteFacesRequest' _CollectionId _FaceIds customize = (DeleteFacesRequest <<< customize) { "CollectionId": _CollectionId, "FaceIds": _FaceIds }



newtype DeleteFacesResponse = DeleteFacesResponse 
  { "DeletedFaces" :: NullOrUndefined (FaceIdList)
  }
derive instance newtypeDeleteFacesResponse :: Newtype DeleteFacesResponse _
derive instance repGenericDeleteFacesResponse :: Generic DeleteFacesResponse _
instance showDeleteFacesResponse :: Show DeleteFacesResponse where show = genericShow
instance decodeDeleteFacesResponse :: Decode DeleteFacesResponse where decode = genericDecode options
instance encodeDeleteFacesResponse :: Encode DeleteFacesResponse where encode = genericEncode options

-- | Constructs DeleteFacesResponse from required parameters
newDeleteFacesResponse :: DeleteFacesResponse
newDeleteFacesResponse  = DeleteFacesResponse { "DeletedFaces": (NullOrUndefined Nothing) }

-- | Constructs DeleteFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteFacesResponse' :: ( { "DeletedFaces" :: NullOrUndefined (FaceIdList) } -> {"DeletedFaces" :: NullOrUndefined (FaceIdList) } ) -> DeleteFacesResponse
newDeleteFacesResponse'  customize = (DeleteFacesResponse <<< customize) { "DeletedFaces": (NullOrUndefined Nothing) }



newtype DeleteStreamProcessorRequest = DeleteStreamProcessorRequest 
  { "Name" :: (StreamProcessorName)
  }
derive instance newtypeDeleteStreamProcessorRequest :: Newtype DeleteStreamProcessorRequest _
derive instance repGenericDeleteStreamProcessorRequest :: Generic DeleteStreamProcessorRequest _
instance showDeleteStreamProcessorRequest :: Show DeleteStreamProcessorRequest where show = genericShow
instance decodeDeleteStreamProcessorRequest :: Decode DeleteStreamProcessorRequest where decode = genericDecode options
instance encodeDeleteStreamProcessorRequest :: Encode DeleteStreamProcessorRequest where encode = genericEncode options

-- | Constructs DeleteStreamProcessorRequest from required parameters
newDeleteStreamProcessorRequest :: StreamProcessorName -> DeleteStreamProcessorRequest
newDeleteStreamProcessorRequest _Name = DeleteStreamProcessorRequest { "Name": _Name }

-- | Constructs DeleteStreamProcessorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteStreamProcessorRequest' :: StreamProcessorName -> ( { "Name" :: (StreamProcessorName) } -> {"Name" :: (StreamProcessorName) } ) -> DeleteStreamProcessorRequest
newDeleteStreamProcessorRequest' _Name customize = (DeleteStreamProcessorRequest <<< customize) { "Name": _Name }



newtype DeleteStreamProcessorResponse = DeleteStreamProcessorResponse Types.NoArguments
derive instance newtypeDeleteStreamProcessorResponse :: Newtype DeleteStreamProcessorResponse _
derive instance repGenericDeleteStreamProcessorResponse :: Generic DeleteStreamProcessorResponse _
instance showDeleteStreamProcessorResponse :: Show DeleteStreamProcessorResponse where show = genericShow
instance decodeDeleteStreamProcessorResponse :: Decode DeleteStreamProcessorResponse where decode = genericDecode options
instance encodeDeleteStreamProcessorResponse :: Encode DeleteStreamProcessorResponse where encode = genericEncode options



newtype DescribeStreamProcessorRequest = DescribeStreamProcessorRequest 
  { "Name" :: (StreamProcessorName)
  }
derive instance newtypeDescribeStreamProcessorRequest :: Newtype DescribeStreamProcessorRequest _
derive instance repGenericDescribeStreamProcessorRequest :: Generic DescribeStreamProcessorRequest _
instance showDescribeStreamProcessorRequest :: Show DescribeStreamProcessorRequest where show = genericShow
instance decodeDescribeStreamProcessorRequest :: Decode DescribeStreamProcessorRequest where decode = genericDecode options
instance encodeDescribeStreamProcessorRequest :: Encode DescribeStreamProcessorRequest where encode = genericEncode options

-- | Constructs DescribeStreamProcessorRequest from required parameters
newDescribeStreamProcessorRequest :: StreamProcessorName -> DescribeStreamProcessorRequest
newDescribeStreamProcessorRequest _Name = DescribeStreamProcessorRequest { "Name": _Name }

-- | Constructs DescribeStreamProcessorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamProcessorRequest' :: StreamProcessorName -> ( { "Name" :: (StreamProcessorName) } -> {"Name" :: (StreamProcessorName) } ) -> DescribeStreamProcessorRequest
newDescribeStreamProcessorRequest' _Name customize = (DescribeStreamProcessorRequest <<< customize) { "Name": _Name }



newtype DescribeStreamProcessorResponse = DescribeStreamProcessorResponse 
  { "Name" :: NullOrUndefined (StreamProcessorName)
  , "StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn)
  , "Status" :: NullOrUndefined (StreamProcessorStatus)
  , "StatusMessage" :: NullOrUndefined (String)
  , "CreationTimestamp" :: NullOrUndefined (DateTime)
  , "LastUpdateTimestamp" :: NullOrUndefined (DateTime)
  , "Input" :: NullOrUndefined (StreamProcessorInput)
  , "Output" :: NullOrUndefined (StreamProcessorOutput)
  , "RoleArn" :: NullOrUndefined (RoleArn)
  , "Settings" :: NullOrUndefined (StreamProcessorSettings)
  }
derive instance newtypeDescribeStreamProcessorResponse :: Newtype DescribeStreamProcessorResponse _
derive instance repGenericDescribeStreamProcessorResponse :: Generic DescribeStreamProcessorResponse _
instance showDescribeStreamProcessorResponse :: Show DescribeStreamProcessorResponse where show = genericShow
instance decodeDescribeStreamProcessorResponse :: Decode DescribeStreamProcessorResponse where decode = genericDecode options
instance encodeDescribeStreamProcessorResponse :: Encode DescribeStreamProcessorResponse where encode = genericEncode options

-- | Constructs DescribeStreamProcessorResponse from required parameters
newDescribeStreamProcessorResponse :: DescribeStreamProcessorResponse
newDescribeStreamProcessorResponse  = DescribeStreamProcessorResponse { "CreationTimestamp": (NullOrUndefined Nothing), "Input": (NullOrUndefined Nothing), "LastUpdateTimestamp": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Output": (NullOrUndefined Nothing), "RoleArn": (NullOrUndefined Nothing), "Settings": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "StreamProcessorArn": (NullOrUndefined Nothing) }

-- | Constructs DescribeStreamProcessorResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStreamProcessorResponse' :: ( { "Name" :: NullOrUndefined (StreamProcessorName) , "StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn) , "Status" :: NullOrUndefined (StreamProcessorStatus) , "StatusMessage" :: NullOrUndefined (String) , "CreationTimestamp" :: NullOrUndefined (DateTime) , "LastUpdateTimestamp" :: NullOrUndefined (DateTime) , "Input" :: NullOrUndefined (StreamProcessorInput) , "Output" :: NullOrUndefined (StreamProcessorOutput) , "RoleArn" :: NullOrUndefined (RoleArn) , "Settings" :: NullOrUndefined (StreamProcessorSettings) } -> {"Name" :: NullOrUndefined (StreamProcessorName) , "StreamProcessorArn" :: NullOrUndefined (StreamProcessorArn) , "Status" :: NullOrUndefined (StreamProcessorStatus) , "StatusMessage" :: NullOrUndefined (String) , "CreationTimestamp" :: NullOrUndefined (DateTime) , "LastUpdateTimestamp" :: NullOrUndefined (DateTime) , "Input" :: NullOrUndefined (StreamProcessorInput) , "Output" :: NullOrUndefined (StreamProcessorOutput) , "RoleArn" :: NullOrUndefined (RoleArn) , "Settings" :: NullOrUndefined (StreamProcessorSettings) } ) -> DescribeStreamProcessorResponse
newDescribeStreamProcessorResponse'  customize = (DescribeStreamProcessorResponse <<< customize) { "CreationTimestamp": (NullOrUndefined Nothing), "Input": (NullOrUndefined Nothing), "LastUpdateTimestamp": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Output": (NullOrUndefined Nothing), "RoleArn": (NullOrUndefined Nothing), "Settings": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "StreamProcessorArn": (NullOrUndefined Nothing) }



newtype DetectFacesRequest = DetectFacesRequest 
  { "Image" :: (Image)
  , "Attributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypeDetectFacesRequest :: Newtype DetectFacesRequest _
derive instance repGenericDetectFacesRequest :: Generic DetectFacesRequest _
instance showDetectFacesRequest :: Show DetectFacesRequest where show = genericShow
instance decodeDetectFacesRequest :: Decode DetectFacesRequest where decode = genericDecode options
instance encodeDetectFacesRequest :: Encode DetectFacesRequest where encode = genericEncode options

-- | Constructs DetectFacesRequest from required parameters
newDetectFacesRequest :: Image -> DetectFacesRequest
newDetectFacesRequest _Image = DetectFacesRequest { "Image": _Image, "Attributes": (NullOrUndefined Nothing) }

-- | Constructs DetectFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectFacesRequest' :: Image -> ( { "Image" :: (Image) , "Attributes" :: NullOrUndefined (Attributes) } -> {"Image" :: (Image) , "Attributes" :: NullOrUndefined (Attributes) } ) -> DetectFacesRequest
newDetectFacesRequest' _Image customize = (DetectFacesRequest <<< customize) { "Image": _Image, "Attributes": (NullOrUndefined Nothing) }



newtype DetectFacesResponse = DetectFacesResponse 
  { "FaceDetails" :: NullOrUndefined (FaceDetailList)
  , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  }
derive instance newtypeDetectFacesResponse :: Newtype DetectFacesResponse _
derive instance repGenericDetectFacesResponse :: Generic DetectFacesResponse _
instance showDetectFacesResponse :: Show DetectFacesResponse where show = genericShow
instance decodeDetectFacesResponse :: Decode DetectFacesResponse where decode = genericDecode options
instance encodeDetectFacesResponse :: Encode DetectFacesResponse where encode = genericEncode options

-- | Constructs DetectFacesResponse from required parameters
newDetectFacesResponse :: DetectFacesResponse
newDetectFacesResponse  = DetectFacesResponse { "FaceDetails": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }

-- | Constructs DetectFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectFacesResponse' :: ( { "FaceDetails" :: NullOrUndefined (FaceDetailList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } -> {"FaceDetails" :: NullOrUndefined (FaceDetailList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } ) -> DetectFacesResponse
newDetectFacesResponse'  customize = (DetectFacesResponse <<< customize) { "FaceDetails": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }



newtype DetectLabelsRequest = DetectLabelsRequest 
  { "Image" :: (Image)
  , "MaxLabels" :: NullOrUndefined (UInteger)
  , "MinConfidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeDetectLabelsRequest :: Newtype DetectLabelsRequest _
derive instance repGenericDetectLabelsRequest :: Generic DetectLabelsRequest _
instance showDetectLabelsRequest :: Show DetectLabelsRequest where show = genericShow
instance decodeDetectLabelsRequest :: Decode DetectLabelsRequest where decode = genericDecode options
instance encodeDetectLabelsRequest :: Encode DetectLabelsRequest where encode = genericEncode options

-- | Constructs DetectLabelsRequest from required parameters
newDetectLabelsRequest :: Image -> DetectLabelsRequest
newDetectLabelsRequest _Image = DetectLabelsRequest { "Image": _Image, "MaxLabels": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing) }

-- | Constructs DetectLabelsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectLabelsRequest' :: Image -> ( { "Image" :: (Image) , "MaxLabels" :: NullOrUndefined (UInteger) , "MinConfidence" :: NullOrUndefined (Percent) } -> {"Image" :: (Image) , "MaxLabels" :: NullOrUndefined (UInteger) , "MinConfidence" :: NullOrUndefined (Percent) } ) -> DetectLabelsRequest
newDetectLabelsRequest' _Image customize = (DetectLabelsRequest <<< customize) { "Image": _Image, "MaxLabels": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing) }



newtype DetectLabelsResponse = DetectLabelsResponse 
  { "Labels" :: NullOrUndefined (Labels)
  , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  }
derive instance newtypeDetectLabelsResponse :: Newtype DetectLabelsResponse _
derive instance repGenericDetectLabelsResponse :: Generic DetectLabelsResponse _
instance showDetectLabelsResponse :: Show DetectLabelsResponse where show = genericShow
instance decodeDetectLabelsResponse :: Decode DetectLabelsResponse where decode = genericDecode options
instance encodeDetectLabelsResponse :: Encode DetectLabelsResponse where encode = genericEncode options

-- | Constructs DetectLabelsResponse from required parameters
newDetectLabelsResponse :: DetectLabelsResponse
newDetectLabelsResponse  = DetectLabelsResponse { "Labels": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }

-- | Constructs DetectLabelsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectLabelsResponse' :: ( { "Labels" :: NullOrUndefined (Labels) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } -> {"Labels" :: NullOrUndefined (Labels) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } ) -> DetectLabelsResponse
newDetectLabelsResponse'  customize = (DetectLabelsResponse <<< customize) { "Labels": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }



newtype DetectModerationLabelsRequest = DetectModerationLabelsRequest 
  { "Image" :: (Image)
  , "MinConfidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeDetectModerationLabelsRequest :: Newtype DetectModerationLabelsRequest _
derive instance repGenericDetectModerationLabelsRequest :: Generic DetectModerationLabelsRequest _
instance showDetectModerationLabelsRequest :: Show DetectModerationLabelsRequest where show = genericShow
instance decodeDetectModerationLabelsRequest :: Decode DetectModerationLabelsRequest where decode = genericDecode options
instance encodeDetectModerationLabelsRequest :: Encode DetectModerationLabelsRequest where encode = genericEncode options

-- | Constructs DetectModerationLabelsRequest from required parameters
newDetectModerationLabelsRequest :: Image -> DetectModerationLabelsRequest
newDetectModerationLabelsRequest _Image = DetectModerationLabelsRequest { "Image": _Image, "MinConfidence": (NullOrUndefined Nothing) }

-- | Constructs DetectModerationLabelsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectModerationLabelsRequest' :: Image -> ( { "Image" :: (Image) , "MinConfidence" :: NullOrUndefined (Percent) } -> {"Image" :: (Image) , "MinConfidence" :: NullOrUndefined (Percent) } ) -> DetectModerationLabelsRequest
newDetectModerationLabelsRequest' _Image customize = (DetectModerationLabelsRequest <<< customize) { "Image": _Image, "MinConfidence": (NullOrUndefined Nothing) }



newtype DetectModerationLabelsResponse = DetectModerationLabelsResponse 
  { "ModerationLabels" :: NullOrUndefined (ModerationLabels)
  }
derive instance newtypeDetectModerationLabelsResponse :: Newtype DetectModerationLabelsResponse _
derive instance repGenericDetectModerationLabelsResponse :: Generic DetectModerationLabelsResponse _
instance showDetectModerationLabelsResponse :: Show DetectModerationLabelsResponse where show = genericShow
instance decodeDetectModerationLabelsResponse :: Decode DetectModerationLabelsResponse where decode = genericDecode options
instance encodeDetectModerationLabelsResponse :: Encode DetectModerationLabelsResponse where encode = genericEncode options

-- | Constructs DetectModerationLabelsResponse from required parameters
newDetectModerationLabelsResponse :: DetectModerationLabelsResponse
newDetectModerationLabelsResponse  = DetectModerationLabelsResponse { "ModerationLabels": (NullOrUndefined Nothing) }

-- | Constructs DetectModerationLabelsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectModerationLabelsResponse' :: ( { "ModerationLabels" :: NullOrUndefined (ModerationLabels) } -> {"ModerationLabels" :: NullOrUndefined (ModerationLabels) } ) -> DetectModerationLabelsResponse
newDetectModerationLabelsResponse'  customize = (DetectModerationLabelsResponse <<< customize) { "ModerationLabels": (NullOrUndefined Nothing) }



newtype DetectTextRequest = DetectTextRequest 
  { "Image" :: (Image)
  }
derive instance newtypeDetectTextRequest :: Newtype DetectTextRequest _
derive instance repGenericDetectTextRequest :: Generic DetectTextRequest _
instance showDetectTextRequest :: Show DetectTextRequest where show = genericShow
instance decodeDetectTextRequest :: Decode DetectTextRequest where decode = genericDecode options
instance encodeDetectTextRequest :: Encode DetectTextRequest where encode = genericEncode options

-- | Constructs DetectTextRequest from required parameters
newDetectTextRequest :: Image -> DetectTextRequest
newDetectTextRequest _Image = DetectTextRequest { "Image": _Image }

-- | Constructs DetectTextRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectTextRequest' :: Image -> ( { "Image" :: (Image) } -> {"Image" :: (Image) } ) -> DetectTextRequest
newDetectTextRequest' _Image customize = (DetectTextRequest <<< customize) { "Image": _Image }



newtype DetectTextResponse = DetectTextResponse 
  { "TextDetections" :: NullOrUndefined (TextDetectionList)
  }
derive instance newtypeDetectTextResponse :: Newtype DetectTextResponse _
derive instance repGenericDetectTextResponse :: Generic DetectTextResponse _
instance showDetectTextResponse :: Show DetectTextResponse where show = genericShow
instance decodeDetectTextResponse :: Decode DetectTextResponse where decode = genericDecode options
instance encodeDetectTextResponse :: Encode DetectTextResponse where encode = genericEncode options

-- | Constructs DetectTextResponse from required parameters
newDetectTextResponse :: DetectTextResponse
newDetectTextResponse  = DetectTextResponse { "TextDetections": (NullOrUndefined Nothing) }

-- | Constructs DetectTextResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetectTextResponse' :: ( { "TextDetections" :: NullOrUndefined (TextDetectionList) } -> {"TextDetections" :: NullOrUndefined (TextDetectionList) } ) -> DetectTextResponse
newDetectTextResponse'  customize = (DetectTextResponse <<< customize) { "TextDetections": (NullOrUndefined Nothing) }



-- | <p>The emotions detected on the face, and the confidence level in the determination. For example, HAPPY, SAD, and ANGRY.</p>
newtype Emotion = Emotion 
  { "Type" :: NullOrUndefined (EmotionName)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeEmotion :: Newtype Emotion _
derive instance repGenericEmotion :: Generic Emotion _
instance showEmotion :: Show Emotion where show = genericShow
instance decodeEmotion :: Decode Emotion where decode = genericDecode options
instance encodeEmotion :: Encode Emotion where encode = genericEncode options

-- | Constructs Emotion from required parameters
newEmotion :: Emotion
newEmotion  = Emotion { "Confidence": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Emotion's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEmotion' :: ( { "Type" :: NullOrUndefined (EmotionName) , "Confidence" :: NullOrUndefined (Percent) } -> {"Type" :: NullOrUndefined (EmotionName) , "Confidence" :: NullOrUndefined (Percent) } ) -> Emotion
newEmotion'  customize = (Emotion <<< customize) { "Confidence": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype EmotionName = EmotionName String
derive instance newtypeEmotionName :: Newtype EmotionName _
derive instance repGenericEmotionName :: Generic EmotionName _
instance showEmotionName :: Show EmotionName where show = genericShow
instance decodeEmotionName :: Decode EmotionName where decode = genericDecode options
instance encodeEmotionName :: Encode EmotionName where encode = genericEncode options



newtype Emotions = Emotions (Array Emotion)
derive instance newtypeEmotions :: Newtype Emotions _
derive instance repGenericEmotions :: Generic Emotions _
instance showEmotions :: Show Emotions where show = genericShow
instance decodeEmotions :: Decode Emotions where decode = genericDecode options
instance encodeEmotions :: Encode Emotions where encode = genericEncode options



newtype ExternalImageId = ExternalImageId String
derive instance newtypeExternalImageId :: Newtype ExternalImageId _
derive instance repGenericExternalImageId :: Generic ExternalImageId _
instance showExternalImageId :: Show ExternalImageId where show = genericShow
instance decodeExternalImageId :: Decode ExternalImageId where decode = genericDecode options
instance encodeExternalImageId :: Encode ExternalImageId where encode = genericEncode options



-- | <p>Indicates whether or not the eyes on the face are open, and the confidence level in the determination.</p>
newtype EyeOpen = EyeOpen 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeEyeOpen :: Newtype EyeOpen _
derive instance repGenericEyeOpen :: Generic EyeOpen _
instance showEyeOpen :: Show EyeOpen where show = genericShow
instance decodeEyeOpen :: Decode EyeOpen where decode = genericDecode options
instance encodeEyeOpen :: Encode EyeOpen where encode = genericEncode options

-- | Constructs EyeOpen from required parameters
newEyeOpen :: EyeOpen
newEyeOpen  = EyeOpen { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs EyeOpen's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEyeOpen' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> EyeOpen
newEyeOpen'  customize = (EyeOpen <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>Indicates whether or not the face is wearing eye glasses, and the confidence level in the determination.</p>
newtype Eyeglasses = Eyeglasses 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeEyeglasses :: Newtype Eyeglasses _
derive instance repGenericEyeglasses :: Generic Eyeglasses _
instance showEyeglasses :: Show Eyeglasses where show = genericShow
instance decodeEyeglasses :: Decode Eyeglasses where decode = genericDecode options
instance encodeEyeglasses :: Encode Eyeglasses where encode = genericEncode options

-- | Constructs Eyeglasses from required parameters
newEyeglasses :: Eyeglasses
newEyeglasses  = Eyeglasses { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Eyeglasses's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEyeglasses' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> Eyeglasses
newEyeglasses'  customize = (Eyeglasses <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>Describes the face properties such as the bounding box, face ID, image ID of the input image, and external image ID that you assigned. </p>
newtype Face = Face 
  { "FaceId" :: NullOrUndefined (FaceId)
  , "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "ImageId" :: NullOrUndefined (ImageId)
  , "ExternalImageId" :: NullOrUndefined (ExternalImageId)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeFace :: Newtype Face _
derive instance repGenericFace :: Generic Face _
instance showFace :: Show Face where show = genericShow
instance decodeFace :: Decode Face where decode = genericDecode options
instance encodeFace :: Encode Face where encode = genericEncode options

-- | Constructs Face from required parameters
newFace :: Face
newFace  = Face { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "ExternalImageId": (NullOrUndefined Nothing), "FaceId": (NullOrUndefined Nothing), "ImageId": (NullOrUndefined Nothing) }

-- | Constructs Face's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFace' :: ( { "FaceId" :: NullOrUndefined (FaceId) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "ImageId" :: NullOrUndefined (ImageId) , "ExternalImageId" :: NullOrUndefined (ExternalImageId) , "Confidence" :: NullOrUndefined (Percent) } -> {"FaceId" :: NullOrUndefined (FaceId) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "ImageId" :: NullOrUndefined (ImageId) , "ExternalImageId" :: NullOrUndefined (ExternalImageId) , "Confidence" :: NullOrUndefined (Percent) } ) -> Face
newFace'  customize = (Face <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "ExternalImageId": (NullOrUndefined Nothing), "FaceId": (NullOrUndefined Nothing), "ImageId": (NullOrUndefined Nothing) }



newtype FaceAttributes = FaceAttributes String
derive instance newtypeFaceAttributes :: Newtype FaceAttributes _
derive instance repGenericFaceAttributes :: Generic FaceAttributes _
instance showFaceAttributes :: Show FaceAttributes where show = genericShow
instance decodeFaceAttributes :: Decode FaceAttributes where decode = genericDecode options
instance encodeFaceAttributes :: Encode FaceAttributes where encode = genericEncode options



-- | <p>Structure containing attributes of the face that the algorithm detected.</p>
newtype FaceDetail = FaceDetail 
  { "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "AgeRange" :: NullOrUndefined (AgeRange)
  , "Smile" :: NullOrUndefined (Smile)
  , "Eyeglasses" :: NullOrUndefined (Eyeglasses)
  , "Sunglasses" :: NullOrUndefined (Sunglasses)
  , "Gender" :: NullOrUndefined (Gender)
  , "Beard" :: NullOrUndefined (Beard)
  , "Mustache" :: NullOrUndefined (Mustache)
  , "EyesOpen" :: NullOrUndefined (EyeOpen)
  , "MouthOpen" :: NullOrUndefined (MouthOpen)
  , "Emotions" :: NullOrUndefined (Emotions)
  , "Landmarks" :: NullOrUndefined (Landmarks)
  , "Pose" :: NullOrUndefined (Pose)
  , "Quality" :: NullOrUndefined (ImageQuality)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeFaceDetail :: Newtype FaceDetail _
derive instance repGenericFaceDetail :: Generic FaceDetail _
instance showFaceDetail :: Show FaceDetail where show = genericShow
instance decodeFaceDetail :: Decode FaceDetail where decode = genericDecode options
instance encodeFaceDetail :: Encode FaceDetail where encode = genericEncode options

-- | Constructs FaceDetail from required parameters
newFaceDetail :: FaceDetail
newFaceDetail  = FaceDetail { "AgeRange": (NullOrUndefined Nothing), "Beard": (NullOrUndefined Nothing), "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Emotions": (NullOrUndefined Nothing), "Eyeglasses": (NullOrUndefined Nothing), "EyesOpen": (NullOrUndefined Nothing), "Gender": (NullOrUndefined Nothing), "Landmarks": (NullOrUndefined Nothing), "MouthOpen": (NullOrUndefined Nothing), "Mustache": (NullOrUndefined Nothing), "Pose": (NullOrUndefined Nothing), "Quality": (NullOrUndefined Nothing), "Smile": (NullOrUndefined Nothing), "Sunglasses": (NullOrUndefined Nothing) }

-- | Constructs FaceDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaceDetail' :: ( { "BoundingBox" :: NullOrUndefined (BoundingBox) , "AgeRange" :: NullOrUndefined (AgeRange) , "Smile" :: NullOrUndefined (Smile) , "Eyeglasses" :: NullOrUndefined (Eyeglasses) , "Sunglasses" :: NullOrUndefined (Sunglasses) , "Gender" :: NullOrUndefined (Gender) , "Beard" :: NullOrUndefined (Beard) , "Mustache" :: NullOrUndefined (Mustache) , "EyesOpen" :: NullOrUndefined (EyeOpen) , "MouthOpen" :: NullOrUndefined (MouthOpen) , "Emotions" :: NullOrUndefined (Emotions) , "Landmarks" :: NullOrUndefined (Landmarks) , "Pose" :: NullOrUndefined (Pose) , "Quality" :: NullOrUndefined (ImageQuality) , "Confidence" :: NullOrUndefined (Percent) } -> {"BoundingBox" :: NullOrUndefined (BoundingBox) , "AgeRange" :: NullOrUndefined (AgeRange) , "Smile" :: NullOrUndefined (Smile) , "Eyeglasses" :: NullOrUndefined (Eyeglasses) , "Sunglasses" :: NullOrUndefined (Sunglasses) , "Gender" :: NullOrUndefined (Gender) , "Beard" :: NullOrUndefined (Beard) , "Mustache" :: NullOrUndefined (Mustache) , "EyesOpen" :: NullOrUndefined (EyeOpen) , "MouthOpen" :: NullOrUndefined (MouthOpen) , "Emotions" :: NullOrUndefined (Emotions) , "Landmarks" :: NullOrUndefined (Landmarks) , "Pose" :: NullOrUndefined (Pose) , "Quality" :: NullOrUndefined (ImageQuality) , "Confidence" :: NullOrUndefined (Percent) } ) -> FaceDetail
newFaceDetail'  customize = (FaceDetail <<< customize) { "AgeRange": (NullOrUndefined Nothing), "Beard": (NullOrUndefined Nothing), "BoundingBox": (NullOrUndefined Nothing), "Confidence": (NullOrUndefined Nothing), "Emotions": (NullOrUndefined Nothing), "Eyeglasses": (NullOrUndefined Nothing), "EyesOpen": (NullOrUndefined Nothing), "Gender": (NullOrUndefined Nothing), "Landmarks": (NullOrUndefined Nothing), "MouthOpen": (NullOrUndefined Nothing), "Mustache": (NullOrUndefined Nothing), "Pose": (NullOrUndefined Nothing), "Quality": (NullOrUndefined Nothing), "Smile": (NullOrUndefined Nothing), "Sunglasses": (NullOrUndefined Nothing) }



newtype FaceDetailList = FaceDetailList (Array FaceDetail)
derive instance newtypeFaceDetailList :: Newtype FaceDetailList _
derive instance repGenericFaceDetailList :: Generic FaceDetailList _
instance showFaceDetailList :: Show FaceDetailList where show = genericShow
instance decodeFaceDetailList :: Decode FaceDetailList where decode = genericDecode options
instance encodeFaceDetailList :: Encode FaceDetailList where encode = genericEncode options



-- | <p>Information about a face detected in a video analysis request and the time the face was detected in the video. </p>
newtype FaceDetection = FaceDetection 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "Face" :: NullOrUndefined (FaceDetail)
  }
derive instance newtypeFaceDetection :: Newtype FaceDetection _
derive instance repGenericFaceDetection :: Generic FaceDetection _
instance showFaceDetection :: Show FaceDetection where show = genericShow
instance decodeFaceDetection :: Decode FaceDetection where decode = genericDecode options
instance encodeFaceDetection :: Encode FaceDetection where encode = genericEncode options

-- | Constructs FaceDetection from required parameters
newFaceDetection :: FaceDetection
newFaceDetection  = FaceDetection { "Face": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs FaceDetection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaceDetection' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "Face" :: NullOrUndefined (FaceDetail) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "Face" :: NullOrUndefined (FaceDetail) } ) -> FaceDetection
newFaceDetection'  customize = (FaceDetection <<< customize) { "Face": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype FaceDetections = FaceDetections (Array FaceDetection)
derive instance newtypeFaceDetections :: Newtype FaceDetections _
derive instance repGenericFaceDetections :: Generic FaceDetections _
instance showFaceDetections :: Show FaceDetections where show = genericShow
instance decodeFaceDetections :: Decode FaceDetections where decode = genericDecode options
instance encodeFaceDetections :: Encode FaceDetections where encode = genericEncode options



newtype FaceId = FaceId String
derive instance newtypeFaceId :: Newtype FaceId _
derive instance repGenericFaceId :: Generic FaceId _
instance showFaceId :: Show FaceId where show = genericShow
instance decodeFaceId :: Decode FaceId where decode = genericDecode options
instance encodeFaceId :: Encode FaceId where encode = genericEncode options



newtype FaceIdList = FaceIdList (Array FaceId)
derive instance newtypeFaceIdList :: Newtype FaceIdList _
derive instance repGenericFaceIdList :: Generic FaceIdList _
instance showFaceIdList :: Show FaceIdList where show = genericShow
instance decodeFaceIdList :: Decode FaceIdList where decode = genericDecode options
instance encodeFaceIdList :: Encode FaceIdList where encode = genericEncode options



newtype FaceList = FaceList (Array Face)
derive instance newtypeFaceList :: Newtype FaceList _
derive instance repGenericFaceList :: Generic FaceList _
instance showFaceList :: Show FaceList where show = genericShow
instance decodeFaceList :: Decode FaceList where decode = genericDecode options
instance encodeFaceList :: Encode FaceList where encode = genericEncode options



-- | <p>Provides face metadata. In addition, it also provides the confidence in the match of this face with the input face.</p>
newtype FaceMatch = FaceMatch 
  { "Similarity" :: NullOrUndefined (Percent)
  , "Face" :: NullOrUndefined (Face)
  }
derive instance newtypeFaceMatch :: Newtype FaceMatch _
derive instance repGenericFaceMatch :: Generic FaceMatch _
instance showFaceMatch :: Show FaceMatch where show = genericShow
instance decodeFaceMatch :: Decode FaceMatch where decode = genericDecode options
instance encodeFaceMatch :: Encode FaceMatch where encode = genericEncode options

-- | Constructs FaceMatch from required parameters
newFaceMatch :: FaceMatch
newFaceMatch  = FaceMatch { "Face": (NullOrUndefined Nothing), "Similarity": (NullOrUndefined Nothing) }

-- | Constructs FaceMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaceMatch' :: ( { "Similarity" :: NullOrUndefined (Percent) , "Face" :: NullOrUndefined (Face) } -> {"Similarity" :: NullOrUndefined (Percent) , "Face" :: NullOrUndefined (Face) } ) -> FaceMatch
newFaceMatch'  customize = (FaceMatch <<< customize) { "Face": (NullOrUndefined Nothing), "Similarity": (NullOrUndefined Nothing) }



newtype FaceMatchList = FaceMatchList (Array FaceMatch)
derive instance newtypeFaceMatchList :: Newtype FaceMatchList _
derive instance repGenericFaceMatchList :: Generic FaceMatchList _
instance showFaceMatchList :: Show FaceMatchList where show = genericShow
instance decodeFaceMatchList :: Decode FaceMatchList where decode = genericDecode options
instance encodeFaceMatchList :: Encode FaceMatchList where encode = genericEncode options



newtype FaceModelVersionList = FaceModelVersionList (Array String)
derive instance newtypeFaceModelVersionList :: Newtype FaceModelVersionList _
derive instance repGenericFaceModelVersionList :: Generic FaceModelVersionList _
instance showFaceModelVersionList :: Show FaceModelVersionList where show = genericShow
instance decodeFaceModelVersionList :: Decode FaceModelVersionList where decode = genericDecode options
instance encodeFaceModelVersionList :: Encode FaceModelVersionList where encode = genericEncode options



-- | <p>Object containing both the face metadata (stored in the back-end database) and facial attributes that are detected but aren't stored in the database.</p>
newtype FaceRecord = FaceRecord 
  { "Face" :: NullOrUndefined (Face)
  , "FaceDetail" :: NullOrUndefined (FaceDetail)
  }
derive instance newtypeFaceRecord :: Newtype FaceRecord _
derive instance repGenericFaceRecord :: Generic FaceRecord _
instance showFaceRecord :: Show FaceRecord where show = genericShow
instance decodeFaceRecord :: Decode FaceRecord where decode = genericDecode options
instance encodeFaceRecord :: Encode FaceRecord where encode = genericEncode options

-- | Constructs FaceRecord from required parameters
newFaceRecord :: FaceRecord
newFaceRecord  = FaceRecord { "Face": (NullOrUndefined Nothing), "FaceDetail": (NullOrUndefined Nothing) }

-- | Constructs FaceRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaceRecord' :: ( { "Face" :: NullOrUndefined (Face) , "FaceDetail" :: NullOrUndefined (FaceDetail) } -> {"Face" :: NullOrUndefined (Face) , "FaceDetail" :: NullOrUndefined (FaceDetail) } ) -> FaceRecord
newFaceRecord'  customize = (FaceRecord <<< customize) { "Face": (NullOrUndefined Nothing), "FaceDetail": (NullOrUndefined Nothing) }



newtype FaceRecordList = FaceRecordList (Array FaceRecord)
derive instance newtypeFaceRecordList :: Newtype FaceRecordList _
derive instance repGenericFaceRecordList :: Generic FaceRecordList _
instance showFaceRecordList :: Show FaceRecordList where show = genericShow
instance decodeFaceRecordList :: Decode FaceRecordList where decode = genericDecode options
instance encodeFaceRecordList :: Encode FaceRecordList where encode = genericEncode options



-- | <p>Input face recognition parameters for an Amazon Rekognition stream processor. <code>FaceRecognitionSettings</code> is a request parameter for .</p>
newtype FaceSearchSettings = FaceSearchSettings 
  { "CollectionId" :: NullOrUndefined (CollectionId)
  , "FaceMatchThreshold" :: NullOrUndefined (Percent)
  }
derive instance newtypeFaceSearchSettings :: Newtype FaceSearchSettings _
derive instance repGenericFaceSearchSettings :: Generic FaceSearchSettings _
instance showFaceSearchSettings :: Show FaceSearchSettings where show = genericShow
instance decodeFaceSearchSettings :: Decode FaceSearchSettings where decode = genericDecode options
instance encodeFaceSearchSettings :: Encode FaceSearchSettings where encode = genericEncode options

-- | Constructs FaceSearchSettings from required parameters
newFaceSearchSettings :: FaceSearchSettings
newFaceSearchSettings  = FaceSearchSettings { "CollectionId": (NullOrUndefined Nothing), "FaceMatchThreshold": (NullOrUndefined Nothing) }

-- | Constructs FaceSearchSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaceSearchSettings' :: ( { "CollectionId" :: NullOrUndefined (CollectionId) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } -> {"CollectionId" :: NullOrUndefined (CollectionId) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } ) -> FaceSearchSettings
newFaceSearchSettings'  customize = (FaceSearchSettings <<< customize) { "CollectionId": (NullOrUndefined Nothing), "FaceMatchThreshold": (NullOrUndefined Nothing) }



newtype FaceSearchSortBy = FaceSearchSortBy String
derive instance newtypeFaceSearchSortBy :: Newtype FaceSearchSortBy _
derive instance repGenericFaceSearchSortBy :: Generic FaceSearchSortBy _
instance showFaceSearchSortBy :: Show FaceSearchSortBy where show = genericShow
instance decodeFaceSearchSortBy :: Decode FaceSearchSortBy where decode = genericDecode options
instance encodeFaceSearchSortBy :: Encode FaceSearchSortBy where encode = genericEncode options



-- | <p>Gender of the face and the confidence level in the determination.</p>
newtype Gender = Gender 
  { "Value" :: NullOrUndefined (GenderType)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeGender :: Newtype Gender _
derive instance repGenericGender :: Generic Gender _
instance showGender :: Show Gender where show = genericShow
instance decodeGender :: Decode Gender where decode = genericDecode options
instance encodeGender :: Encode Gender where encode = genericEncode options

-- | Constructs Gender from required parameters
newGender :: Gender
newGender  = Gender { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Gender's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGender' :: ( { "Value" :: NullOrUndefined (GenderType) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (GenderType) , "Confidence" :: NullOrUndefined (Percent) } ) -> Gender
newGender'  customize = (Gender <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype GenderType = GenderType String
derive instance newtypeGenderType :: Newtype GenderType _
derive instance repGenericGenderType :: Generic GenderType _
instance showGenderType :: Show GenderType where show = genericShow
instance decodeGenderType :: Decode GenderType where decode = genericDecode options
instance encodeGenderType :: Encode GenderType where encode = genericEncode options



-- | <p>Information about where text detected by is located on an image.</p>
newtype Geometry = Geometry 
  { "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "Polygon" :: NullOrUndefined (Polygon)
  }
derive instance newtypeGeometry :: Newtype Geometry _
derive instance repGenericGeometry :: Generic Geometry _
instance showGeometry :: Show Geometry where show = genericShow
instance decodeGeometry :: Decode Geometry where decode = genericDecode options
instance encodeGeometry :: Encode Geometry where encode = genericEncode options

-- | Constructs Geometry from required parameters
newGeometry :: Geometry
newGeometry  = Geometry { "BoundingBox": (NullOrUndefined Nothing), "Polygon": (NullOrUndefined Nothing) }

-- | Constructs Geometry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGeometry' :: ( { "BoundingBox" :: NullOrUndefined (BoundingBox) , "Polygon" :: NullOrUndefined (Polygon) } -> {"BoundingBox" :: NullOrUndefined (BoundingBox) , "Polygon" :: NullOrUndefined (Polygon) } ) -> Geometry
newGeometry'  customize = (Geometry <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Polygon": (NullOrUndefined Nothing) }



newtype GetCelebrityInfoRequest = GetCelebrityInfoRequest 
  { "Id" :: (RekognitionUniqueId)
  }
derive instance newtypeGetCelebrityInfoRequest :: Newtype GetCelebrityInfoRequest _
derive instance repGenericGetCelebrityInfoRequest :: Generic GetCelebrityInfoRequest _
instance showGetCelebrityInfoRequest :: Show GetCelebrityInfoRequest where show = genericShow
instance decodeGetCelebrityInfoRequest :: Decode GetCelebrityInfoRequest where decode = genericDecode options
instance encodeGetCelebrityInfoRequest :: Encode GetCelebrityInfoRequest where encode = genericEncode options

-- | Constructs GetCelebrityInfoRequest from required parameters
newGetCelebrityInfoRequest :: RekognitionUniqueId -> GetCelebrityInfoRequest
newGetCelebrityInfoRequest _Id = GetCelebrityInfoRequest { "Id": _Id }

-- | Constructs GetCelebrityInfoRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCelebrityInfoRequest' :: RekognitionUniqueId -> ( { "Id" :: (RekognitionUniqueId) } -> {"Id" :: (RekognitionUniqueId) } ) -> GetCelebrityInfoRequest
newGetCelebrityInfoRequest' _Id customize = (GetCelebrityInfoRequest <<< customize) { "Id": _Id }



newtype GetCelebrityInfoResponse = GetCelebrityInfoResponse 
  { "Urls" :: NullOrUndefined (Urls)
  , "Name" :: NullOrUndefined (String)
  }
derive instance newtypeGetCelebrityInfoResponse :: Newtype GetCelebrityInfoResponse _
derive instance repGenericGetCelebrityInfoResponse :: Generic GetCelebrityInfoResponse _
instance showGetCelebrityInfoResponse :: Show GetCelebrityInfoResponse where show = genericShow
instance decodeGetCelebrityInfoResponse :: Decode GetCelebrityInfoResponse where decode = genericDecode options
instance encodeGetCelebrityInfoResponse :: Encode GetCelebrityInfoResponse where encode = genericEncode options

-- | Constructs GetCelebrityInfoResponse from required parameters
newGetCelebrityInfoResponse :: GetCelebrityInfoResponse
newGetCelebrityInfoResponse  = GetCelebrityInfoResponse { "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }

-- | Constructs GetCelebrityInfoResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCelebrityInfoResponse' :: ( { "Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) } -> {"Urls" :: NullOrUndefined (Urls) , "Name" :: NullOrUndefined (String) } ) -> GetCelebrityInfoResponse
newGetCelebrityInfoResponse'  customize = (GetCelebrityInfoResponse <<< customize) { "Name": (NullOrUndefined Nothing), "Urls": (NullOrUndefined Nothing) }



newtype GetCelebrityRecognitionRequest = GetCelebrityRecognitionRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "SortBy" :: NullOrUndefined (CelebrityRecognitionSortBy)
  }
derive instance newtypeGetCelebrityRecognitionRequest :: Newtype GetCelebrityRecognitionRequest _
derive instance repGenericGetCelebrityRecognitionRequest :: Generic GetCelebrityRecognitionRequest _
instance showGetCelebrityRecognitionRequest :: Show GetCelebrityRecognitionRequest where show = genericShow
instance decodeGetCelebrityRecognitionRequest :: Decode GetCelebrityRecognitionRequest where decode = genericDecode options
instance encodeGetCelebrityRecognitionRequest :: Encode GetCelebrityRecognitionRequest where encode = genericEncode options

-- | Constructs GetCelebrityRecognitionRequest from required parameters
newGetCelebrityRecognitionRequest :: JobId -> GetCelebrityRecognitionRequest
newGetCelebrityRecognitionRequest _JobId = GetCelebrityRecognitionRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }

-- | Constructs GetCelebrityRecognitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCelebrityRecognitionRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (CelebrityRecognitionSortBy) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (CelebrityRecognitionSortBy) } ) -> GetCelebrityRecognitionRequest
newGetCelebrityRecognitionRequest' _JobId customize = (GetCelebrityRecognitionRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }



newtype GetCelebrityRecognitionResponse = GetCelebrityRecognitionResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "Celebrities" :: NullOrUndefined (CelebrityRecognitions)
  }
derive instance newtypeGetCelebrityRecognitionResponse :: Newtype GetCelebrityRecognitionResponse _
derive instance repGenericGetCelebrityRecognitionResponse :: Generic GetCelebrityRecognitionResponse _
instance showGetCelebrityRecognitionResponse :: Show GetCelebrityRecognitionResponse where show = genericShow
instance decodeGetCelebrityRecognitionResponse :: Decode GetCelebrityRecognitionResponse where decode = genericDecode options
instance encodeGetCelebrityRecognitionResponse :: Encode GetCelebrityRecognitionResponse where encode = genericEncode options

-- | Constructs GetCelebrityRecognitionResponse from required parameters
newGetCelebrityRecognitionResponse :: GetCelebrityRecognitionResponse
newGetCelebrityRecognitionResponse  = GetCelebrityRecognitionResponse { "Celebrities": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetCelebrityRecognitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetCelebrityRecognitionResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Celebrities" :: NullOrUndefined (CelebrityRecognitions) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Celebrities" :: NullOrUndefined (CelebrityRecognitions) } ) -> GetCelebrityRecognitionResponse
newGetCelebrityRecognitionResponse'  customize = (GetCelebrityRecognitionResponse <<< customize) { "Celebrities": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



newtype GetContentModerationRequest = GetContentModerationRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "SortBy" :: NullOrUndefined (ContentModerationSortBy)
  }
derive instance newtypeGetContentModerationRequest :: Newtype GetContentModerationRequest _
derive instance repGenericGetContentModerationRequest :: Generic GetContentModerationRequest _
instance showGetContentModerationRequest :: Show GetContentModerationRequest where show = genericShow
instance decodeGetContentModerationRequest :: Decode GetContentModerationRequest where decode = genericDecode options
instance encodeGetContentModerationRequest :: Encode GetContentModerationRequest where encode = genericEncode options

-- | Constructs GetContentModerationRequest from required parameters
newGetContentModerationRequest :: JobId -> GetContentModerationRequest
newGetContentModerationRequest _JobId = GetContentModerationRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }

-- | Constructs GetContentModerationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContentModerationRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (ContentModerationSortBy) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (ContentModerationSortBy) } ) -> GetContentModerationRequest
newGetContentModerationRequest' _JobId customize = (GetContentModerationRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }



newtype GetContentModerationResponse = GetContentModerationResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "ModerationLabels" :: NullOrUndefined (ContentModerationDetections)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  }
derive instance newtypeGetContentModerationResponse :: Newtype GetContentModerationResponse _
derive instance repGenericGetContentModerationResponse :: Generic GetContentModerationResponse _
instance showGetContentModerationResponse :: Show GetContentModerationResponse where show = genericShow
instance decodeGetContentModerationResponse :: Decode GetContentModerationResponse where decode = genericDecode options
instance encodeGetContentModerationResponse :: Encode GetContentModerationResponse where encode = genericEncode options

-- | Constructs GetContentModerationResponse from required parameters
newGetContentModerationResponse :: GetContentModerationResponse
newGetContentModerationResponse  = GetContentModerationResponse { "JobStatus": (NullOrUndefined Nothing), "ModerationLabels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetContentModerationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetContentModerationResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "ModerationLabels" :: NullOrUndefined (ContentModerationDetections) , "NextToken" :: NullOrUndefined (PaginationToken) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "ModerationLabels" :: NullOrUndefined (ContentModerationDetections) , "NextToken" :: NullOrUndefined (PaginationToken) } ) -> GetContentModerationResponse
newGetContentModerationResponse'  customize = (GetContentModerationResponse <<< customize) { "JobStatus": (NullOrUndefined Nothing), "ModerationLabels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



newtype GetFaceDetectionRequest = GetFaceDetectionRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  }
derive instance newtypeGetFaceDetectionRequest :: Newtype GetFaceDetectionRequest _
derive instance repGenericGetFaceDetectionRequest :: Generic GetFaceDetectionRequest _
instance showGetFaceDetectionRequest :: Show GetFaceDetectionRequest where show = genericShow
instance decodeGetFaceDetectionRequest :: Decode GetFaceDetectionRequest where decode = genericDecode options
instance encodeGetFaceDetectionRequest :: Encode GetFaceDetectionRequest where encode = genericEncode options

-- | Constructs GetFaceDetectionRequest from required parameters
newGetFaceDetectionRequest :: JobId -> GetFaceDetectionRequest
newGetFaceDetectionRequest _JobId = GetFaceDetectionRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetFaceDetectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFaceDetectionRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) } ) -> GetFaceDetectionRequest
newGetFaceDetectionRequest' _JobId customize = (GetFaceDetectionRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype GetFaceDetectionResponse = GetFaceDetectionResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "Faces" :: NullOrUndefined (FaceDetections)
  }
derive instance newtypeGetFaceDetectionResponse :: Newtype GetFaceDetectionResponse _
derive instance repGenericGetFaceDetectionResponse :: Generic GetFaceDetectionResponse _
instance showGetFaceDetectionResponse :: Show GetFaceDetectionResponse where show = genericShow
instance decodeGetFaceDetectionResponse :: Decode GetFaceDetectionResponse where decode = genericDecode options
instance encodeGetFaceDetectionResponse :: Encode GetFaceDetectionResponse where encode = genericEncode options

-- | Constructs GetFaceDetectionResponse from required parameters
newGetFaceDetectionResponse :: GetFaceDetectionResponse
newGetFaceDetectionResponse  = GetFaceDetectionResponse { "Faces": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetFaceDetectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFaceDetectionResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Faces" :: NullOrUndefined (FaceDetections) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Faces" :: NullOrUndefined (FaceDetections) } ) -> GetFaceDetectionResponse
newGetFaceDetectionResponse'  customize = (GetFaceDetectionResponse <<< customize) { "Faces": (NullOrUndefined Nothing), "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



newtype GetFaceSearchRequest = GetFaceSearchRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "SortBy" :: NullOrUndefined (FaceSearchSortBy)
  }
derive instance newtypeGetFaceSearchRequest :: Newtype GetFaceSearchRequest _
derive instance repGenericGetFaceSearchRequest :: Generic GetFaceSearchRequest _
instance showGetFaceSearchRequest :: Show GetFaceSearchRequest where show = genericShow
instance decodeGetFaceSearchRequest :: Decode GetFaceSearchRequest where decode = genericDecode options
instance encodeGetFaceSearchRequest :: Encode GetFaceSearchRequest where encode = genericEncode options

-- | Constructs GetFaceSearchRequest from required parameters
newGetFaceSearchRequest :: JobId -> GetFaceSearchRequest
newGetFaceSearchRequest _JobId = GetFaceSearchRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }

-- | Constructs GetFaceSearchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFaceSearchRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (FaceSearchSortBy) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (FaceSearchSortBy) } ) -> GetFaceSearchRequest
newGetFaceSearchRequest' _JobId customize = (GetFaceSearchRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }



newtype GetFaceSearchResponse = GetFaceSearchResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "Persons" :: NullOrUndefined (PersonMatches)
  }
derive instance newtypeGetFaceSearchResponse :: Newtype GetFaceSearchResponse _
derive instance repGenericGetFaceSearchResponse :: Generic GetFaceSearchResponse _
instance showGetFaceSearchResponse :: Show GetFaceSearchResponse where show = genericShow
instance decodeGetFaceSearchResponse :: Decode GetFaceSearchResponse where decode = genericDecode options
instance encodeGetFaceSearchResponse :: Encode GetFaceSearchResponse where encode = genericEncode options

-- | Constructs GetFaceSearchResponse from required parameters
newGetFaceSearchResponse :: GetFaceSearchResponse
newGetFaceSearchResponse  = GetFaceSearchResponse { "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Persons": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetFaceSearchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetFaceSearchResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "NextToken" :: NullOrUndefined (PaginationToken) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "Persons" :: NullOrUndefined (PersonMatches) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "NextToken" :: NullOrUndefined (PaginationToken) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "Persons" :: NullOrUndefined (PersonMatches) } ) -> GetFaceSearchResponse
newGetFaceSearchResponse'  customize = (GetFaceSearchResponse <<< customize) { "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Persons": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



newtype GetLabelDetectionRequest = GetLabelDetectionRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "SortBy" :: NullOrUndefined (LabelDetectionSortBy)
  }
derive instance newtypeGetLabelDetectionRequest :: Newtype GetLabelDetectionRequest _
derive instance repGenericGetLabelDetectionRequest :: Generic GetLabelDetectionRequest _
instance showGetLabelDetectionRequest :: Show GetLabelDetectionRequest where show = genericShow
instance decodeGetLabelDetectionRequest :: Decode GetLabelDetectionRequest where decode = genericDecode options
instance encodeGetLabelDetectionRequest :: Encode GetLabelDetectionRequest where encode = genericEncode options

-- | Constructs GetLabelDetectionRequest from required parameters
newGetLabelDetectionRequest :: JobId -> GetLabelDetectionRequest
newGetLabelDetectionRequest _JobId = GetLabelDetectionRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }

-- | Constructs GetLabelDetectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLabelDetectionRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (LabelDetectionSortBy) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (LabelDetectionSortBy) } ) -> GetLabelDetectionRequest
newGetLabelDetectionRequest' _JobId customize = (GetLabelDetectionRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }



newtype GetLabelDetectionResponse = GetLabelDetectionResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "Labels" :: NullOrUndefined (LabelDetections)
  }
derive instance newtypeGetLabelDetectionResponse :: Newtype GetLabelDetectionResponse _
derive instance repGenericGetLabelDetectionResponse :: Generic GetLabelDetectionResponse _
instance showGetLabelDetectionResponse :: Show GetLabelDetectionResponse where show = genericShow
instance decodeGetLabelDetectionResponse :: Decode GetLabelDetectionResponse where decode = genericDecode options
instance encodeGetLabelDetectionResponse :: Encode GetLabelDetectionResponse where encode = genericEncode options

-- | Constructs GetLabelDetectionResponse from required parameters
newGetLabelDetectionResponse :: GetLabelDetectionResponse
newGetLabelDetectionResponse  = GetLabelDetectionResponse { "JobStatus": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetLabelDetectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetLabelDetectionResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Labels" :: NullOrUndefined (LabelDetections) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Labels" :: NullOrUndefined (LabelDetections) } ) -> GetLabelDetectionResponse
newGetLabelDetectionResponse'  customize = (GetLabelDetectionResponse <<< customize) { "JobStatus": (NullOrUndefined Nothing), "Labels": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



newtype GetPersonTrackingRequest = GetPersonTrackingRequest 
  { "JobId" :: (JobId)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "SortBy" :: NullOrUndefined (PersonTrackingSortBy)
  }
derive instance newtypeGetPersonTrackingRequest :: Newtype GetPersonTrackingRequest _
derive instance repGenericGetPersonTrackingRequest :: Generic GetPersonTrackingRequest _
instance showGetPersonTrackingRequest :: Show GetPersonTrackingRequest where show = genericShow
instance decodeGetPersonTrackingRequest :: Decode GetPersonTrackingRequest where decode = genericDecode options
instance encodeGetPersonTrackingRequest :: Encode GetPersonTrackingRequest where encode = genericEncode options

-- | Constructs GetPersonTrackingRequest from required parameters
newGetPersonTrackingRequest :: JobId -> GetPersonTrackingRequest
newGetPersonTrackingRequest _JobId = GetPersonTrackingRequest { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }

-- | Constructs GetPersonTrackingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPersonTrackingRequest' :: JobId -> ( { "JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (PersonTrackingSortBy) } -> {"JobId" :: (JobId) , "MaxResults" :: NullOrUndefined (MaxResults) , "NextToken" :: NullOrUndefined (PaginationToken) , "SortBy" :: NullOrUndefined (PersonTrackingSortBy) } ) -> GetPersonTrackingRequest
newGetPersonTrackingRequest' _JobId customize = (GetPersonTrackingRequest <<< customize) { "JobId": _JobId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "SortBy": (NullOrUndefined Nothing) }



newtype GetPersonTrackingResponse = GetPersonTrackingResponse 
  { "JobStatus" :: NullOrUndefined (VideoJobStatus)
  , "StatusMessage" :: NullOrUndefined (StatusMessage)
  , "VideoMetadata" :: NullOrUndefined (VideoMetadata)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "Persons" :: NullOrUndefined (PersonDetections)
  }
derive instance newtypeGetPersonTrackingResponse :: Newtype GetPersonTrackingResponse _
derive instance repGenericGetPersonTrackingResponse :: Generic GetPersonTrackingResponse _
instance showGetPersonTrackingResponse :: Show GetPersonTrackingResponse where show = genericShow
instance decodeGetPersonTrackingResponse :: Decode GetPersonTrackingResponse where decode = genericDecode options
instance encodeGetPersonTrackingResponse :: Encode GetPersonTrackingResponse where encode = genericEncode options

-- | Constructs GetPersonTrackingResponse from required parameters
newGetPersonTrackingResponse :: GetPersonTrackingResponse
newGetPersonTrackingResponse  = GetPersonTrackingResponse { "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Persons": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }

-- | Constructs GetPersonTrackingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetPersonTrackingResponse' :: ( { "JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Persons" :: NullOrUndefined (PersonDetections) } -> {"JobStatus" :: NullOrUndefined (VideoJobStatus) , "StatusMessage" :: NullOrUndefined (StatusMessage) , "VideoMetadata" :: NullOrUndefined (VideoMetadata) , "NextToken" :: NullOrUndefined (PaginationToken) , "Persons" :: NullOrUndefined (PersonDetections) } ) -> GetPersonTrackingResponse
newGetPersonTrackingResponse'  customize = (GetPersonTrackingResponse <<< customize) { "JobStatus": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Persons": (NullOrUndefined Nothing), "StatusMessage": (NullOrUndefined Nothing), "VideoMetadata": (NullOrUndefined Nothing) }



-- | <p>A <code>ClientRequestToken</code> input parameter was reused with an operation, but at least one of the other input parameters is different from the previous call to the operation.</p>
newtype IdempotentParameterMismatchException = IdempotentParameterMismatchException Types.NoArguments
derive instance newtypeIdempotentParameterMismatchException :: Newtype IdempotentParameterMismatchException _
derive instance repGenericIdempotentParameterMismatchException :: Generic IdempotentParameterMismatchException _
instance showIdempotentParameterMismatchException :: Show IdempotentParameterMismatchException where show = genericShow
instance decodeIdempotentParameterMismatchException :: Decode IdempotentParameterMismatchException where decode = genericDecode options
instance encodeIdempotentParameterMismatchException :: Encode IdempotentParameterMismatchException where encode = genericEncode options



-- | <p>Provides the input image either as bytes or an S3 object.</p> <p>You pass image bytes to a Rekognition API operation by using the <code>Bytes</code> property. For example, you would use the <code>Bytes</code> property to pass an image loaded from a local file system. Image bytes passed by using the <code>Bytes</code> property must be base64-encoded. Your code may not need to encode image bytes if you are using an AWS SDK to call Rekognition API operations. For more information, see <a>images-bytes</a>.</p> <p> You pass images stored in an S3 bucket to a Rekognition API operation by using the <code>S3Object</code> property. Images stored in an S3 bucket do not need to be base64-encoded.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>If you use the Amazon CLI to call Amazon Rekognition operations, passing image bytes using the Bytes property is not supported. You must first upload the image to an Amazon S3 bucket and then call the operation using the S3Object property.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
newtype Image = Image 
  { "Bytes" :: NullOrUndefined (ImageBlob)
  , "S3Object" :: NullOrUndefined (S3Object)
  }
derive instance newtypeImage :: Newtype Image _
derive instance repGenericImage :: Generic Image _
instance showImage :: Show Image where show = genericShow
instance decodeImage :: Decode Image where decode = genericDecode options
instance encodeImage :: Encode Image where encode = genericEncode options

-- | Constructs Image from required parameters
newImage :: Image
newImage  = Image { "Bytes": (NullOrUndefined Nothing), "S3Object": (NullOrUndefined Nothing) }

-- | Constructs Image's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImage' :: ( { "Bytes" :: NullOrUndefined (ImageBlob) , "S3Object" :: NullOrUndefined (S3Object) } -> {"Bytes" :: NullOrUndefined (ImageBlob) , "S3Object" :: NullOrUndefined (S3Object) } ) -> Image
newImage'  customize = (Image <<< customize) { "Bytes": (NullOrUndefined Nothing), "S3Object": (NullOrUndefined Nothing) }



newtype ImageBlob = ImageBlob String
derive instance newtypeImageBlob :: Newtype ImageBlob _
derive instance repGenericImageBlob :: Generic ImageBlob _
instance showImageBlob :: Show ImageBlob where show = genericShow
instance decodeImageBlob :: Decode ImageBlob where decode = genericDecode options
instance encodeImageBlob :: Encode ImageBlob where encode = genericEncode options



newtype ImageId = ImageId String
derive instance newtypeImageId :: Newtype ImageId _
derive instance repGenericImageId :: Generic ImageId _
instance showImageId :: Show ImageId where show = genericShow
instance decodeImageId :: Decode ImageId where decode = genericDecode options
instance encodeImageId :: Encode ImageId where encode = genericEncode options



-- | <p>Identifies face image brightness and sharpness. </p>
newtype ImageQuality = ImageQuality 
  { "Brightness" :: NullOrUndefined (Number)
  , "Sharpness" :: NullOrUndefined (Number)
  }
derive instance newtypeImageQuality :: Newtype ImageQuality _
derive instance repGenericImageQuality :: Generic ImageQuality _
instance showImageQuality :: Show ImageQuality where show = genericShow
instance decodeImageQuality :: Decode ImageQuality where decode = genericDecode options
instance encodeImageQuality :: Encode ImageQuality where encode = genericEncode options

-- | Constructs ImageQuality from required parameters
newImageQuality :: ImageQuality
newImageQuality  = ImageQuality { "Brightness": (NullOrUndefined Nothing), "Sharpness": (NullOrUndefined Nothing) }

-- | Constructs ImageQuality's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newImageQuality' :: ( { "Brightness" :: NullOrUndefined (Number) , "Sharpness" :: NullOrUndefined (Number) } -> {"Brightness" :: NullOrUndefined (Number) , "Sharpness" :: NullOrUndefined (Number) } ) -> ImageQuality
newImageQuality'  customize = (ImageQuality <<< customize) { "Brightness": (NullOrUndefined Nothing), "Sharpness": (NullOrUndefined Nothing) }



-- | <p>The input image size exceeds the allowed limit. For more information, see <a>limits</a>. </p>
newtype ImageTooLargeException = ImageTooLargeException Types.NoArguments
derive instance newtypeImageTooLargeException :: Newtype ImageTooLargeException _
derive instance repGenericImageTooLargeException :: Generic ImageTooLargeException _
instance showImageTooLargeException :: Show ImageTooLargeException where show = genericShow
instance decodeImageTooLargeException :: Decode ImageTooLargeException where decode = genericDecode options
instance encodeImageTooLargeException :: Encode ImageTooLargeException where encode = genericEncode options



newtype IndexFacesRequest = IndexFacesRequest 
  { "CollectionId" :: (CollectionId)
  , "Image" :: (Image)
  , "ExternalImageId" :: NullOrUndefined (ExternalImageId)
  , "DetectionAttributes" :: NullOrUndefined (Attributes)
  }
derive instance newtypeIndexFacesRequest :: Newtype IndexFacesRequest _
derive instance repGenericIndexFacesRequest :: Generic IndexFacesRequest _
instance showIndexFacesRequest :: Show IndexFacesRequest where show = genericShow
instance decodeIndexFacesRequest :: Decode IndexFacesRequest where decode = genericDecode options
instance encodeIndexFacesRequest :: Encode IndexFacesRequest where encode = genericEncode options

-- | Constructs IndexFacesRequest from required parameters
newIndexFacesRequest :: CollectionId -> Image -> IndexFacesRequest
newIndexFacesRequest _CollectionId _Image = IndexFacesRequest { "CollectionId": _CollectionId, "Image": _Image, "DetectionAttributes": (NullOrUndefined Nothing), "ExternalImageId": (NullOrUndefined Nothing) }

-- | Constructs IndexFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexFacesRequest' :: CollectionId -> Image -> ( { "CollectionId" :: (CollectionId) , "Image" :: (Image) , "ExternalImageId" :: NullOrUndefined (ExternalImageId) , "DetectionAttributes" :: NullOrUndefined (Attributes) } -> {"CollectionId" :: (CollectionId) , "Image" :: (Image) , "ExternalImageId" :: NullOrUndefined (ExternalImageId) , "DetectionAttributes" :: NullOrUndefined (Attributes) } ) -> IndexFacesRequest
newIndexFacesRequest' _CollectionId _Image customize = (IndexFacesRequest <<< customize) { "CollectionId": _CollectionId, "Image": _Image, "DetectionAttributes": (NullOrUndefined Nothing), "ExternalImageId": (NullOrUndefined Nothing) }



newtype IndexFacesResponse = IndexFacesResponse 
  { "FaceRecords" :: NullOrUndefined (FaceRecordList)
  , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  , "FaceModelVersion" :: NullOrUndefined (String)
  }
derive instance newtypeIndexFacesResponse :: Newtype IndexFacesResponse _
derive instance repGenericIndexFacesResponse :: Generic IndexFacesResponse _
instance showIndexFacesResponse :: Show IndexFacesResponse where show = genericShow
instance decodeIndexFacesResponse :: Decode IndexFacesResponse where decode = genericDecode options
instance encodeIndexFacesResponse :: Encode IndexFacesResponse where encode = genericEncode options

-- | Constructs IndexFacesResponse from required parameters
newIndexFacesResponse :: IndexFacesResponse
newIndexFacesResponse  = IndexFacesResponse { "FaceModelVersion": (NullOrUndefined Nothing), "FaceRecords": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }

-- | Constructs IndexFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newIndexFacesResponse' :: ( { "FaceRecords" :: NullOrUndefined (FaceRecordList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) , "FaceModelVersion" :: NullOrUndefined (String) } -> {"FaceRecords" :: NullOrUndefined (FaceRecordList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) , "FaceModelVersion" :: NullOrUndefined (String) } ) -> IndexFacesResponse
newIndexFacesResponse'  customize = (IndexFacesResponse <<< customize) { "FaceModelVersion": (NullOrUndefined Nothing), "FaceRecords": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing) }



-- | <p>Amazon Rekognition experienced a service issue. Try your call again.</p>
newtype InternalServerError = InternalServerError Types.NoArguments
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options



-- | <p>The provided image format is not supported. </p>
newtype InvalidImageFormatException = InvalidImageFormatException Types.NoArguments
derive instance newtypeInvalidImageFormatException :: Newtype InvalidImageFormatException _
derive instance repGenericInvalidImageFormatException :: Generic InvalidImageFormatException _
instance showInvalidImageFormatException :: Show InvalidImageFormatException where show = genericShow
instance decodeInvalidImageFormatException :: Decode InvalidImageFormatException where decode = genericDecode options
instance encodeInvalidImageFormatException :: Encode InvalidImageFormatException where encode = genericEncode options



-- | <p>Pagination token in the request is not valid.</p>
newtype InvalidPaginationTokenException = InvalidPaginationTokenException Types.NoArguments
derive instance newtypeInvalidPaginationTokenException :: Newtype InvalidPaginationTokenException _
derive instance repGenericInvalidPaginationTokenException :: Generic InvalidPaginationTokenException _
instance showInvalidPaginationTokenException :: Show InvalidPaginationTokenException where show = genericShow
instance decodeInvalidPaginationTokenException :: Decode InvalidPaginationTokenException where decode = genericDecode options
instance encodeInvalidPaginationTokenException :: Encode InvalidPaginationTokenException where encode = genericEncode options



-- | <p>Input parameter violated a constraint. Validate your parameter before calling the API operation again.</p>
newtype InvalidParameterException = InvalidParameterException Types.NoArguments
derive instance newtypeInvalidParameterException :: Newtype InvalidParameterException _
derive instance repGenericInvalidParameterException :: Generic InvalidParameterException _
instance showInvalidParameterException :: Show InvalidParameterException where show = genericShow
instance decodeInvalidParameterException :: Decode InvalidParameterException where decode = genericDecode options
instance encodeInvalidParameterException :: Encode InvalidParameterException where encode = genericEncode options



-- | <p>Amazon Rekognition is unable to access the S3 object specified in the request.</p>
newtype InvalidS3ObjectException = InvalidS3ObjectException Types.NoArguments
derive instance newtypeInvalidS3ObjectException :: Newtype InvalidS3ObjectException _
derive instance repGenericInvalidS3ObjectException :: Generic InvalidS3ObjectException _
instance showInvalidS3ObjectException :: Show InvalidS3ObjectException where show = genericShow
instance decodeInvalidS3ObjectException :: Decode InvalidS3ObjectException where decode = genericDecode options
instance encodeInvalidS3ObjectException :: Encode InvalidS3ObjectException where encode = genericEncode options



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



newtype JobTag = JobTag String
derive instance newtypeJobTag :: Newtype JobTag _
derive instance repGenericJobTag :: Generic JobTag _
instance showJobTag :: Show JobTag where show = genericShow
instance decodeJobTag :: Decode JobTag where decode = genericDecode options
instance encodeJobTag :: Encode JobTag where encode = genericEncode options



newtype KinesisDataArn = KinesisDataArn String
derive instance newtypeKinesisDataArn :: Newtype KinesisDataArn _
derive instance repGenericKinesisDataArn :: Generic KinesisDataArn _
instance showKinesisDataArn :: Show KinesisDataArn where show = genericShow
instance decodeKinesisDataArn :: Decode KinesisDataArn where decode = genericDecode options
instance encodeKinesisDataArn :: Encode KinesisDataArn where encode = genericEncode options



-- | <p>The Kinesis data stream Amazon Rekognition to which the analysis results of a Amazon Rekognition stream processor are streamed. For more information, see .</p>
newtype KinesisDataStream = KinesisDataStream 
  { "Arn" :: NullOrUndefined (KinesisDataArn)
  }
derive instance newtypeKinesisDataStream :: Newtype KinesisDataStream _
derive instance repGenericKinesisDataStream :: Generic KinesisDataStream _
instance showKinesisDataStream :: Show KinesisDataStream where show = genericShow
instance decodeKinesisDataStream :: Decode KinesisDataStream where decode = genericDecode options
instance encodeKinesisDataStream :: Encode KinesisDataStream where encode = genericEncode options

-- | Constructs KinesisDataStream from required parameters
newKinesisDataStream :: KinesisDataStream
newKinesisDataStream  = KinesisDataStream { "Arn": (NullOrUndefined Nothing) }

-- | Constructs KinesisDataStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKinesisDataStream' :: ( { "Arn" :: NullOrUndefined (KinesisDataArn) } -> {"Arn" :: NullOrUndefined (KinesisDataArn) } ) -> KinesisDataStream
newKinesisDataStream'  customize = (KinesisDataStream <<< customize) { "Arn": (NullOrUndefined Nothing) }



newtype KinesisVideoArn = KinesisVideoArn String
derive instance newtypeKinesisVideoArn :: Newtype KinesisVideoArn _
derive instance repGenericKinesisVideoArn :: Generic KinesisVideoArn _
instance showKinesisVideoArn :: Show KinesisVideoArn where show = genericShow
instance decodeKinesisVideoArn :: Decode KinesisVideoArn where decode = genericDecode options
instance encodeKinesisVideoArn :: Encode KinesisVideoArn where encode = genericEncode options



-- | <p>Kinesis video stream stream that provides the source streaming video for a Rekognition Video stream processor. For more information, see .</p>
newtype KinesisVideoStream = KinesisVideoStream 
  { "Arn" :: NullOrUndefined (KinesisVideoArn)
  }
derive instance newtypeKinesisVideoStream :: Newtype KinesisVideoStream _
derive instance repGenericKinesisVideoStream :: Generic KinesisVideoStream _
instance showKinesisVideoStream :: Show KinesisVideoStream where show = genericShow
instance decodeKinesisVideoStream :: Decode KinesisVideoStream where decode = genericDecode options
instance encodeKinesisVideoStream :: Encode KinesisVideoStream where encode = genericEncode options

-- | Constructs KinesisVideoStream from required parameters
newKinesisVideoStream :: KinesisVideoStream
newKinesisVideoStream  = KinesisVideoStream { "Arn": (NullOrUndefined Nothing) }

-- | Constructs KinesisVideoStream's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKinesisVideoStream' :: ( { "Arn" :: NullOrUndefined (KinesisVideoArn) } -> {"Arn" :: NullOrUndefined (KinesisVideoArn) } ) -> KinesisVideoStream
newKinesisVideoStream'  customize = (KinesisVideoStream <<< customize) { "Arn": (NullOrUndefined Nothing) }



-- | <p>Structure containing details about the detected label, including name, and level of confidence.</p>
newtype Label = Label 
  { "Name" :: NullOrUndefined (String)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeLabel :: Newtype Label _
derive instance repGenericLabel :: Generic Label _
instance showLabel :: Show Label where show = genericShow
instance decodeLabel :: Decode Label where decode = genericDecode options
instance encodeLabel :: Encode Label where encode = genericEncode options

-- | Constructs Label from required parameters
newLabel :: Label
newLabel  = Label { "Confidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs Label's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLabel' :: ( { "Name" :: NullOrUndefined (String) , "Confidence" :: NullOrUndefined (Percent) } -> {"Name" :: NullOrUndefined (String) , "Confidence" :: NullOrUndefined (Percent) } ) -> Label
newLabel'  customize = (Label <<< customize) { "Confidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



-- | <p>Information about a label detected in a video analysis request and the time the label was detected in the video. </p>
newtype LabelDetection = LabelDetection 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "Label" :: NullOrUndefined (Label)
  }
derive instance newtypeLabelDetection :: Newtype LabelDetection _
derive instance repGenericLabelDetection :: Generic LabelDetection _
instance showLabelDetection :: Show LabelDetection where show = genericShow
instance decodeLabelDetection :: Decode LabelDetection where decode = genericDecode options
instance encodeLabelDetection :: Encode LabelDetection where encode = genericEncode options

-- | Constructs LabelDetection from required parameters
newLabelDetection :: LabelDetection
newLabelDetection  = LabelDetection { "Label": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs LabelDetection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLabelDetection' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "Label" :: NullOrUndefined (Label) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "Label" :: NullOrUndefined (Label) } ) -> LabelDetection
newLabelDetection'  customize = (LabelDetection <<< customize) { "Label": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype LabelDetectionSortBy = LabelDetectionSortBy String
derive instance newtypeLabelDetectionSortBy :: Newtype LabelDetectionSortBy _
derive instance repGenericLabelDetectionSortBy :: Generic LabelDetectionSortBy _
instance showLabelDetectionSortBy :: Show LabelDetectionSortBy where show = genericShow
instance decodeLabelDetectionSortBy :: Decode LabelDetectionSortBy where decode = genericDecode options
instance encodeLabelDetectionSortBy :: Encode LabelDetectionSortBy where encode = genericEncode options



newtype LabelDetections = LabelDetections (Array LabelDetection)
derive instance newtypeLabelDetections :: Newtype LabelDetections _
derive instance repGenericLabelDetections :: Generic LabelDetections _
instance showLabelDetections :: Show LabelDetections where show = genericShow
instance decodeLabelDetections :: Decode LabelDetections where decode = genericDecode options
instance encodeLabelDetections :: Encode LabelDetections where encode = genericEncode options



newtype Labels = Labels (Array Label)
derive instance newtypeLabels :: Newtype Labels _
derive instance repGenericLabels :: Generic Labels _
instance showLabels :: Show Labels where show = genericShow
instance decodeLabels :: Decode Labels where decode = genericDecode options
instance encodeLabels :: Encode Labels where encode = genericEncode options



-- | <p>Indicates the location of the landmark on the face.</p>
newtype Landmark = Landmark 
  { "Type" :: NullOrUndefined (LandmarkType)
  , "X" :: NullOrUndefined (Number)
  , "Y" :: NullOrUndefined (Number)
  }
derive instance newtypeLandmark :: Newtype Landmark _
derive instance repGenericLandmark :: Generic Landmark _
instance showLandmark :: Show Landmark where show = genericShow
instance decodeLandmark :: Decode Landmark where decode = genericDecode options
instance encodeLandmark :: Encode Landmark where encode = genericEncode options

-- | Constructs Landmark from required parameters
newLandmark :: Landmark
newLandmark  = Landmark { "Type": (NullOrUndefined Nothing), "X": (NullOrUndefined Nothing), "Y": (NullOrUndefined Nothing) }

-- | Constructs Landmark's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLandmark' :: ( { "Type" :: NullOrUndefined (LandmarkType) , "X" :: NullOrUndefined (Number) , "Y" :: NullOrUndefined (Number) } -> {"Type" :: NullOrUndefined (LandmarkType) , "X" :: NullOrUndefined (Number) , "Y" :: NullOrUndefined (Number) } ) -> Landmark
newLandmark'  customize = (Landmark <<< customize) { "Type": (NullOrUndefined Nothing), "X": (NullOrUndefined Nothing), "Y": (NullOrUndefined Nothing) }



newtype LandmarkType = LandmarkType String
derive instance newtypeLandmarkType :: Newtype LandmarkType _
derive instance repGenericLandmarkType :: Generic LandmarkType _
instance showLandmarkType :: Show LandmarkType where show = genericShow
instance decodeLandmarkType :: Decode LandmarkType where decode = genericDecode options
instance encodeLandmarkType :: Encode LandmarkType where encode = genericEncode options



newtype Landmarks = Landmarks (Array Landmark)
derive instance newtypeLandmarks :: Newtype Landmarks _
derive instance repGenericLandmarks :: Generic Landmarks _
instance showLandmarks :: Show Landmarks where show = genericShow
instance decodeLandmarks :: Decode Landmarks where decode = genericDecode options
instance encodeLandmarks :: Encode Landmarks where encode = genericEncode options



-- | <p/>
newtype LimitExceededException = LimitExceededException Types.NoArguments
derive instance newtypeLimitExceededException :: Newtype LimitExceededException _
derive instance repGenericLimitExceededException :: Generic LimitExceededException _
instance showLimitExceededException :: Show LimitExceededException where show = genericShow
instance decodeLimitExceededException :: Decode LimitExceededException where decode = genericDecode options
instance encodeLimitExceededException :: Encode LimitExceededException where encode = genericEncode options



newtype ListCollectionsRequest = ListCollectionsRequest 
  { "NextToken" :: NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined (PageSize)
  }
derive instance newtypeListCollectionsRequest :: Newtype ListCollectionsRequest _
derive instance repGenericListCollectionsRequest :: Generic ListCollectionsRequest _
instance showListCollectionsRequest :: Show ListCollectionsRequest where show = genericShow
instance decodeListCollectionsRequest :: Decode ListCollectionsRequest where decode = genericDecode options
instance encodeListCollectionsRequest :: Encode ListCollectionsRequest where encode = genericEncode options

-- | Constructs ListCollectionsRequest from required parameters
newListCollectionsRequest :: ListCollectionsRequest
newListCollectionsRequest  = ListCollectionsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCollectionsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCollectionsRequest' :: ( { "NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (PageSize) } -> {"NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (PageSize) } ) -> ListCollectionsRequest
newListCollectionsRequest'  customize = (ListCollectionsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListCollectionsResponse = ListCollectionsResponse 
  { "CollectionIds" :: NullOrUndefined (CollectionIdList)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "FaceModelVersions" :: NullOrUndefined (FaceModelVersionList)
  }
derive instance newtypeListCollectionsResponse :: Newtype ListCollectionsResponse _
derive instance repGenericListCollectionsResponse :: Generic ListCollectionsResponse _
instance showListCollectionsResponse :: Show ListCollectionsResponse where show = genericShow
instance decodeListCollectionsResponse :: Decode ListCollectionsResponse where decode = genericDecode options
instance encodeListCollectionsResponse :: Encode ListCollectionsResponse where encode = genericEncode options

-- | Constructs ListCollectionsResponse from required parameters
newListCollectionsResponse :: ListCollectionsResponse
newListCollectionsResponse  = ListCollectionsResponse { "CollectionIds": (NullOrUndefined Nothing), "FaceModelVersions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCollectionsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCollectionsResponse' :: ( { "CollectionIds" :: NullOrUndefined (CollectionIdList) , "NextToken" :: NullOrUndefined (PaginationToken) , "FaceModelVersions" :: NullOrUndefined (FaceModelVersionList) } -> {"CollectionIds" :: NullOrUndefined (CollectionIdList) , "NextToken" :: NullOrUndefined (PaginationToken) , "FaceModelVersions" :: NullOrUndefined (FaceModelVersionList) } ) -> ListCollectionsResponse
newListCollectionsResponse'  customize = (ListCollectionsResponse <<< customize) { "CollectionIds": (NullOrUndefined Nothing), "FaceModelVersions": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListFacesRequest = ListFacesRequest 
  { "CollectionId" :: (CollectionId)
  , "NextToken" :: NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined (PageSize)
  }
derive instance newtypeListFacesRequest :: Newtype ListFacesRequest _
derive instance repGenericListFacesRequest :: Generic ListFacesRequest _
instance showListFacesRequest :: Show ListFacesRequest where show = genericShow
instance decodeListFacesRequest :: Decode ListFacesRequest where decode = genericDecode options
instance encodeListFacesRequest :: Encode ListFacesRequest where encode = genericEncode options

-- | Constructs ListFacesRequest from required parameters
newListFacesRequest :: CollectionId -> ListFacesRequest
newListFacesRequest _CollectionId = ListFacesRequest { "CollectionId": _CollectionId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFacesRequest' :: CollectionId -> ( { "CollectionId" :: (CollectionId) , "NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (PageSize) } -> {"CollectionId" :: (CollectionId) , "NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (PageSize) } ) -> ListFacesRequest
newListFacesRequest' _CollectionId customize = (ListFacesRequest <<< customize) { "CollectionId": _CollectionId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListFacesResponse = ListFacesResponse 
  { "Faces" :: NullOrUndefined (FaceList)
  , "NextToken" :: NullOrUndefined (String)
  , "FaceModelVersion" :: NullOrUndefined (String)
  }
derive instance newtypeListFacesResponse :: Newtype ListFacesResponse _
derive instance repGenericListFacesResponse :: Generic ListFacesResponse _
instance showListFacesResponse :: Show ListFacesResponse where show = genericShow
instance decodeListFacesResponse :: Decode ListFacesResponse where decode = genericDecode options
instance encodeListFacesResponse :: Encode ListFacesResponse where encode = genericEncode options

-- | Constructs ListFacesResponse from required parameters
newListFacesResponse :: ListFacesResponse
newListFacesResponse  = ListFacesResponse { "FaceModelVersion": (NullOrUndefined Nothing), "Faces": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListFacesResponse' :: ( { "Faces" :: NullOrUndefined (FaceList) , "NextToken" :: NullOrUndefined (String) , "FaceModelVersion" :: NullOrUndefined (String) } -> {"Faces" :: NullOrUndefined (FaceList) , "NextToken" :: NullOrUndefined (String) , "FaceModelVersion" :: NullOrUndefined (String) } ) -> ListFacesResponse
newListFacesResponse'  customize = (ListFacesResponse <<< customize) { "FaceModelVersion": (NullOrUndefined Nothing), "Faces": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListStreamProcessorsRequest = ListStreamProcessorsRequest 
  { "NextToken" :: NullOrUndefined (PaginationToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }
derive instance newtypeListStreamProcessorsRequest :: Newtype ListStreamProcessorsRequest _
derive instance repGenericListStreamProcessorsRequest :: Generic ListStreamProcessorsRequest _
instance showListStreamProcessorsRequest :: Show ListStreamProcessorsRequest where show = genericShow
instance decodeListStreamProcessorsRequest :: Decode ListStreamProcessorsRequest where decode = genericDecode options
instance encodeListStreamProcessorsRequest :: Encode ListStreamProcessorsRequest where encode = genericEncode options

-- | Constructs ListStreamProcessorsRequest from required parameters
newListStreamProcessorsRequest :: ListStreamProcessorsRequest
newListStreamProcessorsRequest  = ListStreamProcessorsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListStreamProcessorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamProcessorsRequest' :: ( { "NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined (PaginationToken) , "MaxResults" :: NullOrUndefined (MaxResults) } ) -> ListStreamProcessorsRequest
newListStreamProcessorsRequest'  customize = (ListStreamProcessorsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListStreamProcessorsResponse = ListStreamProcessorsResponse 
  { "NextToken" :: NullOrUndefined (PaginationToken)
  , "StreamProcessors" :: NullOrUndefined (StreamProcessorList)
  }
derive instance newtypeListStreamProcessorsResponse :: Newtype ListStreamProcessorsResponse _
derive instance repGenericListStreamProcessorsResponse :: Generic ListStreamProcessorsResponse _
instance showListStreamProcessorsResponse :: Show ListStreamProcessorsResponse where show = genericShow
instance decodeListStreamProcessorsResponse :: Decode ListStreamProcessorsResponse where decode = genericDecode options
instance encodeListStreamProcessorsResponse :: Encode ListStreamProcessorsResponse where encode = genericEncode options

-- | Constructs ListStreamProcessorsResponse from required parameters
newListStreamProcessorsResponse :: ListStreamProcessorsResponse
newListStreamProcessorsResponse  = ListStreamProcessorsResponse { "NextToken": (NullOrUndefined Nothing), "StreamProcessors": (NullOrUndefined Nothing) }

-- | Constructs ListStreamProcessorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStreamProcessorsResponse' :: ( { "NextToken" :: NullOrUndefined (PaginationToken) , "StreamProcessors" :: NullOrUndefined (StreamProcessorList) } -> {"NextToken" :: NullOrUndefined (PaginationToken) , "StreamProcessors" :: NullOrUndefined (StreamProcessorList) } ) -> ListStreamProcessorsResponse
newListStreamProcessorsResponse'  customize = (ListStreamProcessorsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "StreamProcessors": (NullOrUndefined Nothing) }



newtype MaxFaces = MaxFaces Int
derive instance newtypeMaxFaces :: Newtype MaxFaces _
derive instance repGenericMaxFaces :: Generic MaxFaces _
instance showMaxFaces :: Show MaxFaces where show = genericShow
instance decodeMaxFaces :: Decode MaxFaces where decode = genericDecode options
instance encodeMaxFaces :: Encode MaxFaces where encode = genericEncode options



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>Provides information about a single type of moderated content found in an image or video. Each type of moderated content has a label within a hierarchical taxonomy. For more information, see <a>moderation</a>.</p>
newtype ModerationLabel = ModerationLabel 
  { "Confidence" :: NullOrUndefined (Percent)
  , "Name" :: NullOrUndefined (String)
  , "ParentName" :: NullOrUndefined (String)
  }
derive instance newtypeModerationLabel :: Newtype ModerationLabel _
derive instance repGenericModerationLabel :: Generic ModerationLabel _
instance showModerationLabel :: Show ModerationLabel where show = genericShow
instance decodeModerationLabel :: Decode ModerationLabel where decode = genericDecode options
instance encodeModerationLabel :: Encode ModerationLabel where encode = genericEncode options

-- | Constructs ModerationLabel from required parameters
newModerationLabel :: ModerationLabel
newModerationLabel  = ModerationLabel { "Confidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ParentName": (NullOrUndefined Nothing) }

-- | Constructs ModerationLabel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModerationLabel' :: ( { "Confidence" :: NullOrUndefined (Percent) , "Name" :: NullOrUndefined (String) , "ParentName" :: NullOrUndefined (String) } -> {"Confidence" :: NullOrUndefined (Percent) , "Name" :: NullOrUndefined (String) , "ParentName" :: NullOrUndefined (String) } ) -> ModerationLabel
newModerationLabel'  customize = (ModerationLabel <<< customize) { "Confidence": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ParentName": (NullOrUndefined Nothing) }



newtype ModerationLabels = ModerationLabels (Array ModerationLabel)
derive instance newtypeModerationLabels :: Newtype ModerationLabels _
derive instance repGenericModerationLabels :: Generic ModerationLabels _
instance showModerationLabels :: Show ModerationLabels where show = genericShow
instance decodeModerationLabels :: Decode ModerationLabels where decode = genericDecode options
instance encodeModerationLabels :: Encode ModerationLabels where encode = genericEncode options



-- | <p>Indicates whether or not the mouth on the face is open, and the confidence level in the determination.</p>
newtype MouthOpen = MouthOpen 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeMouthOpen :: Newtype MouthOpen _
derive instance repGenericMouthOpen :: Generic MouthOpen _
instance showMouthOpen :: Show MouthOpen where show = genericShow
instance decodeMouthOpen :: Decode MouthOpen where decode = genericDecode options
instance encodeMouthOpen :: Encode MouthOpen where encode = genericEncode options

-- | Constructs MouthOpen from required parameters
newMouthOpen :: MouthOpen
newMouthOpen  = MouthOpen { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs MouthOpen's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMouthOpen' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> MouthOpen
newMouthOpen'  customize = (MouthOpen <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>Indicates whether or not the face has a mustache, and the confidence level in the determination.</p>
newtype Mustache = Mustache 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeMustache :: Newtype Mustache _
derive instance repGenericMustache :: Generic Mustache _
instance showMustache :: Show Mustache where show = genericShow
instance decodeMustache :: Decode Mustache where decode = genericDecode options
instance encodeMustache :: Encode Mustache where encode = genericEncode options

-- | Constructs Mustache from required parameters
newMustache :: Mustache
newMustache  = Mustache { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Mustache's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMustache' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> Mustache
newMustache'  customize = (Mustache <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>The Amazon Simple Notification Service topic to which Amazon Rekognition publishes the completion status of a video analysis operation. For more information, see <a>api-video</a>.</p>
newtype NotificationChannel = NotificationChannel 
  { "SNSTopicArn" :: (SNSTopicArn)
  , "RoleArn" :: (RoleArn)
  }
derive instance newtypeNotificationChannel :: Newtype NotificationChannel _
derive instance repGenericNotificationChannel :: Generic NotificationChannel _
instance showNotificationChannel :: Show NotificationChannel where show = genericShow
instance decodeNotificationChannel :: Decode NotificationChannel where decode = genericDecode options
instance encodeNotificationChannel :: Encode NotificationChannel where encode = genericEncode options

-- | Constructs NotificationChannel from required parameters
newNotificationChannel :: RoleArn -> SNSTopicArn -> NotificationChannel
newNotificationChannel _RoleArn _SNSTopicArn = NotificationChannel { "RoleArn": _RoleArn, "SNSTopicArn": _SNSTopicArn }

-- | Constructs NotificationChannel's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotificationChannel' :: RoleArn -> SNSTopicArn -> ( { "SNSTopicArn" :: (SNSTopicArn) , "RoleArn" :: (RoleArn) } -> {"SNSTopicArn" :: (SNSTopicArn) , "RoleArn" :: (RoleArn) } ) -> NotificationChannel
newNotificationChannel' _RoleArn _SNSTopicArn customize = (NotificationChannel <<< customize) { "RoleArn": _RoleArn, "SNSTopicArn": _SNSTopicArn }



newtype OrientationCorrection = OrientationCorrection String
derive instance newtypeOrientationCorrection :: Newtype OrientationCorrection _
derive instance repGenericOrientationCorrection :: Generic OrientationCorrection _
instance showOrientationCorrection :: Show OrientationCorrection where show = genericShow
instance decodeOrientationCorrection :: Decode OrientationCorrection where decode = genericDecode options
instance encodeOrientationCorrection :: Encode OrientationCorrection where encode = genericEncode options



newtype PageSize = PageSize Int
derive instance newtypePageSize :: Newtype PageSize _
derive instance repGenericPageSize :: Generic PageSize _
instance showPageSize :: Show PageSize where show = genericShow
instance decodePageSize :: Decode PageSize where decode = genericDecode options
instance encodePageSize :: Encode PageSize where encode = genericEncode options



newtype PaginationToken = PaginationToken String
derive instance newtypePaginationToken :: Newtype PaginationToken _
derive instance repGenericPaginationToken :: Generic PaginationToken _
instance showPaginationToken :: Show PaginationToken where show = genericShow
instance decodePaginationToken :: Decode PaginationToken where decode = genericDecode options
instance encodePaginationToken :: Encode PaginationToken where encode = genericEncode options



newtype Percent = Percent Number
derive instance newtypePercent :: Newtype Percent _
derive instance repGenericPercent :: Generic Percent _
instance showPercent :: Show Percent where show = genericShow
instance decodePercent :: Decode Percent where decode = genericDecode options
instance encodePercent :: Encode Percent where encode = genericEncode options



-- | <p>Details about a person detected in a video analysis request.</p>
newtype PersonDetail = PersonDetail 
  { "Index" :: NullOrUndefined (PersonIndex)
  , "BoundingBox" :: NullOrUndefined (BoundingBox)
  , "Face" :: NullOrUndefined (FaceDetail)
  }
derive instance newtypePersonDetail :: Newtype PersonDetail _
derive instance repGenericPersonDetail :: Generic PersonDetail _
instance showPersonDetail :: Show PersonDetail where show = genericShow
instance decodePersonDetail :: Decode PersonDetail where decode = genericDecode options
instance encodePersonDetail :: Encode PersonDetail where encode = genericEncode options

-- | Constructs PersonDetail from required parameters
newPersonDetail :: PersonDetail
newPersonDetail  = PersonDetail { "BoundingBox": (NullOrUndefined Nothing), "Face": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }

-- | Constructs PersonDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPersonDetail' :: ( { "Index" :: NullOrUndefined (PersonIndex) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "Face" :: NullOrUndefined (FaceDetail) } -> {"Index" :: NullOrUndefined (PersonIndex) , "BoundingBox" :: NullOrUndefined (BoundingBox) , "Face" :: NullOrUndefined (FaceDetail) } ) -> PersonDetail
newPersonDetail'  customize = (PersonDetail <<< customize) { "BoundingBox": (NullOrUndefined Nothing), "Face": (NullOrUndefined Nothing), "Index": (NullOrUndefined Nothing) }



-- | <p>Details and tracking information for a single time a person is tracked in a video. Amazon Rekognition operations that track persons return an array of <code>PersonDetection</code> objects with elements for each time a person is tracked in a video. For more information, see . </p>
newtype PersonDetection = PersonDetection 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "Person" :: NullOrUndefined (PersonDetail)
  }
derive instance newtypePersonDetection :: Newtype PersonDetection _
derive instance repGenericPersonDetection :: Generic PersonDetection _
instance showPersonDetection :: Show PersonDetection where show = genericShow
instance decodePersonDetection :: Decode PersonDetection where decode = genericDecode options
instance encodePersonDetection :: Encode PersonDetection where encode = genericEncode options

-- | Constructs PersonDetection from required parameters
newPersonDetection :: PersonDetection
newPersonDetection  = PersonDetection { "Person": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs PersonDetection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPersonDetection' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "Person" :: NullOrUndefined (PersonDetail) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "Person" :: NullOrUndefined (PersonDetail) } ) -> PersonDetection
newPersonDetection'  customize = (PersonDetection <<< customize) { "Person": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype PersonDetections = PersonDetections (Array PersonDetection)
derive instance newtypePersonDetections :: Newtype PersonDetections _
derive instance repGenericPersonDetections :: Generic PersonDetections _
instance showPersonDetections :: Show PersonDetections where show = genericShow
instance decodePersonDetections :: Decode PersonDetections where decode = genericDecode options
instance encodePersonDetections :: Encode PersonDetections where encode = genericEncode options



newtype PersonIndex = PersonIndex Number
derive instance newtypePersonIndex :: Newtype PersonIndex _
derive instance repGenericPersonIndex :: Generic PersonIndex _
instance showPersonIndex :: Show PersonIndex where show = genericShow
instance decodePersonIndex :: Decode PersonIndex where decode = genericDecode options
instance encodePersonIndex :: Encode PersonIndex where encode = genericEncode options



-- | <p>Information about a person whose face matches a face(s) in a Amazon Rekognition collection. Includes information about the faces in the Amazon Rekognition collection (,information about the person (<a>PersonDetail</a>) and the timestamp for when the person was detected in a video. An array of <code>PersonMatch</code> objects is returned by . </p>
newtype PersonMatch = PersonMatch 
  { "Timestamp" :: NullOrUndefined (Types.Timestamp)
  , "Person" :: NullOrUndefined (PersonDetail)
  , "FaceMatches" :: NullOrUndefined (FaceMatchList)
  }
derive instance newtypePersonMatch :: Newtype PersonMatch _
derive instance repGenericPersonMatch :: Generic PersonMatch _
instance showPersonMatch :: Show PersonMatch where show = genericShow
instance decodePersonMatch :: Decode PersonMatch where decode = genericDecode options
instance encodePersonMatch :: Encode PersonMatch where encode = genericEncode options

-- | Constructs PersonMatch from required parameters
newPersonMatch :: PersonMatch
newPersonMatch  = PersonMatch { "FaceMatches": (NullOrUndefined Nothing), "Person": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }

-- | Constructs PersonMatch's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPersonMatch' :: ( { "Timestamp" :: NullOrUndefined (Types.Timestamp) , "Person" :: NullOrUndefined (PersonDetail) , "FaceMatches" :: NullOrUndefined (FaceMatchList) } -> {"Timestamp" :: NullOrUndefined (Types.Timestamp) , "Person" :: NullOrUndefined (PersonDetail) , "FaceMatches" :: NullOrUndefined (FaceMatchList) } ) -> PersonMatch
newPersonMatch'  customize = (PersonMatch <<< customize) { "FaceMatches": (NullOrUndefined Nothing), "Person": (NullOrUndefined Nothing), "Timestamp": (NullOrUndefined Nothing) }



newtype PersonMatches = PersonMatches (Array PersonMatch)
derive instance newtypePersonMatches :: Newtype PersonMatches _
derive instance repGenericPersonMatches :: Generic PersonMatches _
instance showPersonMatches :: Show PersonMatches where show = genericShow
instance decodePersonMatches :: Decode PersonMatches where decode = genericDecode options
instance encodePersonMatches :: Encode PersonMatches where encode = genericEncode options



newtype PersonTrackingSortBy = PersonTrackingSortBy String
derive instance newtypePersonTrackingSortBy :: Newtype PersonTrackingSortBy _
derive instance repGenericPersonTrackingSortBy :: Generic PersonTrackingSortBy _
instance showPersonTrackingSortBy :: Show PersonTrackingSortBy where show = genericShow
instance decodePersonTrackingSortBy :: Decode PersonTrackingSortBy where decode = genericDecode options
instance encodePersonTrackingSortBy :: Encode PersonTrackingSortBy where encode = genericEncode options



-- | <p>The X and Y coordinates of a point on an image. The X and Y values returned are ratios of the overall image size. For example, if the input image is 700x200 and the operation returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel coordinate on the image.</p> <p>An array of <code>Point</code> objects, <code>Polygon</code>, is returned by . <code>Polygon</code> represents a fine-grained polygon around detected text. For more information, see . </p>
newtype Point = Point 
  { "X" :: NullOrUndefined (Number)
  , "Y" :: NullOrUndefined (Number)
  }
derive instance newtypePoint :: Newtype Point _
derive instance repGenericPoint :: Generic Point _
instance showPoint :: Show Point where show = genericShow
instance decodePoint :: Decode Point where decode = genericDecode options
instance encodePoint :: Encode Point where encode = genericEncode options

-- | Constructs Point from required parameters
newPoint :: Point
newPoint  = Point { "X": (NullOrUndefined Nothing), "Y": (NullOrUndefined Nothing) }

-- | Constructs Point's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPoint' :: ( { "X" :: NullOrUndefined (Number) , "Y" :: NullOrUndefined (Number) } -> {"X" :: NullOrUndefined (Number) , "Y" :: NullOrUndefined (Number) } ) -> Point
newPoint'  customize = (Point <<< customize) { "X": (NullOrUndefined Nothing), "Y": (NullOrUndefined Nothing) }



newtype Polygon = Polygon (Array Point)
derive instance newtypePolygon :: Newtype Polygon _
derive instance repGenericPolygon :: Generic Polygon _
instance showPolygon :: Show Polygon where show = genericShow
instance decodePolygon :: Decode Polygon where decode = genericDecode options
instance encodePolygon :: Encode Polygon where encode = genericEncode options



-- | <p>Indicates the pose of the face as determined by its pitch, roll, and yaw.</p>
newtype Pose = Pose 
  { "Roll" :: NullOrUndefined (Degree)
  , "Yaw" :: NullOrUndefined (Degree)
  , "Pitch" :: NullOrUndefined (Degree)
  }
derive instance newtypePose :: Newtype Pose _
derive instance repGenericPose :: Generic Pose _
instance showPose :: Show Pose where show = genericShow
instance decodePose :: Decode Pose where decode = genericDecode options
instance encodePose :: Encode Pose where encode = genericEncode options

-- | Constructs Pose from required parameters
newPose :: Pose
newPose  = Pose { "Pitch": (NullOrUndefined Nothing), "Roll": (NullOrUndefined Nothing), "Yaw": (NullOrUndefined Nothing) }

-- | Constructs Pose's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPose' :: ( { "Roll" :: NullOrUndefined (Degree) , "Yaw" :: NullOrUndefined (Degree) , "Pitch" :: NullOrUndefined (Degree) } -> {"Roll" :: NullOrUndefined (Degree) , "Yaw" :: NullOrUndefined (Degree) , "Pitch" :: NullOrUndefined (Degree) } ) -> Pose
newPose'  customize = (Pose <<< customize) { "Pitch": (NullOrUndefined Nothing), "Roll": (NullOrUndefined Nothing), "Yaw": (NullOrUndefined Nothing) }



-- | <p>The number of requests exceeded your throughput limit. If you want to increase this limit, contact Amazon Rekognition.</p>
newtype ProvisionedThroughputExceededException = ProvisionedThroughputExceededException Types.NoArguments
derive instance newtypeProvisionedThroughputExceededException :: Newtype ProvisionedThroughputExceededException _
derive instance repGenericProvisionedThroughputExceededException :: Generic ProvisionedThroughputExceededException _
instance showProvisionedThroughputExceededException :: Show ProvisionedThroughputExceededException where show = genericShow
instance decodeProvisionedThroughputExceededException :: Decode ProvisionedThroughputExceededException where decode = genericDecode options
instance encodeProvisionedThroughputExceededException :: Encode ProvisionedThroughputExceededException where encode = genericEncode options



newtype RecognizeCelebritiesRequest = RecognizeCelebritiesRequest 
  { "Image" :: (Image)
  }
derive instance newtypeRecognizeCelebritiesRequest :: Newtype RecognizeCelebritiesRequest _
derive instance repGenericRecognizeCelebritiesRequest :: Generic RecognizeCelebritiesRequest _
instance showRecognizeCelebritiesRequest :: Show RecognizeCelebritiesRequest where show = genericShow
instance decodeRecognizeCelebritiesRequest :: Decode RecognizeCelebritiesRequest where decode = genericDecode options
instance encodeRecognizeCelebritiesRequest :: Encode RecognizeCelebritiesRequest where encode = genericEncode options

-- | Constructs RecognizeCelebritiesRequest from required parameters
newRecognizeCelebritiesRequest :: Image -> RecognizeCelebritiesRequest
newRecognizeCelebritiesRequest _Image = RecognizeCelebritiesRequest { "Image": _Image }

-- | Constructs RecognizeCelebritiesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecognizeCelebritiesRequest' :: Image -> ( { "Image" :: (Image) } -> {"Image" :: (Image) } ) -> RecognizeCelebritiesRequest
newRecognizeCelebritiesRequest' _Image customize = (RecognizeCelebritiesRequest <<< customize) { "Image": _Image }



newtype RecognizeCelebritiesResponse = RecognizeCelebritiesResponse 
  { "CelebrityFaces" :: NullOrUndefined (CelebrityList)
  , "UnrecognizedFaces" :: NullOrUndefined (ComparedFaceList)
  , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection)
  }
derive instance newtypeRecognizeCelebritiesResponse :: Newtype RecognizeCelebritiesResponse _
derive instance repGenericRecognizeCelebritiesResponse :: Generic RecognizeCelebritiesResponse _
instance showRecognizeCelebritiesResponse :: Show RecognizeCelebritiesResponse where show = genericShow
instance decodeRecognizeCelebritiesResponse :: Decode RecognizeCelebritiesResponse where decode = genericDecode options
instance encodeRecognizeCelebritiesResponse :: Encode RecognizeCelebritiesResponse where encode = genericEncode options

-- | Constructs RecognizeCelebritiesResponse from required parameters
newRecognizeCelebritiesResponse :: RecognizeCelebritiesResponse
newRecognizeCelebritiesResponse  = RecognizeCelebritiesResponse { "CelebrityFaces": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing), "UnrecognizedFaces": (NullOrUndefined Nothing) }

-- | Constructs RecognizeCelebritiesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRecognizeCelebritiesResponse' :: ( { "CelebrityFaces" :: NullOrUndefined (CelebrityList) , "UnrecognizedFaces" :: NullOrUndefined (ComparedFaceList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } -> {"CelebrityFaces" :: NullOrUndefined (CelebrityList) , "UnrecognizedFaces" :: NullOrUndefined (ComparedFaceList) , "OrientationCorrection" :: NullOrUndefined (OrientationCorrection) } ) -> RecognizeCelebritiesResponse
newRecognizeCelebritiesResponse'  customize = (RecognizeCelebritiesResponse <<< customize) { "CelebrityFaces": (NullOrUndefined Nothing), "OrientationCorrection": (NullOrUndefined Nothing), "UnrecognizedFaces": (NullOrUndefined Nothing) }



newtype RekognitionUniqueId = RekognitionUniqueId String
derive instance newtypeRekognitionUniqueId :: Newtype RekognitionUniqueId _
derive instance repGenericRekognitionUniqueId :: Generic RekognitionUniqueId _
instance showRekognitionUniqueId :: Show RekognitionUniqueId where show = genericShow
instance decodeRekognitionUniqueId :: Decode RekognitionUniqueId where decode = genericDecode options
instance encodeRekognitionUniqueId :: Encode RekognitionUniqueId where encode = genericEncode options



-- | <p>A collection with the specified ID already exists.</p>
newtype ResourceAlreadyExistsException = ResourceAlreadyExistsException Types.NoArguments
derive instance newtypeResourceAlreadyExistsException :: Newtype ResourceAlreadyExistsException _
derive instance repGenericResourceAlreadyExistsException :: Generic ResourceAlreadyExistsException _
instance showResourceAlreadyExistsException :: Show ResourceAlreadyExistsException where show = genericShow
instance decodeResourceAlreadyExistsException :: Decode ResourceAlreadyExistsException where decode = genericDecode options
instance encodeResourceAlreadyExistsException :: Encode ResourceAlreadyExistsException where encode = genericEncode options



-- | <p/>
newtype ResourceInUseException = ResourceInUseException Types.NoArguments
derive instance newtypeResourceInUseException :: Newtype ResourceInUseException _
derive instance repGenericResourceInUseException :: Generic ResourceInUseException _
instance showResourceInUseException :: Show ResourceInUseException where show = genericShow
instance decodeResourceInUseException :: Decode ResourceInUseException where decode = genericDecode options
instance encodeResourceInUseException :: Encode ResourceInUseException where encode = genericEncode options



-- | <p>The collection specified in the request cannot be found.</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



newtype RoleArn = RoleArn String
derive instance newtypeRoleArn :: Newtype RoleArn _
derive instance repGenericRoleArn :: Generic RoleArn _
instance showRoleArn :: Show RoleArn where show = genericShow
instance decodeRoleArn :: Decode RoleArn where decode = genericDecode options
instance encodeRoleArn :: Encode RoleArn where encode = genericEncode options



newtype S3Bucket = S3Bucket String
derive instance newtypeS3Bucket :: Newtype S3Bucket _
derive instance repGenericS3Bucket :: Generic S3Bucket _
instance showS3Bucket :: Show S3Bucket where show = genericShow
instance decodeS3Bucket :: Decode S3Bucket where decode = genericDecode options
instance encodeS3Bucket :: Encode S3Bucket where encode = genericEncode options



-- | <p>Provides the S3 bucket name and object name.</p> <p>The region for the S3 bucket containing the S3 object must match the region you use for Amazon Rekognition operations.</p> <p>For Amazon Rekognition to process an S3 object, the user must have permission to access the S3 object. For more information, see <a>manage-access-resource-policies</a>. </p>
newtype S3Object = S3Object 
  { "Bucket" :: NullOrUndefined (S3Bucket)
  , "Name" :: NullOrUndefined (S3ObjectName)
  , "Version" :: NullOrUndefined (S3ObjectVersion)
  }
derive instance newtypeS3Object :: Newtype S3Object _
derive instance repGenericS3Object :: Generic S3Object _
instance showS3Object :: Show S3Object where show = genericShow
instance decodeS3Object :: Decode S3Object where decode = genericDecode options
instance encodeS3Object :: Encode S3Object where encode = genericEncode options

-- | Constructs S3Object from required parameters
newS3Object :: S3Object
newS3Object  = S3Object { "Bucket": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs S3Object's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Object' :: ( { "Bucket" :: NullOrUndefined (S3Bucket) , "Name" :: NullOrUndefined (S3ObjectName) , "Version" :: NullOrUndefined (S3ObjectVersion) } -> {"Bucket" :: NullOrUndefined (S3Bucket) , "Name" :: NullOrUndefined (S3ObjectName) , "Version" :: NullOrUndefined (S3ObjectVersion) } ) -> S3Object
newS3Object'  customize = (S3Object <<< customize) { "Bucket": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype S3ObjectName = S3ObjectName String
derive instance newtypeS3ObjectName :: Newtype S3ObjectName _
derive instance repGenericS3ObjectName :: Generic S3ObjectName _
instance showS3ObjectName :: Show S3ObjectName where show = genericShow
instance decodeS3ObjectName :: Decode S3ObjectName where decode = genericDecode options
instance encodeS3ObjectName :: Encode S3ObjectName where encode = genericEncode options



newtype S3ObjectVersion = S3ObjectVersion String
derive instance newtypeS3ObjectVersion :: Newtype S3ObjectVersion _
derive instance repGenericS3ObjectVersion :: Generic S3ObjectVersion _
instance showS3ObjectVersion :: Show S3ObjectVersion where show = genericShow
instance decodeS3ObjectVersion :: Decode S3ObjectVersion where decode = genericDecode options
instance encodeS3ObjectVersion :: Encode S3ObjectVersion where encode = genericEncode options



newtype SNSTopicArn = SNSTopicArn String
derive instance newtypeSNSTopicArn :: Newtype SNSTopicArn _
derive instance repGenericSNSTopicArn :: Generic SNSTopicArn _
instance showSNSTopicArn :: Show SNSTopicArn where show = genericShow
instance decodeSNSTopicArn :: Decode SNSTopicArn where decode = genericDecode options
instance encodeSNSTopicArn :: Encode SNSTopicArn where encode = genericEncode options



newtype SearchFacesByImageRequest = SearchFacesByImageRequest 
  { "CollectionId" :: (CollectionId)
  , "Image" :: (Image)
  , "MaxFaces" :: NullOrUndefined (MaxFaces)
  , "FaceMatchThreshold" :: NullOrUndefined (Percent)
  }
derive instance newtypeSearchFacesByImageRequest :: Newtype SearchFacesByImageRequest _
derive instance repGenericSearchFacesByImageRequest :: Generic SearchFacesByImageRequest _
instance showSearchFacesByImageRequest :: Show SearchFacesByImageRequest where show = genericShow
instance decodeSearchFacesByImageRequest :: Decode SearchFacesByImageRequest where decode = genericDecode options
instance encodeSearchFacesByImageRequest :: Encode SearchFacesByImageRequest where encode = genericEncode options

-- | Constructs SearchFacesByImageRequest from required parameters
newSearchFacesByImageRequest :: CollectionId -> Image -> SearchFacesByImageRequest
newSearchFacesByImageRequest _CollectionId _Image = SearchFacesByImageRequest { "CollectionId": _CollectionId, "Image": _Image, "FaceMatchThreshold": (NullOrUndefined Nothing), "MaxFaces": (NullOrUndefined Nothing) }

-- | Constructs SearchFacesByImageRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchFacesByImageRequest' :: CollectionId -> Image -> ( { "CollectionId" :: (CollectionId) , "Image" :: (Image) , "MaxFaces" :: NullOrUndefined (MaxFaces) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } -> {"CollectionId" :: (CollectionId) , "Image" :: (Image) , "MaxFaces" :: NullOrUndefined (MaxFaces) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } ) -> SearchFacesByImageRequest
newSearchFacesByImageRequest' _CollectionId _Image customize = (SearchFacesByImageRequest <<< customize) { "CollectionId": _CollectionId, "Image": _Image, "FaceMatchThreshold": (NullOrUndefined Nothing), "MaxFaces": (NullOrUndefined Nothing) }



newtype SearchFacesByImageResponse = SearchFacesByImageResponse 
  { "SearchedFaceBoundingBox" :: NullOrUndefined (BoundingBox)
  , "SearchedFaceConfidence" :: NullOrUndefined (Percent)
  , "FaceMatches" :: NullOrUndefined (FaceMatchList)
  , "FaceModelVersion" :: NullOrUndefined (String)
  }
derive instance newtypeSearchFacesByImageResponse :: Newtype SearchFacesByImageResponse _
derive instance repGenericSearchFacesByImageResponse :: Generic SearchFacesByImageResponse _
instance showSearchFacesByImageResponse :: Show SearchFacesByImageResponse where show = genericShow
instance decodeSearchFacesByImageResponse :: Decode SearchFacesByImageResponse where decode = genericDecode options
instance encodeSearchFacesByImageResponse :: Encode SearchFacesByImageResponse where encode = genericEncode options

-- | Constructs SearchFacesByImageResponse from required parameters
newSearchFacesByImageResponse :: SearchFacesByImageResponse
newSearchFacesByImageResponse  = SearchFacesByImageResponse { "FaceMatches": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "SearchedFaceBoundingBox": (NullOrUndefined Nothing), "SearchedFaceConfidence": (NullOrUndefined Nothing) }

-- | Constructs SearchFacesByImageResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchFacesByImageResponse' :: ( { "SearchedFaceBoundingBox" :: NullOrUndefined (BoundingBox) , "SearchedFaceConfidence" :: NullOrUndefined (Percent) , "FaceMatches" :: NullOrUndefined (FaceMatchList) , "FaceModelVersion" :: NullOrUndefined (String) } -> {"SearchedFaceBoundingBox" :: NullOrUndefined (BoundingBox) , "SearchedFaceConfidence" :: NullOrUndefined (Percent) , "FaceMatches" :: NullOrUndefined (FaceMatchList) , "FaceModelVersion" :: NullOrUndefined (String) } ) -> SearchFacesByImageResponse
newSearchFacesByImageResponse'  customize = (SearchFacesByImageResponse <<< customize) { "FaceMatches": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "SearchedFaceBoundingBox": (NullOrUndefined Nothing), "SearchedFaceConfidence": (NullOrUndefined Nothing) }



newtype SearchFacesRequest = SearchFacesRequest 
  { "CollectionId" :: (CollectionId)
  , "FaceId" :: (FaceId)
  , "MaxFaces" :: NullOrUndefined (MaxFaces)
  , "FaceMatchThreshold" :: NullOrUndefined (Percent)
  }
derive instance newtypeSearchFacesRequest :: Newtype SearchFacesRequest _
derive instance repGenericSearchFacesRequest :: Generic SearchFacesRequest _
instance showSearchFacesRequest :: Show SearchFacesRequest where show = genericShow
instance decodeSearchFacesRequest :: Decode SearchFacesRequest where decode = genericDecode options
instance encodeSearchFacesRequest :: Encode SearchFacesRequest where encode = genericEncode options

-- | Constructs SearchFacesRequest from required parameters
newSearchFacesRequest :: CollectionId -> FaceId -> SearchFacesRequest
newSearchFacesRequest _CollectionId _FaceId = SearchFacesRequest { "CollectionId": _CollectionId, "FaceId": _FaceId, "FaceMatchThreshold": (NullOrUndefined Nothing), "MaxFaces": (NullOrUndefined Nothing) }

-- | Constructs SearchFacesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchFacesRequest' :: CollectionId -> FaceId -> ( { "CollectionId" :: (CollectionId) , "FaceId" :: (FaceId) , "MaxFaces" :: NullOrUndefined (MaxFaces) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } -> {"CollectionId" :: (CollectionId) , "FaceId" :: (FaceId) , "MaxFaces" :: NullOrUndefined (MaxFaces) , "FaceMatchThreshold" :: NullOrUndefined (Percent) } ) -> SearchFacesRequest
newSearchFacesRequest' _CollectionId _FaceId customize = (SearchFacesRequest <<< customize) { "CollectionId": _CollectionId, "FaceId": _FaceId, "FaceMatchThreshold": (NullOrUndefined Nothing), "MaxFaces": (NullOrUndefined Nothing) }



newtype SearchFacesResponse = SearchFacesResponse 
  { "SearchedFaceId" :: NullOrUndefined (FaceId)
  , "FaceMatches" :: NullOrUndefined (FaceMatchList)
  , "FaceModelVersion" :: NullOrUndefined (String)
  }
derive instance newtypeSearchFacesResponse :: Newtype SearchFacesResponse _
derive instance repGenericSearchFacesResponse :: Generic SearchFacesResponse _
instance showSearchFacesResponse :: Show SearchFacesResponse where show = genericShow
instance decodeSearchFacesResponse :: Decode SearchFacesResponse where decode = genericDecode options
instance encodeSearchFacesResponse :: Encode SearchFacesResponse where encode = genericEncode options

-- | Constructs SearchFacesResponse from required parameters
newSearchFacesResponse :: SearchFacesResponse
newSearchFacesResponse  = SearchFacesResponse { "FaceMatches": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "SearchedFaceId": (NullOrUndefined Nothing) }

-- | Constructs SearchFacesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSearchFacesResponse' :: ( { "SearchedFaceId" :: NullOrUndefined (FaceId) , "FaceMatches" :: NullOrUndefined (FaceMatchList) , "FaceModelVersion" :: NullOrUndefined (String) } -> {"SearchedFaceId" :: NullOrUndefined (FaceId) , "FaceMatches" :: NullOrUndefined (FaceMatchList) , "FaceModelVersion" :: NullOrUndefined (String) } ) -> SearchFacesResponse
newSearchFacesResponse'  customize = (SearchFacesResponse <<< customize) { "FaceMatches": (NullOrUndefined Nothing), "FaceModelVersion": (NullOrUndefined Nothing), "SearchedFaceId": (NullOrUndefined Nothing) }



-- | <p>Indicates whether or not the face is smiling, and the confidence level in the determination.</p>
newtype Smile = Smile 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeSmile :: Newtype Smile _
derive instance repGenericSmile :: Generic Smile _
instance showSmile :: Show Smile where show = genericShow
instance decodeSmile :: Decode Smile where decode = genericDecode options
instance encodeSmile :: Encode Smile where encode = genericEncode options

-- | Constructs Smile from required parameters
newSmile :: Smile
newSmile  = Smile { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Smile's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSmile' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> Smile
newSmile'  customize = (Smile <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype StartCelebrityRecognitionRequest = StartCelebrityRecognitionRequest 
  { "Video" :: (Video)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartCelebrityRecognitionRequest :: Newtype StartCelebrityRecognitionRequest _
derive instance repGenericStartCelebrityRecognitionRequest :: Generic StartCelebrityRecognitionRequest _
instance showStartCelebrityRecognitionRequest :: Show StartCelebrityRecognitionRequest where show = genericShow
instance decodeStartCelebrityRecognitionRequest :: Decode StartCelebrityRecognitionRequest where decode = genericDecode options
instance encodeStartCelebrityRecognitionRequest :: Encode StartCelebrityRecognitionRequest where encode = genericEncode options

-- | Constructs StartCelebrityRecognitionRequest from required parameters
newStartCelebrityRecognitionRequest :: Video -> StartCelebrityRecognitionRequest
newStartCelebrityRecognitionRequest _Video = StartCelebrityRecognitionRequest { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartCelebrityRecognitionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartCelebrityRecognitionRequest' :: Video -> ( { "Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartCelebrityRecognitionRequest
newStartCelebrityRecognitionRequest' _Video customize = (StartCelebrityRecognitionRequest <<< customize) { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartCelebrityRecognitionResponse = StartCelebrityRecognitionResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartCelebrityRecognitionResponse :: Newtype StartCelebrityRecognitionResponse _
derive instance repGenericStartCelebrityRecognitionResponse :: Generic StartCelebrityRecognitionResponse _
instance showStartCelebrityRecognitionResponse :: Show StartCelebrityRecognitionResponse where show = genericShow
instance decodeStartCelebrityRecognitionResponse :: Decode StartCelebrityRecognitionResponse where decode = genericDecode options
instance encodeStartCelebrityRecognitionResponse :: Encode StartCelebrityRecognitionResponse where encode = genericEncode options

-- | Constructs StartCelebrityRecognitionResponse from required parameters
newStartCelebrityRecognitionResponse :: StartCelebrityRecognitionResponse
newStartCelebrityRecognitionResponse  = StartCelebrityRecognitionResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartCelebrityRecognitionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartCelebrityRecognitionResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartCelebrityRecognitionResponse
newStartCelebrityRecognitionResponse'  customize = (StartCelebrityRecognitionResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartContentModerationRequest = StartContentModerationRequest 
  { "Video" :: (Video)
  , "MinConfidence" :: NullOrUndefined (Percent)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartContentModerationRequest :: Newtype StartContentModerationRequest _
derive instance repGenericStartContentModerationRequest :: Generic StartContentModerationRequest _
instance showStartContentModerationRequest :: Show StartContentModerationRequest where show = genericShow
instance decodeStartContentModerationRequest :: Decode StartContentModerationRequest where decode = genericDecode options
instance encodeStartContentModerationRequest :: Encode StartContentModerationRequest where encode = genericEncode options

-- | Constructs StartContentModerationRequest from required parameters
newStartContentModerationRequest :: Video -> StartContentModerationRequest
newStartContentModerationRequest _Video = StartContentModerationRequest { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartContentModerationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartContentModerationRequest' :: Video -> ( { "Video" :: (Video) , "MinConfidence" :: NullOrUndefined (Percent) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "MinConfidence" :: NullOrUndefined (Percent) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartContentModerationRequest
newStartContentModerationRequest' _Video customize = (StartContentModerationRequest <<< customize) { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartContentModerationResponse = StartContentModerationResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartContentModerationResponse :: Newtype StartContentModerationResponse _
derive instance repGenericStartContentModerationResponse :: Generic StartContentModerationResponse _
instance showStartContentModerationResponse :: Show StartContentModerationResponse where show = genericShow
instance decodeStartContentModerationResponse :: Decode StartContentModerationResponse where decode = genericDecode options
instance encodeStartContentModerationResponse :: Encode StartContentModerationResponse where encode = genericEncode options

-- | Constructs StartContentModerationResponse from required parameters
newStartContentModerationResponse :: StartContentModerationResponse
newStartContentModerationResponse  = StartContentModerationResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartContentModerationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartContentModerationResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartContentModerationResponse
newStartContentModerationResponse'  customize = (StartContentModerationResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartFaceDetectionRequest = StartFaceDetectionRequest 
  { "Video" :: (Video)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "FaceAttributes" :: NullOrUndefined (FaceAttributes)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartFaceDetectionRequest :: Newtype StartFaceDetectionRequest _
derive instance repGenericStartFaceDetectionRequest :: Generic StartFaceDetectionRequest _
instance showStartFaceDetectionRequest :: Show StartFaceDetectionRequest where show = genericShow
instance decodeStartFaceDetectionRequest :: Decode StartFaceDetectionRequest where decode = genericDecode options
instance encodeStartFaceDetectionRequest :: Encode StartFaceDetectionRequest where encode = genericEncode options

-- | Constructs StartFaceDetectionRequest from required parameters
newStartFaceDetectionRequest :: Video -> StartFaceDetectionRequest
newStartFaceDetectionRequest _Video = StartFaceDetectionRequest { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "FaceAttributes": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartFaceDetectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartFaceDetectionRequest' :: Video -> ( { "Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "FaceAttributes" :: NullOrUndefined (FaceAttributes) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "FaceAttributes" :: NullOrUndefined (FaceAttributes) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartFaceDetectionRequest
newStartFaceDetectionRequest' _Video customize = (StartFaceDetectionRequest <<< customize) { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "FaceAttributes": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartFaceDetectionResponse = StartFaceDetectionResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartFaceDetectionResponse :: Newtype StartFaceDetectionResponse _
derive instance repGenericStartFaceDetectionResponse :: Generic StartFaceDetectionResponse _
instance showStartFaceDetectionResponse :: Show StartFaceDetectionResponse where show = genericShow
instance decodeStartFaceDetectionResponse :: Decode StartFaceDetectionResponse where decode = genericDecode options
instance encodeStartFaceDetectionResponse :: Encode StartFaceDetectionResponse where encode = genericEncode options

-- | Constructs StartFaceDetectionResponse from required parameters
newStartFaceDetectionResponse :: StartFaceDetectionResponse
newStartFaceDetectionResponse  = StartFaceDetectionResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartFaceDetectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartFaceDetectionResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartFaceDetectionResponse
newStartFaceDetectionResponse'  customize = (StartFaceDetectionResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartFaceSearchRequest = StartFaceSearchRequest 
  { "Video" :: (Video)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "FaceMatchThreshold" :: NullOrUndefined (Percent)
  , "CollectionId" :: (CollectionId)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartFaceSearchRequest :: Newtype StartFaceSearchRequest _
derive instance repGenericStartFaceSearchRequest :: Generic StartFaceSearchRequest _
instance showStartFaceSearchRequest :: Show StartFaceSearchRequest where show = genericShow
instance decodeStartFaceSearchRequest :: Decode StartFaceSearchRequest where decode = genericDecode options
instance encodeStartFaceSearchRequest :: Encode StartFaceSearchRequest where encode = genericEncode options

-- | Constructs StartFaceSearchRequest from required parameters
newStartFaceSearchRequest :: CollectionId -> Video -> StartFaceSearchRequest
newStartFaceSearchRequest _CollectionId _Video = StartFaceSearchRequest { "CollectionId": _CollectionId, "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "FaceMatchThreshold": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartFaceSearchRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartFaceSearchRequest' :: CollectionId -> Video -> ( { "Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "FaceMatchThreshold" :: NullOrUndefined (Percent) , "CollectionId" :: (CollectionId) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "FaceMatchThreshold" :: NullOrUndefined (Percent) , "CollectionId" :: (CollectionId) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartFaceSearchRequest
newStartFaceSearchRequest' _CollectionId _Video customize = (StartFaceSearchRequest <<< customize) { "CollectionId": _CollectionId, "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "FaceMatchThreshold": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartFaceSearchResponse = StartFaceSearchResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartFaceSearchResponse :: Newtype StartFaceSearchResponse _
derive instance repGenericStartFaceSearchResponse :: Generic StartFaceSearchResponse _
instance showStartFaceSearchResponse :: Show StartFaceSearchResponse where show = genericShow
instance decodeStartFaceSearchResponse :: Decode StartFaceSearchResponse where decode = genericDecode options
instance encodeStartFaceSearchResponse :: Encode StartFaceSearchResponse where encode = genericEncode options

-- | Constructs StartFaceSearchResponse from required parameters
newStartFaceSearchResponse :: StartFaceSearchResponse
newStartFaceSearchResponse  = StartFaceSearchResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartFaceSearchResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartFaceSearchResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartFaceSearchResponse
newStartFaceSearchResponse'  customize = (StartFaceSearchResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartLabelDetectionRequest = StartLabelDetectionRequest 
  { "Video" :: (Video)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "MinConfidence" :: NullOrUndefined (Percent)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartLabelDetectionRequest :: Newtype StartLabelDetectionRequest _
derive instance repGenericStartLabelDetectionRequest :: Generic StartLabelDetectionRequest _
instance showStartLabelDetectionRequest :: Show StartLabelDetectionRequest where show = genericShow
instance decodeStartLabelDetectionRequest :: Decode StartLabelDetectionRequest where decode = genericDecode options
instance encodeStartLabelDetectionRequest :: Encode StartLabelDetectionRequest where encode = genericEncode options

-- | Constructs StartLabelDetectionRequest from required parameters
newStartLabelDetectionRequest :: Video -> StartLabelDetectionRequest
newStartLabelDetectionRequest _Video = StartLabelDetectionRequest { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartLabelDetectionRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLabelDetectionRequest' :: Video -> ( { "Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "MinConfidence" :: NullOrUndefined (Percent) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "MinConfidence" :: NullOrUndefined (Percent) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartLabelDetectionRequest
newStartLabelDetectionRequest' _Video customize = (StartLabelDetectionRequest <<< customize) { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "MinConfidence": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartLabelDetectionResponse = StartLabelDetectionResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartLabelDetectionResponse :: Newtype StartLabelDetectionResponse _
derive instance repGenericStartLabelDetectionResponse :: Generic StartLabelDetectionResponse _
instance showStartLabelDetectionResponse :: Show StartLabelDetectionResponse where show = genericShow
instance decodeStartLabelDetectionResponse :: Decode StartLabelDetectionResponse where decode = genericDecode options
instance encodeStartLabelDetectionResponse :: Encode StartLabelDetectionResponse where encode = genericEncode options

-- | Constructs StartLabelDetectionResponse from required parameters
newStartLabelDetectionResponse :: StartLabelDetectionResponse
newStartLabelDetectionResponse  = StartLabelDetectionResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartLabelDetectionResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLabelDetectionResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartLabelDetectionResponse
newStartLabelDetectionResponse'  customize = (StartLabelDetectionResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartPersonTrackingRequest = StartPersonTrackingRequest 
  { "Video" :: (Video)
  , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken)
  , "NotificationChannel" :: NullOrUndefined (NotificationChannel)
  , "JobTag" :: NullOrUndefined (JobTag)
  }
derive instance newtypeStartPersonTrackingRequest :: Newtype StartPersonTrackingRequest _
derive instance repGenericStartPersonTrackingRequest :: Generic StartPersonTrackingRequest _
instance showStartPersonTrackingRequest :: Show StartPersonTrackingRequest where show = genericShow
instance decodeStartPersonTrackingRequest :: Decode StartPersonTrackingRequest where decode = genericDecode options
instance encodeStartPersonTrackingRequest :: Encode StartPersonTrackingRequest where encode = genericEncode options

-- | Constructs StartPersonTrackingRequest from required parameters
newStartPersonTrackingRequest :: Video -> StartPersonTrackingRequest
newStartPersonTrackingRequest _Video = StartPersonTrackingRequest { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }

-- | Constructs StartPersonTrackingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartPersonTrackingRequest' :: Video -> ( { "Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } -> {"Video" :: (Video) , "ClientRequestToken" :: NullOrUndefined (ClientRequestToken) , "NotificationChannel" :: NullOrUndefined (NotificationChannel) , "JobTag" :: NullOrUndefined (JobTag) } ) -> StartPersonTrackingRequest
newStartPersonTrackingRequest' _Video customize = (StartPersonTrackingRequest <<< customize) { "Video": _Video, "ClientRequestToken": (NullOrUndefined Nothing), "JobTag": (NullOrUndefined Nothing), "NotificationChannel": (NullOrUndefined Nothing) }



newtype StartPersonTrackingResponse = StartPersonTrackingResponse 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeStartPersonTrackingResponse :: Newtype StartPersonTrackingResponse _
derive instance repGenericStartPersonTrackingResponse :: Generic StartPersonTrackingResponse _
instance showStartPersonTrackingResponse :: Show StartPersonTrackingResponse where show = genericShow
instance decodeStartPersonTrackingResponse :: Decode StartPersonTrackingResponse where decode = genericDecode options
instance encodeStartPersonTrackingResponse :: Encode StartPersonTrackingResponse where encode = genericEncode options

-- | Constructs StartPersonTrackingResponse from required parameters
newStartPersonTrackingResponse :: StartPersonTrackingResponse
newStartPersonTrackingResponse  = StartPersonTrackingResponse { "JobId": (NullOrUndefined Nothing) }

-- | Constructs StartPersonTrackingResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartPersonTrackingResponse' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> StartPersonTrackingResponse
newStartPersonTrackingResponse'  customize = (StartPersonTrackingResponse <<< customize) { "JobId": (NullOrUndefined Nothing) }



newtype StartStreamProcessorRequest = StartStreamProcessorRequest 
  { "Name" :: (StreamProcessorName)
  }
derive instance newtypeStartStreamProcessorRequest :: Newtype StartStreamProcessorRequest _
derive instance repGenericStartStreamProcessorRequest :: Generic StartStreamProcessorRequest _
instance showStartStreamProcessorRequest :: Show StartStreamProcessorRequest where show = genericShow
instance decodeStartStreamProcessorRequest :: Decode StartStreamProcessorRequest where decode = genericDecode options
instance encodeStartStreamProcessorRequest :: Encode StartStreamProcessorRequest where encode = genericEncode options

-- | Constructs StartStreamProcessorRequest from required parameters
newStartStreamProcessorRequest :: StreamProcessorName -> StartStreamProcessorRequest
newStartStreamProcessorRequest _Name = StartStreamProcessorRequest { "Name": _Name }

-- | Constructs StartStreamProcessorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartStreamProcessorRequest' :: StreamProcessorName -> ( { "Name" :: (StreamProcessorName) } -> {"Name" :: (StreamProcessorName) } ) -> StartStreamProcessorRequest
newStartStreamProcessorRequest' _Name customize = (StartStreamProcessorRequest <<< customize) { "Name": _Name }



newtype StartStreamProcessorResponse = StartStreamProcessorResponse Types.NoArguments
derive instance newtypeStartStreamProcessorResponse :: Newtype StartStreamProcessorResponse _
derive instance repGenericStartStreamProcessorResponse :: Generic StartStreamProcessorResponse _
instance showStartStreamProcessorResponse :: Show StartStreamProcessorResponse where show = genericShow
instance decodeStartStreamProcessorResponse :: Decode StartStreamProcessorResponse where decode = genericDecode options
instance encodeStartStreamProcessorResponse :: Encode StartStreamProcessorResponse where encode = genericEncode options



newtype StatusMessage = StatusMessage String
derive instance newtypeStatusMessage :: Newtype StatusMessage _
derive instance repGenericStatusMessage :: Generic StatusMessage _
instance showStatusMessage :: Show StatusMessage where show = genericShow
instance decodeStatusMessage :: Decode StatusMessage where decode = genericDecode options
instance encodeStatusMessage :: Encode StatusMessage where encode = genericEncode options



newtype StopStreamProcessorRequest = StopStreamProcessorRequest 
  { "Name" :: (StreamProcessorName)
  }
derive instance newtypeStopStreamProcessorRequest :: Newtype StopStreamProcessorRequest _
derive instance repGenericStopStreamProcessorRequest :: Generic StopStreamProcessorRequest _
instance showStopStreamProcessorRequest :: Show StopStreamProcessorRequest where show = genericShow
instance decodeStopStreamProcessorRequest :: Decode StopStreamProcessorRequest where decode = genericDecode options
instance encodeStopStreamProcessorRequest :: Encode StopStreamProcessorRequest where encode = genericEncode options

-- | Constructs StopStreamProcessorRequest from required parameters
newStopStreamProcessorRequest :: StreamProcessorName -> StopStreamProcessorRequest
newStopStreamProcessorRequest _Name = StopStreamProcessorRequest { "Name": _Name }

-- | Constructs StopStreamProcessorRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopStreamProcessorRequest' :: StreamProcessorName -> ( { "Name" :: (StreamProcessorName) } -> {"Name" :: (StreamProcessorName) } ) -> StopStreamProcessorRequest
newStopStreamProcessorRequest' _Name customize = (StopStreamProcessorRequest <<< customize) { "Name": _Name }



newtype StopStreamProcessorResponse = StopStreamProcessorResponse Types.NoArguments
derive instance newtypeStopStreamProcessorResponse :: Newtype StopStreamProcessorResponse _
derive instance repGenericStopStreamProcessorResponse :: Generic StopStreamProcessorResponse _
instance showStopStreamProcessorResponse :: Show StopStreamProcessorResponse where show = genericShow
instance decodeStopStreamProcessorResponse :: Decode StopStreamProcessorResponse where decode = genericDecode options
instance encodeStopStreamProcessorResponse :: Encode StopStreamProcessorResponse where encode = genericEncode options



-- | <p>An object that recognizes faces in a streaming video. An Amazon Rekognition stream processor is created by a call to . The request parameters for <code>CreateStreamProcessor</code> describe the Kinesis video stream source for the streaming video, face recognition parameters, and where to stream the analysis resullts. </p>
newtype StreamProcessor = StreamProcessor 
  { "Name" :: NullOrUndefined (StreamProcessorName)
  , "Status" :: NullOrUndefined (StreamProcessorStatus)
  }
derive instance newtypeStreamProcessor :: Newtype StreamProcessor _
derive instance repGenericStreamProcessor :: Generic StreamProcessor _
instance showStreamProcessor :: Show StreamProcessor where show = genericShow
instance decodeStreamProcessor :: Decode StreamProcessor where decode = genericDecode options
instance encodeStreamProcessor :: Encode StreamProcessor where encode = genericEncode options

-- | Constructs StreamProcessor from required parameters
newStreamProcessor :: StreamProcessor
newStreamProcessor  = StreamProcessor { "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs StreamProcessor's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamProcessor' :: ( { "Name" :: NullOrUndefined (StreamProcessorName) , "Status" :: NullOrUndefined (StreamProcessorStatus) } -> {"Name" :: NullOrUndefined (StreamProcessorName) , "Status" :: NullOrUndefined (StreamProcessorStatus) } ) -> StreamProcessor
newStreamProcessor'  customize = (StreamProcessor <<< customize) { "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype StreamProcessorArn = StreamProcessorArn String
derive instance newtypeStreamProcessorArn :: Newtype StreamProcessorArn _
derive instance repGenericStreamProcessorArn :: Generic StreamProcessorArn _
instance showStreamProcessorArn :: Show StreamProcessorArn where show = genericShow
instance decodeStreamProcessorArn :: Decode StreamProcessorArn where decode = genericDecode options
instance encodeStreamProcessorArn :: Encode StreamProcessorArn where encode = genericEncode options



-- | <p>Information about the source streaming video. </p>
newtype StreamProcessorInput = StreamProcessorInput 
  { "KinesisVideoStream" :: NullOrUndefined (KinesisVideoStream)
  }
derive instance newtypeStreamProcessorInput :: Newtype StreamProcessorInput _
derive instance repGenericStreamProcessorInput :: Generic StreamProcessorInput _
instance showStreamProcessorInput :: Show StreamProcessorInput where show = genericShow
instance decodeStreamProcessorInput :: Decode StreamProcessorInput where decode = genericDecode options
instance encodeStreamProcessorInput :: Encode StreamProcessorInput where encode = genericEncode options

-- | Constructs StreamProcessorInput from required parameters
newStreamProcessorInput :: StreamProcessorInput
newStreamProcessorInput  = StreamProcessorInput { "KinesisVideoStream": (NullOrUndefined Nothing) }

-- | Constructs StreamProcessorInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamProcessorInput' :: ( { "KinesisVideoStream" :: NullOrUndefined (KinesisVideoStream) } -> {"KinesisVideoStream" :: NullOrUndefined (KinesisVideoStream) } ) -> StreamProcessorInput
newStreamProcessorInput'  customize = (StreamProcessorInput <<< customize) { "KinesisVideoStream": (NullOrUndefined Nothing) }



newtype StreamProcessorList = StreamProcessorList (Array StreamProcessor)
derive instance newtypeStreamProcessorList :: Newtype StreamProcessorList _
derive instance repGenericStreamProcessorList :: Generic StreamProcessorList _
instance showStreamProcessorList :: Show StreamProcessorList where show = genericShow
instance decodeStreamProcessorList :: Decode StreamProcessorList where decode = genericDecode options
instance encodeStreamProcessorList :: Encode StreamProcessorList where encode = genericEncode options



newtype StreamProcessorName = StreamProcessorName String
derive instance newtypeStreamProcessorName :: Newtype StreamProcessorName _
derive instance repGenericStreamProcessorName :: Generic StreamProcessorName _
instance showStreamProcessorName :: Show StreamProcessorName where show = genericShow
instance decodeStreamProcessorName :: Decode StreamProcessorName where decode = genericDecode options
instance encodeStreamProcessorName :: Encode StreamProcessorName where encode = genericEncode options



-- | <p>Information about the Amazon Kinesis Data Streams stream to which a Rekognition Video stream processor streams the results of a video analysis. For more information, see .</p>
newtype StreamProcessorOutput = StreamProcessorOutput 
  { "KinesisDataStream" :: NullOrUndefined (KinesisDataStream)
  }
derive instance newtypeStreamProcessorOutput :: Newtype StreamProcessorOutput _
derive instance repGenericStreamProcessorOutput :: Generic StreamProcessorOutput _
instance showStreamProcessorOutput :: Show StreamProcessorOutput where show = genericShow
instance decodeStreamProcessorOutput :: Decode StreamProcessorOutput where decode = genericDecode options
instance encodeStreamProcessorOutput :: Encode StreamProcessorOutput where encode = genericEncode options

-- | Constructs StreamProcessorOutput from required parameters
newStreamProcessorOutput :: StreamProcessorOutput
newStreamProcessorOutput  = StreamProcessorOutput { "KinesisDataStream": (NullOrUndefined Nothing) }

-- | Constructs StreamProcessorOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamProcessorOutput' :: ( { "KinesisDataStream" :: NullOrUndefined (KinesisDataStream) } -> {"KinesisDataStream" :: NullOrUndefined (KinesisDataStream) } ) -> StreamProcessorOutput
newStreamProcessorOutput'  customize = (StreamProcessorOutput <<< customize) { "KinesisDataStream": (NullOrUndefined Nothing) }



-- | <p>Input parameters used to recognize faces in a streaming video analyzed by a Amazon Rekognition stream processor.</p>
newtype StreamProcessorSettings = StreamProcessorSettings 
  { "FaceSearch" :: NullOrUndefined (FaceSearchSettings)
  }
derive instance newtypeStreamProcessorSettings :: Newtype StreamProcessorSettings _
derive instance repGenericStreamProcessorSettings :: Generic StreamProcessorSettings _
instance showStreamProcessorSettings :: Show StreamProcessorSettings where show = genericShow
instance decodeStreamProcessorSettings :: Decode StreamProcessorSettings where decode = genericDecode options
instance encodeStreamProcessorSettings :: Encode StreamProcessorSettings where encode = genericEncode options

-- | Constructs StreamProcessorSettings from required parameters
newStreamProcessorSettings :: StreamProcessorSettings
newStreamProcessorSettings  = StreamProcessorSettings { "FaceSearch": (NullOrUndefined Nothing) }

-- | Constructs StreamProcessorSettings's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStreamProcessorSettings' :: ( { "FaceSearch" :: NullOrUndefined (FaceSearchSettings) } -> {"FaceSearch" :: NullOrUndefined (FaceSearchSettings) } ) -> StreamProcessorSettings
newStreamProcessorSettings'  customize = (StreamProcessorSettings <<< customize) { "FaceSearch": (NullOrUndefined Nothing) }



newtype StreamProcessorStatus = StreamProcessorStatus String
derive instance newtypeStreamProcessorStatus :: Newtype StreamProcessorStatus _
derive instance repGenericStreamProcessorStatus :: Generic StreamProcessorStatus _
instance showStreamProcessorStatus :: Show StreamProcessorStatus where show = genericShow
instance decodeStreamProcessorStatus :: Decode StreamProcessorStatus where decode = genericDecode options
instance encodeStreamProcessorStatus :: Encode StreamProcessorStatus where encode = genericEncode options



-- | <p>Indicates whether or not the face is wearing sunglasses, and the confidence level in the determination.</p>
newtype Sunglasses = Sunglasses 
  { "Value" :: NullOrUndefined (Boolean)
  , "Confidence" :: NullOrUndefined (Percent)
  }
derive instance newtypeSunglasses :: Newtype Sunglasses _
derive instance repGenericSunglasses :: Generic Sunglasses _
instance showSunglasses :: Show Sunglasses where show = genericShow
instance decodeSunglasses :: Decode Sunglasses where decode = genericDecode options
instance encodeSunglasses :: Encode Sunglasses where encode = genericEncode options

-- | Constructs Sunglasses from required parameters
newSunglasses :: Sunglasses
newSunglasses  = Sunglasses { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Sunglasses's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSunglasses' :: ( { "Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } -> {"Value" :: NullOrUndefined (Boolean) , "Confidence" :: NullOrUndefined (Percent) } ) -> Sunglasses
newSunglasses'  customize = (Sunglasses <<< customize) { "Confidence": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



-- | <p>Information about a word or line of text detected by .</p> <p>The <code>DetectedText</code> field contains the text that Amazon Rekognition detected in the image. </p> <p>Every word and line has an identifier (<code>Id</code>). Each word belongs to a line and has a parent identifier (<code>ParentId</code>) that identifies the line of text in which the word appears. The word <code>Id</code> is also an index for the word within a line of words. </p> <p>For more information, see <a>text-detection</a>.</p>
newtype TextDetection = TextDetection 
  { "DetectedText" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (TextTypes)
  , "Id" :: NullOrUndefined (UInteger)
  , "ParentId" :: NullOrUndefined (UInteger)
  , "Confidence" :: NullOrUndefined (Percent)
  , "Geometry" :: NullOrUndefined (Geometry)
  }
derive instance newtypeTextDetection :: Newtype TextDetection _
derive instance repGenericTextDetection :: Generic TextDetection _
instance showTextDetection :: Show TextDetection where show = genericShow
instance decodeTextDetection :: Decode TextDetection where decode = genericDecode options
instance encodeTextDetection :: Encode TextDetection where encode = genericEncode options

-- | Constructs TextDetection from required parameters
newTextDetection :: TextDetection
newTextDetection  = TextDetection { "Confidence": (NullOrUndefined Nothing), "DetectedText": (NullOrUndefined Nothing), "Geometry": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ParentId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs TextDetection's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTextDetection' :: ( { "DetectedText" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (TextTypes) , "Id" :: NullOrUndefined (UInteger) , "ParentId" :: NullOrUndefined (UInteger) , "Confidence" :: NullOrUndefined (Percent) , "Geometry" :: NullOrUndefined (Geometry) } -> {"DetectedText" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (TextTypes) , "Id" :: NullOrUndefined (UInteger) , "ParentId" :: NullOrUndefined (UInteger) , "Confidence" :: NullOrUndefined (Percent) , "Geometry" :: NullOrUndefined (Geometry) } ) -> TextDetection
newTextDetection'  customize = (TextDetection <<< customize) { "Confidence": (NullOrUndefined Nothing), "DetectedText": (NullOrUndefined Nothing), "Geometry": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "ParentId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype TextDetectionList = TextDetectionList (Array TextDetection)
derive instance newtypeTextDetectionList :: Newtype TextDetectionList _
derive instance repGenericTextDetectionList :: Generic TextDetectionList _
instance showTextDetectionList :: Show TextDetectionList where show = genericShow
instance decodeTextDetectionList :: Decode TextDetectionList where decode = genericDecode options
instance encodeTextDetectionList :: Encode TextDetectionList where encode = genericEncode options



newtype TextTypes = TextTypes String
derive instance newtypeTextTypes :: Newtype TextTypes _
derive instance repGenericTextTypes :: Generic TextTypes _
instance showTextTypes :: Show TextTypes where show = genericShow
instance decodeTextTypes :: Decode TextTypes where decode = genericDecode options
instance encodeTextTypes :: Encode TextTypes where encode = genericEncode options



-- | <p>Amazon Rekognition is temporarily unable to process the request. Try your call again.</p>
newtype ThrottlingException = ThrottlingException Types.NoArguments
derive instance newtypeThrottlingException :: Newtype ThrottlingException _
derive instance repGenericThrottlingException :: Generic ThrottlingException _
instance showThrottlingException :: Show ThrottlingException where show = genericShow
instance decodeThrottlingException :: Decode ThrottlingException where decode = genericDecode options
instance encodeThrottlingException :: Encode ThrottlingException where encode = genericEncode options



newtype UInteger = UInteger Int
derive instance newtypeUInteger :: Newtype UInteger _
derive instance repGenericUInteger :: Generic UInteger _
instance showUInteger :: Show UInteger where show = genericShow
instance decodeUInteger :: Decode UInteger where decode = genericDecode options
instance encodeUInteger :: Encode UInteger where encode = genericEncode options



newtype ULong = ULong Number
derive instance newtypeULong :: Newtype ULong _
derive instance repGenericULong :: Generic ULong _
instance showULong :: Show ULong where show = genericShow
instance decodeULong :: Decode ULong where decode = genericDecode options
instance encodeULong :: Encode ULong where encode = genericEncode options



newtype Url = Url String
derive instance newtypeUrl :: Newtype Url _
derive instance repGenericUrl :: Generic Url _
instance showUrl :: Show Url where show = genericShow
instance decodeUrl :: Decode Url where decode = genericDecode options
instance encodeUrl :: Encode Url where encode = genericEncode options



newtype Urls = Urls (Array Url)
derive instance newtypeUrls :: Newtype Urls _
derive instance repGenericUrls :: Generic Urls _
instance showUrls :: Show Urls where show = genericShow
instance decodeUrls :: Decode Urls where decode = genericDecode options
instance encodeUrls :: Encode Urls where encode = genericEncode options



-- | <p>Video file stored in an Amazon S3 bucket. Amazon Rekognition video start operations such as use <code>Video</code> to specify a video for analysis. The supported file formats are .mp4, .mov and .avi.</p>
newtype Video = Video 
  { "S3Object" :: NullOrUndefined (S3Object)
  }
derive instance newtypeVideo :: Newtype Video _
derive instance repGenericVideo :: Generic Video _
instance showVideo :: Show Video where show = genericShow
instance decodeVideo :: Decode Video where decode = genericDecode options
instance encodeVideo :: Encode Video where encode = genericEncode options

-- | Constructs Video from required parameters
newVideo :: Video
newVideo  = Video { "S3Object": (NullOrUndefined Nothing) }

-- | Constructs Video's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideo' :: ( { "S3Object" :: NullOrUndefined (S3Object) } -> {"S3Object" :: NullOrUndefined (S3Object) } ) -> Video
newVideo'  customize = (Video <<< customize) { "S3Object": (NullOrUndefined Nothing) }



newtype VideoJobStatus = VideoJobStatus String
derive instance newtypeVideoJobStatus :: Newtype VideoJobStatus _
derive instance repGenericVideoJobStatus :: Generic VideoJobStatus _
instance showVideoJobStatus :: Show VideoJobStatus where show = genericShow
instance decodeVideoJobStatus :: Decode VideoJobStatus where decode = genericDecode options
instance encodeVideoJobStatus :: Encode VideoJobStatus where encode = genericEncode options



-- | <p>Information about a video that Amazon Rekognition analyzed. <code>Videometadata</code> is returned in every page of paginated responses from a Amazon Rekognition video operation.</p>
newtype VideoMetadata = VideoMetadata 
  { "Codec" :: NullOrUndefined (String)
  , "DurationMillis" :: NullOrUndefined (ULong)
  , "Format" :: NullOrUndefined (String)
  , "FrameRate" :: NullOrUndefined (Number)
  , "FrameHeight" :: NullOrUndefined (ULong)
  , "FrameWidth" :: NullOrUndefined (ULong)
  }
derive instance newtypeVideoMetadata :: Newtype VideoMetadata _
derive instance repGenericVideoMetadata :: Generic VideoMetadata _
instance showVideoMetadata :: Show VideoMetadata where show = genericShow
instance decodeVideoMetadata :: Decode VideoMetadata where decode = genericDecode options
instance encodeVideoMetadata :: Encode VideoMetadata where encode = genericEncode options

-- | Constructs VideoMetadata from required parameters
newVideoMetadata :: VideoMetadata
newVideoMetadata  = VideoMetadata { "Codec": (NullOrUndefined Nothing), "DurationMillis": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "FrameHeight": (NullOrUndefined Nothing), "FrameRate": (NullOrUndefined Nothing), "FrameWidth": (NullOrUndefined Nothing) }

-- | Constructs VideoMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVideoMetadata' :: ( { "Codec" :: NullOrUndefined (String) , "DurationMillis" :: NullOrUndefined (ULong) , "Format" :: NullOrUndefined (String) , "FrameRate" :: NullOrUndefined (Number) , "FrameHeight" :: NullOrUndefined (ULong) , "FrameWidth" :: NullOrUndefined (ULong) } -> {"Codec" :: NullOrUndefined (String) , "DurationMillis" :: NullOrUndefined (ULong) , "Format" :: NullOrUndefined (String) , "FrameRate" :: NullOrUndefined (Number) , "FrameHeight" :: NullOrUndefined (ULong) , "FrameWidth" :: NullOrUndefined (ULong) } ) -> VideoMetadata
newVideoMetadata'  customize = (VideoMetadata <<< customize) { "Codec": (NullOrUndefined Nothing), "DurationMillis": (NullOrUndefined Nothing), "Format": (NullOrUndefined Nothing), "FrameHeight": (NullOrUndefined Nothing), "FrameRate": (NullOrUndefined Nothing), "FrameWidth": (NullOrUndefined Nothing) }



-- | <p>The file size or duration of the supplied media is too large. The maximum file size is 8GB. The maximum duration is 2 hours. </p>
newtype VideoTooLargeException = VideoTooLargeException Types.NoArguments
derive instance newtypeVideoTooLargeException :: Newtype VideoTooLargeException _
derive instance repGenericVideoTooLargeException :: Generic VideoTooLargeException _
instance showVideoTooLargeException :: Show VideoTooLargeException where show = genericShow
instance decodeVideoTooLargeException :: Decode VideoTooLargeException where decode = genericDecode options
instance encodeVideoTooLargeException :: Encode VideoTooLargeException where encode = genericEncode options

