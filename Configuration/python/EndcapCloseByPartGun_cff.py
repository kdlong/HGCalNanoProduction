import math
import FWCore.ParameterSet.Config as cms
from FWCore.ParameterSet.VarParsing import VarParsing


generator = cms.EDProducer("FlatEtaRangeNoTrackerGunProducer",
    # particle ids
      #particleIDs=cms.vint32(22, 22, 11,-11,211,-211,13,-13, 310, 130, 111, 311, 321, -321, -15, 15),
      particleIDs=cms.vint32(221, 11, 22, 310, 211, 211, -211, -211, -321, 11,
                             321, 11, -11, -11, 22, 22, 22, 22, 211, -211, -11,
                             22,  11, -11, -11, 22, 22, 22, 22, 211, -211, -11,
                             321, 111),
      #particleIDs=cms.vint32(15,-15),
      #particleIDs=cms.vint32(22),
      # max number of particles to shoot at a time
      nParticles=cms.int32(50),
      # shoot exactly the particles defined in particleIDs in that order
      exactShoot=cms.bool(False),
      # randomly shoot [1, nParticles] particles, each time randomly drawn from particleIDs
      randomShoot=cms.bool(True),
      # energy range
      eMin=cms.untracked.double(0.5),
      eMax=cms.untracked.double(200.0),
      # phi range
      #phiMin=cms.double(-math.pi),
      #phiMax=cms.double(math.pi),
      ## eta range
      #etaMin=cms.double(1.55),
      #etaMax=cms.double(2.9),
      #
      phiMin=cms.double(-math.pi),
      phiMax=cms.double(math.pi),
      # eta range
      #MinEta=cms.double(1.52),
      #MaxEta=cms.double(1.53),
      etaMin=cms.double(1.55),
      etaMax=cms.double(2.9),
      
      timeSmearInPs = cms.double(0.),
      
      minDistDR = cms.double(-0.1),
      
        momSmear=cms.double(-1),
      
      #timeSmearInPs = cms.double(0.),
      #),
      
    debug=cms.untracked.bool(True),
)
