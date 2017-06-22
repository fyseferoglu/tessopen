#include <baseapi.h>
#include <sys/time.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <raspicam/raspicam_cv.h>
#include <iostream>
#include <ctype.h>
using namespace cv;
using namespace std;

void checkSpeed(string);

int main(int argc, char* argv[]) {

  	// initilize tesseract OCR engine
  	tesseract::TessBaseAPI *myOCR = new tesseract::TessBaseAPI();
  	Mat src;
        time_t timer_begin,timer_end;
        raspicam::RaspiCam_Cv Camera;
	/*VideoCapture capture("filename.avi");
	if(!capture.isOpened())
		return 1;
	double rate = capture.get(CV_CAP_PROP_FPS);
	bool stop(false);
	int delay(1000/rate);*/
        Camera.set( CV_CAP_PROP_FORMAT, CV_8UC1 );
        Camera.set( CV_CAP_PROP_FRAME_WIDTH,1280);
        Camera.set( CV_CAP_PROP_FRAME_HEIGHT,960);
        cout<<"Opening Camera..."<<endl;
        int nCount = 0;
        char *speed;
	char  chars[] = {'\n',',','(',')','[',']'};
	//int fontFace = FONT_HERSHEY_PLAIN;
 	//double fontScale = 2;
	//int thickness = 2;	
	if (myOCR->Init(NULL, "eng")) {
    		cerr << "Error Initiliazing the Tesseract OCR"<<endl;return -1;
	}
	if (!Camera.open()) {cerr<<"Error opening the camera"<<endl;return -1;}
        cout<<"Capturing..." <<endl;
        /// Read the image
        //cout<<"Sleeping for 3 secs"<<endl;
        //usleep(3000000);
        namedWindow("Video",CV_WINDOW_NORMAL);
        namedWindow("Crop",CV_WINDOW_AUTOSIZE);
        time(&timer_begin);
        Mat croppedImage;
	Rect roi1(640,0,640,960);
	Size size(32,32);
	Mat crop;
	while(true){
		/*if(!capture.read(src))
			break;*/
  		Camera.grab();
  		Camera.retrieve(src);
  		/// Convert it to gray
  		//cvtColor( src, src_gray, CV_BGR2GRAY );
  		nCount++;
  		/// Reduce the noise so we avoid false circle detection
  		croppedImage = src(roi1);
		//GaussianBlur( croppedImage, croppedImage, Size(9, 9), 2, 2 );
		line(src,Point(640,0),Point(640,960),Scalar(0,0,0),2,8);
  		vector<Vec3f> circles;
		/// Apply the Hough Transform to find the circles
  		HoughCircles( croppedImage, circles, CV_HOUGH_GRADIENT, 1, croppedImage.rows/8, 135, 50, 30, 150 );
  		//the circles detected
  		for( size_t i = 0; i < circles.size(); i++ )
  		{
      			Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
      			int radius = cvRound(circles[i][2]);
      			
			Rect roi(center.x-radius,center.y-radius,radius*2,radius*2);
      			if(roi.x >= 0 && roi.y >= 0 && roi.width + roi.x < croppedImage.cols && roi.height + roi.y < croppedImage.rows){
			
			crop = croppedImage(roi);
			resize(crop,crop,size);
			// circle center
      			//circle( croppedImage, center, 3, Scalar(0,255,0), -1, 8, 0 );
      			// circle outline
      			//myOCR->TesseractRect(crop.data,1,crop.step1(),roi.x,roi.y,roi.width,roi.height);
			myOCR->SetImage((uchar*)crop.data, crop.size().width, crop.size().height, crop.channels(), crop.step1());
			myOCR->Recognize(0);
			speed = myOCR->GetUTF8Text();
			string str(speed);
			for(unsigned int i = 0; i < strlen(chars); i++){
				str.erase(remove(str.begin(), str.end(), chars[i]), str.end());
			}
			//cout<<"\r speed: " << speed << std::flush;
			for(unsigned int i = 0; i < str.size(); i++){
				if(isdigit(str[i])){
					//cout << "speed: " << str << endl;					
					checkSpeed(str);
				}
				else 
					break;
			}
			//circle( croppedImage, center, radius, Scalar(0,0,255), 3, 8, 0 );
      			imshow("Crop",crop);
      			/*if(waitKey(1)==27){
      				break;
      			}*/
			}
  		}
  		/*if(nCount%5 == 0)
  			cout<< "\r captured " << nCount << " images" <<std::flush;*/
  		imshow("Video",src);
  		if(waitKey(1)==27)
			break; 
		//if(nCount==100) break;
  	}
	time(&timer_end);
  	double second = difftime(timer_end,timer_begin);
  	cout<< " " << second <<" seconds for "<< nCount<<"  frames : FPS = "<<  ( float ) ( ( float ) ( nCount ) /second ) <<endl;
  	Camera.release();
  	// destroy tesseract OCR engine
  	myOCR->Clear();
  	myOCR->End();

  	return 0;
}

void checkSpeed(string str){
	if(str.compare("20") == 0)
		cout << "Speed limit is 20 km/h" << endl;
	else if(str.compare("50") == 0)
		cout << "Speed limit is 50 km/h" << endl;
	else if(str.compare("60") == 0)
		cout << "Speed limit is 60 km/h" << endl;
	else if(str.compare("70") == 0)
		cout << "Speed limit is 70 km/h" << endl;
	else if(str.compare("80") == 0)
		cout << "Speed limit is 80 km/h" << endl;
	else if(str.compare("90") == 0)
		cout << "Speed limit is 90 km/h" << endl;
	else if(str.compare("100") == 0)
		cout << "Speed limit is 100 km/h" << endl;
	else if(str.compare("110") == 0)
		cout << "Speed limit is 110 km/h" << endl;
	else if(str.compare("120") == 0)
		cout << "Speed limit is 120 km/h" << endl;
	
}
