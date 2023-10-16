SERVICES=$(cat <<-END
agoric
akash
archway
assetmantle
axelar
bitcanna
bitsong
celestia-testnet
cheqd
chihuahua
composable
composable-archive-sub
composable-testnet
coreum
cosmoshub-archive-sub1
cosmoshub-archive-sub
cosmoshub
cosmoshub-testnet
crescent-testnet
crescent
cryptoorgchain
cyber
dig-archive
dig
dydx-testnet
emoney
evmos-archive-sub1
evmos-archive-sub2
evmos-archive-sub3
evmos-archive-sub
evmos
evmos-testnet
fetchhub
gravitybridge
injective-testnet
injective
irisnet
ixo
juno
kava
kichain
konstellation
kujira
mars
neutron
noble
nois
omniflixhub
osmosis-testnet
osmosis
persistent
quasar
quicksilver
regen-testnet
regen
sei-archive-sub
sei-archive-sub1
sei
sentinel
sommelier
stargaze-testnet
stargaze
starname
stride
terra2-testnet
terra2
terra
umee
vidulum
whitewhale-testnet
whitewhale
END
)

for service_name in $SERVICES; do
  echo "redeploying $service_name"
  sh docker_service_create.sh $service_name
  sleep 3
done

