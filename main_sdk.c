#include  "xil_types.h"
#include "xio.h"
#include "xil_io.h"
#include "xuartlite.h"
int main()
{
	u8* imageData=XPAR_BRAM_0_BASEADDR;
	u32 receivedBytesNum=0;
	u32 totalReceivedBytesNum=0;
	u32 status=0;
	u32 fileSize = 16;
	XUartLite_Config* myUartConfig= XUartLite_LookupConfig(XPAR_AXI_UARTLITE_0_DEVICE_ID);
	XUartLite myUart;
	status = XUartLite_CfgInitialize(&myUart,myUartConfig, myUartConfig->RegBaseAddr);
	if(status != XST_SUCCESS)
		xil_printf("Uart init failed\n");
	//read data from the UART interface
	while(totalReceivedBytesNum < fileSize)
	{
		receivedBytesNum = XUartLite_Recv(&myUart,imageData+(sizeof(u8)*totalReceivedBytesNum),fileSize);
		totalReceivedBytesNum += receivedBytesNum;
	}
	//bytes inversion
	for(int i=0;i<16;i++)
	{
		XIo_Out8(imageData, 255-XIo_In8(imageData));
		imageData+=1;
	}
	//write back to stdio through the UART interface
	for(int i=0;i<fileSize;i++)
	{
		xil_printf("d[%d] = %0X\n",i,XIo_In8(imageData));
		imageData+=1;
	}

}
