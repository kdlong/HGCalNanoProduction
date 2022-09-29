import math
import FWCore.ParameterSet.Config as cms
from FWCore.ParameterSet.VarParsing import VarParsing

generator = cms.EDProducer("FlatEtaRangeGunProducer",
    # particle ids
    PGunParameters = cms.PSet(
        #particleIDs=cms.vint32(22, 22, 11,-11,211,-211,13,-13, 310, 130, 111, 311, 321, -321, -15, 15),
        PartID=cms.vint32(22, 11, 15, -15, 211, -211, -11),
        #particleIDs=cms.vint32(15,-15),
        #particleIDs=cms.vint32(22),
        # max number of particles to shoot at a time
        nParticles=cms.int32(10),
        # shoot exactly the particles defined in particleIDs in that order
        exactShoot=cms.bool(False),
        # randomly shoot [1, nParticles] particles, each time randomly drawn from particleIDs
        randomShoot=cms.bool(False),
        # energy range
        MinE=cms.double(20),
        MaxE=cms.double(200.0),
        # phi range
        MinPhi=cms.double(-math.pi),
        MaxPhi=cms.double(math.pi),
        # eta range
        MinEta=cms.double(1.52),
        MaxEta=cms.double(3.00),
    ),
    AddAntiParticle = cms.bool(False),
    debug=cms.untracked.bool(True),
)
