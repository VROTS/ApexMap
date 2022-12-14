if VehicleZoneDistribution then
--------------------------------New spawn zones--------------------------------


---Ranger 100%---

VehicleZoneDistribution.rangercien= VehicleZoneDistribution.rangercien or {};
VehicleZoneDistribution.rangercien.vehicles = VehicleZoneDistribution.rangercien.vehicles or {};

VehicleZoneDistribution.rangercien.vehicles["Base.PickUpVanLights"] = {index = 0, spawnChance = 50};
VehicleZoneDistribution.rangercien.vehicles["Base.PickUpTruckLights"] = {index = 0, spawnChance = 50};

VehicleZoneDistribution.rangercien.spawnRate = 100;

---Police only 100%---

VehicleZoneDistribution.policecien = VehicleZoneDistribution.policecien or {};
VehicleZoneDistribution.policecien.vehicles = VehicleZoneDistribution.policecien.vehicles or {};

VehicleZoneDistribution.policecien.vehicles["Base.PickUpVanLightsPolice"] = {index = 0, spawnChance = 25};
VehicleZoneDistribution.policecien.vehicles["Base.CarLightsPolice"] = {index = 0, spawnChance = 25};

VehicleZoneDistribution.policecien.spawnRate = 100;

---ambulance 100%---

VehicleZoneDistribution.ambucien = VehicleZoneDistribution.ambucien or {};
VehicleZoneDistribution.ambucien.vehicles = VehicleZoneDistribution.ambucien.vehicles or {};

VehicleZoneDistribution.ambucien.vehicles["Base.VanAmbulance"] = {index = 0, spawnChance = 100};

VehicleZoneDistribution.ambucien.spawnRate = 100;

---Ranger 50%---

VehicleZoneDistribution.rangercincuenta= VehicleZoneDistribution.rangercincuenta or {};
VehicleZoneDistribution.rangercincuenta.vehicles = VehicleZoneDistribution.rangercincuenta.vehicles or {};

VehicleZoneDistribution.rangercincuenta.vehicles["Base.PickUpVanLights"] = {index = 0, spawnChance = 50};
VehicleZoneDistribution.rangercincuenta.vehicles["Base.PickUpTruckLights"] = {index = 0, spawnChance = 50};

VehicleZoneDistribution.rangercincuenta.spawnRate = 50;

---Police only 50%---

VehicleZoneDistribution.policecincuenta = VehicleZoneDistribution.policecincuenta or {};
VehicleZoneDistribution.policecincuenta.vehicles = VehicleZoneDistribution.policecincuenta.vehicles or {};

VehicleZoneDistribution.policecincuenta.vehicles["Base.PickUpVanLightsPolice"] = {index = 0, spawnChance = 25};
VehicleZoneDistribution.policecincuenta.vehicles["Base.CarLightsPolice"] = {index = 0, spawnChance = 25};

VehicleZoneDistribution.policecincuenta.spawnRate = 50;



---ambulance 50%---

VehicleZoneDistribution.ambucincuenta = VehicleZoneDistribution.ambucincuenta or {};
VehicleZoneDistribution.ambucincuenta.vehicles = VehicleZoneDistribution.ambucincuenta.vehicles or {};

VehicleZoneDistribution.ambucincuenta.vehicles["Base.VanAmbulance"] = {index = 0, spawnChance = 100};

VehicleZoneDistribution.ambucincuenta.spawnRate = 50;

---fire 100%---

VehicleZoneDistribution.firecien = {};
VehicleZoneDistribution.firecien.vehicles = {};
VehicleZoneDistribution.firecien.vehicles["Base.PickUpVanLightsFire"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.firecien.vehicles["Base.PickUpTruckLightsFire"] = {index = -1, spawnChance = 50};

VehicleZoneDistribution.firecien.spawnRate = 100;


---fire 50%---

VehicleZoneDistribution.firecincuenta = {};
VehicleZoneDistribution.firecincuenta.vehicles = {};
VehicleZoneDistribution.firecincuenta.vehicles["Base.PickUpVanLightsFire"] = {index = -1, spawnChance = 50};
VehicleZoneDistribution.firecincuenta.vehicles["Base.PickUpTruckLightsFire"] = {index = -1, spawnChance = 50};

VehicleZoneDistribution.firecincuenta.spawnRate = 50;
end