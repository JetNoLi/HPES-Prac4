D = 2e-6:2000e-6:1e-6     %define range from 2ms to 2000ms for delay
pixels = 576*1024         %576x1024 pixel image
bytesPerPixel = 6         %bytes it takes to represent a pixel
bytesOfDataPerBlock= 197  %bytes of data we can send in a Blocks
blockSize = 200           %Total bytes sent in a block
dataTransferSpeed = 16e-6 %16Mbps

bytesToSend = pixels * bytesPerPixel    
blocksToSend = ceil(bytesToSend / bytesOfDataPerBlock)  
TimeToSendBlock = blockSize / dataTransferSpeed
TotalTimeToSendData = TimeToSendBlock * blocksToSend

totalTime = zeros(length(D))
totalDelay = zeros(length(D))
portionOfTotalThatIsDelay = zeros(length(D))

for 1:size(D) + 1
  totalDelay(i) = D(i)*(blocksToSend-1)
  totalTime(i) = TotalTimeToSendData + totalDelay(i) 
  portionOfTotalThatIsDelay(i) = totalDelay(i)/totalTime(i)
end

plot(D,totalTime)

plot(D,totalDelay)

plot(D,portionOfTotalThatIsDelay)
