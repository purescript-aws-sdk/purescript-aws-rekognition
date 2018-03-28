

-- | <p>This is the Amazon Rekognition API reference.</p>
module AWS.Rekognition where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Service (Options, Service, ServiceName(..), service) as AWS

newtype Service = Service AWS.Service

service :: forall eff. AWS.Options -> Eff (exception :: EXCEPTION | eff) Service
service options = do
    let serviceName = AWS.ServiceName "Rekognition"
    service' <- AWS.service serviceName options
    pure $ Service service'
