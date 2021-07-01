# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

USERS = [
    {
        username: "aush",
        email: "aush",
        password: "aush",
        password_confirmation: "aush"
    },
    {
        username: "one",
        email: "one",
        password: "one",
        password_confirmation: "one"
    },   
    {
        username: "test",
        email: "test",
        password: "test",
        password_confirmation: "test"
    }

]

USERS.each do |u|
    User.create(u)
end

aush = User.first
one = User.all[1]
t = User.all[2]
#{
#    name: "",
#    email: "",
#    password: "",
#    password_confirmation: ""
#}







SPECIES = [
    {
        name: "Largemouth Bass",
        scientific_name: "Micropterus salmoides",
        description: "The largemouth bass (Micropterus salmoides) is a carnivorous freshwater gamefish in the Centrarchidae (sunfish) family, a species of black bass native to the eastern and central United States, southeastern Canada and northern Mexico, but widely introduced elsewhere. It is known by a variety of regional names, such as the widemouth bass, bigmouth bass, black bass, bucketmouth, largies, Potter's fish, Florida bass, Florida largemouth, green bass, bucketmouth bass, Green trout, gilsdorf bass, Oswego bass, LMB, and southern largemouth and northern largemouth. The largemouth bass is the state fish of Georgia and Mississippi, and the state freshwater fish of Florida and Alabama. The largemouth bass is an olive-green to greenish gray fish, marked by a series of dark, sometimes black, blotches forming a jagged horizontal stripe along each flank. The upper jaw (maxilla) of a largemouth bass extends beyond the rear margin of the orbit. The largemouth is the largest of the black basses, reaching a maximum recorded overall length of 29.5 in (75 cm) and a maximum unofficial weight of 25 pounds 1 ounce (11.4 kg). Sexual dimorphism is found, with the female larger than the male. Average lifespan in the wild is 10 to 16 years."
    },  {
        name: "Smallmouth Bass",
        scientific_name: "Micropterus dolomieu",
        description: "The smallmouth bass (Micropterus dolomieu) is a species of freshwater fish in the sunfish family (Centrarchidae) of the order Perciformes.[3] It is the type species of its genus. One of the black basses, it is a popular game fish sought by anglers throughout the temperate zones of North America, and has been spread by stocking—as well as illegal introductions—to many cool-water tributaries and lakes in Canada and more so introduced in the United States.[4] The maximum recorded size is approximately 27 inches and 12 pounds. The smallmouth bass is native to the upper and middle Mississippi River basin, the Saint Lawrence River–Great Lakes system, and up into the Hudson Bay basin.[5] The world record size was 11 lbs and 15 ounces caught in the reservoir Dale Hollow, on the Kentucky—Tennessee border.[6] Its common names include smallmouth, bronzeback, brown bass, brownie, smallie, bronze bass, and bareback bass. Smallmouth have a slender but muscular fusiform body shape making them very powerful swimmers.[7] The coloration of the smallmouth bass' ctenoid scales range from golden-olive to dark brown dorsally which fades to a yellowish white ventrally with dark brown vertical bars or blotches along the body and dark brown horizontal bars on the head. The combination of the muscular fusiform body shape and camouflage like coloring make these fish highly effective ambush predators. The coloration can vary greatly depending on the fishes age, habitat, water quality, diet, and the spawning cycle. Generally, the protruding jaw of the smallmouth doesn't extend past the eyes which are red or brown. They have two dorsal fins which are separated by a shallow interdorsal notch. The front dorsal has 9-11 spiney rays and the back dorsal has 13–15 soft rays.
        Males are generally smaller than females. The males tend to range around two pounds, while females can range from three to six pounds. Their average sizes and coloration can differ, depending on if they are found in lacustrine or riverine habitats. Smallmouth found in riverine habitats are generally long and slender which allows greater agility in moving water, while those found in lacustrine habitats and shorter and deeper bodied.[10] Riverine smallmouth that live in dark water tend to be rather torpedo-shaped and very dark brown to be more efficient for feeding.[11] Lacustrine smallmouth bass, however, that live in sandy areas, tend to be a light yellow-brown and are more oval-shaped.
        There are two recognized subspecies, the Northern smallmouth bass (M. dolomieui dolomieui) and the Neosho smallmouth bass (M. dolomieui velox).[13] The Northern smallmouth bass is much more widespread than the much smaller subgroup called the Neosho smallmouth bass. The Neosho are native to an ecologically isolated region of the lower Midwest known as the Central Interior Highlands, which weave through southwestern Missouri, northern Arkansas and northeastern Oklahoma.
        They have been seen eating tadpoles, fish, aquatic insects, and crayfish.[15][16]"
    },  {
        name: "Carp",
        scientific_name: "Cyprinus carpio",
        description: "The common carp or European carp (Cyprinus carpio) is a widespread freshwater fish of eutrophic waters in lakes and large rivers in Europe and Asia.[2][3] The native wild populations are considered vulnerable to extinction by the International Union for Conservation of Nature (IUCN),[1] but the species has also been domesticated and introduced (see aquaculture) into environments worldwide, and is often considered a destructive invasive species,[2] being included in the list of the world's 100 worst invasive species. It gives its name to the carp family, Cyprinidae."
    },  {
        name: "Channel Catfish",
        scientific_name: "Ictalurus punctatus",
        description: "The channel catfish (Ictalurus punctatus) is North America's most numerous catfish species. It is the official fish of Kansas, Missouri, Iowa, Nebraska, and Tennessee, and is informally referred to as a 'channel cat'. In the United States, they are the most fished catfish species with around 8 million anglers targeting them per year. The popularity of channel catfish for food has contributed to the rapid expansion of aquaculture of this species in the United States.[2][3] It has also been widely introduced in Europe, Asia and South America, and it is legally considered an invasive species in many countries."
    },  {
        name: "White Crappie",
        scientific_name: "Pomoxis annularis",
        description: "The white crappie (Pomoxis annularis) is a freshwater fish found in North America, one of the two species of crappies.[2] Alternate common names for the species include goldring and silver perch.[3] USS Goldring is named for the fish. The genus name Pomoxis refers to crappies' sharp operculum, while the species name annularis means 'having rings', i.e., it has vaguely vertical bars on the body. White crappies are morphologically similar to black crappies. They have 5–10 dark vertical bars along their bodies, rather than the randomly scattered spots like the black crappie. The white crappie has a silvery color with green or brown shades along its back, with dark lateral bars along its side, and a white belly. The dorsal fins of the white crappie starts farther back on the body than those of the black crappie. The anal fin is about the same size as the dorsal fin.[5] The white crappie has six dorsal fin spines, whereas the black crappie has seven or eight dorsal fin spines.[5] White crappies are also slightly more elongated than black crappies.[6] The white crappie is a deep-bodied fish with a flattened body, or a depth that is one-third of the length of the fish. White crappies have spinous rays and ctenoid fish scales found in advanced teleosts. The exposed part of the scale has tiny tooth-like projections (cteni). Both species of crappies have a terminal mouth position with many small, conical teeth in two rows along the mouth and are called cardiform because they resemble a tool used for wool carding. Crappies belong to the family Centrarchidae in the infraclass Teleostei, which is one of three infraclasses in the class Actinopterygii.[7]

        The white crappie rarely exceeds 2 pounds (0.91 kg), and typically lives 2–7 years. The species is generally about 9–10 inches (23–25 cm) in length as an adult.[5] The current for all-tackle fishing world record for a white crappie is 2.35 kg (5.2 lb)."
    },  {
        name: "Southern Flounder",
        scientific_name: "Paralichthys lethostigma",
        description: "Paralichthys lethostigma, the southern flounder, is a species of large-tooth flounders native to the eastern and gulf coasts of the United States. It is a popular sports fish and is the largest and most commercially valuable flounder in the western North Atlantic Ocean and Gulf of Mexico.[2] It is a `left-eyed flounder`, meaning the left side is pigmented and is the up side. The body color is brown with diffuse, unocellated spots and blotches.[2] This species typically grows to around 12-14 inches in length."
    },
        {
        name: "Red Drum",
        scientific_name: "Sciaenops ocellatus",
        description: "The red drum (Sciaenops ocellatus), also known as redfish, channel bass, puppy drum, spottail bass, or simply red, is a game fish found in the Atlantic Ocean from Massachusetts to Florida and in the Gulf of Mexico from Florida to northern Mexico.[1] It is the only species in the genus Sciaenops.
        The red drum is related to the black drum (Pogonias cromis), and the two species are often found near to each other; they can interbreed and form a robust hybrid, and younger fish are often indistinguishable in flavor.Red drum are a dark red color on the back, which fades into white on the belly. The red drum has a characteristic eyespot near the tail and is somewhat streamlined. Three-year-old red drum typically weigh 6-8 lb. The largest red drum on record weighed just over 94 lb and was caught in 1984 on Hatteras Island.[3][4] Male red drum make a knocking or drumming sound during spawning by vibrating their swim bladders.
        The most distinguishing mark on the red drum is one large black spot on the upper part of the tail base. Having multiple spots is not uncommon for this fish, but having no spots is extremely rare. As the fish with multiple spots grow older, they seem to lose their excess spots. Scientists believe that the black spot near their tail helps fool predators into attacking the red drum's tail instead of its head, allowing the red drum to escape.[6] The red drum uses its senses of sight and touch, and its downturned mouth, to locate forage on the bottom through vacuuming or biting. On the top and middle of the water column, it uses changes in the light that might look like food. In the summer and fall, adult red drum feed on crabs, shrimp, and mullet; in the spring and winter, adults primarily feed on menhaden, mullet, pinfish, sea robin, lizardfish, spot, Atlantic croaker, and mudminnows."
    }
]

SPECIES.each do |spec|
    Species.create(spec)
end

#name: "",
#scientific_name: "",
#description: ""
#},


BAITS = [
    {
        name: "Carp fly, self tied black",
        efficacy_rating: 8,
        notes: "Carp and some small bass. red tail could be a clam lure."
    },
    {
        name: "Shad, self tied",
        efficacy_rating: 6,
        notes: "Bass, if sight casting."
    },
    {
        name: "Shrimp, GULP, 4in New-Penny",
        efficacy_rating: 8,
        notes: "Flounder, bounce on the floor."
    },
    {
        name: "Swimbait, Storm, clear with shad dot.",
        efficacy_rating: 7,
        notes: "Very effective, especially in clear water on overcast day. Can be retrieved slowly on the bottom."
    },
    {
        name: "Nymph - Dragonfly, self tied",
        efficacy_rating: 6,
        notes: "Trout, Bass if bass can see it well."
    },
    {
        name: "Plastic Worm",
        efficacy_rating: 6,
        notes: "Bass on a sunny day. Slow retrieval."
    }
]

#{
#    name: "",
#    efficacy_rating: "",
#    notes: ""
#}

BAITS.each do |b|
    Bait.create(b)
end


SPOTS = [
    {
        name: "Texas City Dike",
        lat: 29.380093948136828,
        lng: -94.85473956206043,
    },
    {
        name: "Pond",
        lat: 29.409204760678644,
        lng:  -94.91231955430735,
    },
    {
        name: "Moses Lake, Texas City, TX",
        lat: 29.431318092534447,
        lng:  -94.9273870647203,
    }
]

SPOTS.each do |s|
    Spot.create(s)
end
