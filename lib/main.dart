import 'package:url_launcher/url_launcher.dart';
import 'package:cv_flutter/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

const anonymous = true;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: anonymous ? 'CV - Dr. Max Wang' : 'CV - Chenxing Wang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Biography
              Row(
                children: const [
                  Text("Biography", style: h1),
                ],
              ),
              const Divider(),
              anonymous
                  ? Container()
                  : Row(
                      children: [
                        Image.asset(
                          "assets/avatar.jpg",
                          width: 100,
                          height: 142,
                        ),
                      ],
                    ),
              Row(
                children: const [
                  Text(anonymous ? "Dr. Max Wang" : "Chenxing Wang", style: h2),
                ],
              ),
              RichText(
                text: const TextSpan(
                    text:
                        '''I’m currently pursing P.h.D in Beijing University of Posts and Telecommunications working as a research assistant in the Institute of Computing Technology of the Chinese Academy of Sciences. 
I’m also serving as Reviewer in IEEE Network Magazine, Hindawi etc., Software Tech Lead in DYZN, Adviser in HBY, LY and Path Academics as well as User Group Volunteer at AWS. 
I work on machine learning and deep learning methods for intelligent transportation systems. I’m generally interested in travel time estimation, traffic flow prediction based on spatio-temporal data and methods and transportation mode detection. 
Specially, I’m mainly focusing on data mining techniques for time series data and non-Euclidean structure data (e.g. attention-based methods or graph neural networks etc.).''',
                    style: content1),
              ),
              Container(
                height: 8,
              ),
              if (anonymous)
                Container()
              else
                RichText(
                  text: TextSpan(
                    text: 'Contact:  ',
                    style: content1BoldItalic,
                    children: [
                      TextSpan(
                          text: 'max.chenxing.wang@outlook.com',
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              const url =
                                  'mailto:max.chenxing.wang@outlook.com';
                              if (await canLaunch(url)) {
                                await launch(
                                  url,
                                  forceSafariVC: false,
                                );
                              }
                            }),
                    ],
                  ),
                ),
              Container(
                height: 8,
              ),
              // Education
              Row(
                children: const [
                  Text("Education", style: h1),
                ],
              ),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "\u2022 ",
                        style: content1,
                        children: [
                          TextSpan(text: "PhD", style: content1Bold),
                          TextSpan(
                              text:
                                  " in Software Engineering, Beijing University of Posts and Telecommunications",
                              style: content1),
                          TextSpan(
                              text: "  (2021.9 - present)",
                              style: content1Bold),
                        ]),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "\u2022 ",
                        style: content1,
                        children: [
                          TextSpan(text: "MEng", style: content1Bold),
                          TextSpan(
                              text:
                                  " in Software Engineering, Beijing University of Posts and Telecommunications",
                              style: content1),
                          TextSpan(
                              text: "  (2019.9 - 2021.6)", style: content1Bold),
                        ]),
                  ),
                ],
              ),
              // Projects and Publications
              Container(
                height: 8,
              ),
              Row(
                children: const [
                  Text("Projects", style: h1),
                ],
              ),
              const Divider(),
              Column(
                children: [
                  Row(
                    children: const [
                      Text("Travel Time Estimation", style: h2),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            '''Travel time estimation (TTE) task is indispensable in mobile navigation, route planning and other applications in intelligent transportation systems (ITS). Although existing works can obtain good results on their datasets, the generalization ability and fine-grained route-feature learning ability still lack.''',
                        style: content1),
                  ),
                  Container(
                    height: 8,
                  ),
                  anonymous
                      ? Container()
                      : Column(
                          children: const [
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ", Fang Zhao, Haichao Zhang, Haiyong Luo, Yanjun Qin, Yuchen Fang. Fine-Grained Trajectory-based Travel Time Estimation for Multi-City Scenarios Based on Deep Meta-Learning. IEEE Transactions on Intelligent Transportation Systems. 01 February 2022. DOI: 10.1109/TITS.2022.3145382. 1-13.",
                                        style: content2),
                                    TextSpan(
                                        text: " (IF: 9.551, SCI一区, CCF-B)",
                                        style: content2Bold),
                                  ]),
                            ),
                          ],
                        ),
                  Container(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text("Transportation Mode Detection", style: h2),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            '''Transportation mode detection, as a significant branch of human activity recognition (HAR), is of great importance in analyzing human travel patterns, traffic prediction and planning. Though many works have been devoted to transportation mode detection, there remains challenge for accurate and robust transportation mode detection.''',
                        style: content1),
                  ),
                  Container(
                    height: 8,
                  ),
                  anonymous
                      ? Container()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ", Haiyong Luo, Fang Zhao, Yanjun Qin. Combining Residual and LSTM Recurrent Networks for Transportation Mode Detection Using Multimodal Sensors Integrated in Smartphones. IEEE Transactions on Intelligent Transportation Systems. September 2021. DOI: 10.1109/TITS.2020.2987598. 2021, 22(9):5473-5485",
                                        style: content2),
                                    TextSpan(
                                        text: " (IF: 9.551, SCI一区, CCF-B)",
                                        style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Yanjun Qin, Haiyong Luo, Fang Zhao, ",
                                        style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ", Jiaqi Wang, Yuexia Zhang. Towards Transportation Mode Recognition using Deep Convolutional and Long Short-Term Memory Recurrent Neural Networks. IEEE Access. 2019,7(1):142353-142367.",
                                        style: content2),
                                    TextSpan(
                                        text: " (IF: 4.098, SCI二区)",
                                        style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text: "Yanjun Qin, ", style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ", Haiyong Luo. Transportation Recognition with the Sussex-Huawei Locomotion Challenge. Adjunct Proceedings of the 2019 ACM International Joint Conference on Pervasive and Ubiquitous Computing and Proceedings of the 2019 ACM International Symposium on Wearable Computers.",
                                        style: content2),
                                    TextSpan(
                                        text: " (CCF-A Workshop)",
                                        style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(text: "秦艳君,", style: content2),
                                    TextSpan(text: "王晨星", style: content2Bold),
                                    TextSpan(
                                        text:
                                            ",高存远,罗海勇,赵方,王宝会,刘世泽 (2022). 基于多尺度特征提取的交通模式识别算法. 计算机应用.",
                                        style: content2),
                                    TextSpan(
                                        text: " (北大中文核心)", style: content2Bold),
                                  ]),
                            ),
                          ],
                        ),
                  Container(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text("Next Point-of-Interest Recommendation", style: h2),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            '''Next point-of-interest (POI) recommendation is one of the most important tasks in LBSNs, aiming to make personalized recommendations of next suitable locations to users by discovering preferences from users' historical activities.''',
                        style: content1),
                  ),
                  Container(
                    height: 8,
                  ),
                  anonymous
                      ? Container()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Yanjun Qin, Yuchen Fang, Haiyong Luo, Fang Zhao, ",
                                        style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ". Next Point-of-Interest Recommendation with Auto-Correlation Enhanced Multi-Modal Transformer Network. Proceedings of the 45th International ACM SIGIR Conference on Research and Development in Information Retrieval. (SIGIR 2022). Madrid, Spain, 2022, July 11-15, 2612-2616.",
                                        style: content2),
                                    TextSpan(
                                        text: " (CCF-A)", style: content2Bold),
                                  ]),
                            ),
                          ],
                        ),
                  Container(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text("Traffic Forecasting", style: h2),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                        text:
                            '''Traffic forecasting is a key problem in intelligent transportation system. Specially, we focus on the accurate travel speed forecasting based on METR-LA and PEMS datasets, which contains both spatial (graph based) and temporal sensor data.''',
                        style: content1),
                  ),
                  Container(
                    height: 8,
                  ),
                  anonymous
                      ? Container()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Yuchen Fang, Yanjun Qin, Haiyong Luo, Fang Zhao, Bingbing Xu, Liang Zeng, ",
                                        style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ". When Spatio-Temporal Meet Wavelets: Disentangled Traffic Forecasting via Efficient Spectral Graph Attention Networks. ICDE2023.",
                                        style: content2),
                                    TextSpan(
                                        text: " (CCF-A)", style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Yuchen Fang, Fang Zhao, Yanjun Qin, Haiyong Luo, ",
                                        style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ". Learning All Dynamics: Traffic Forecasting via Locality-Aware Spatio-Temporal Joint Transformer.  IEEE Transactions on Intelligent Transportation Systems. DOI: 10.1109/TITS.2022.3197640. 16 August 2022. 1-14.",
                                        style: content2),
                                    TextSpan(
                                        text: " (IF: 9.551, SCI一区, CCF-B)",
                                        style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(
                                        text:
                                            "Yanjun Qin, Haiyong Luo, Fang Zhao, Yuchen Fangyuchen, ",
                                        style: content2),
                                    TextSpan(
                                        text: "Chenxing Wang",
                                        style: content2Bold),
                                    TextSpan(
                                        text:
                                            ". Attention Enhanced Graph Convolution Long Short-Term Memory Network for Traffic Forecasting. International Journal of Intelligent Systems.",
                                        style: content2),
                                    TextSpan(
                                        text: " (IF: 8.709, SCI二区, CCF-C)",
                                        style: content2Bold),
                                  ]),
                            ),
                            SelectableText.rich(
                              TextSpan(
                                  text: '\u2022 ',
                                  style: content2,
                                  children: [
                                    TextSpan(text: "秦艳君,", style: content2),
                                    TextSpan(text: "王晨星", style: content2Bold),
                                    TextSpan(
                                        text:
                                            ",苏琳,柯其学,罗海勇,孙艺,王宝会,刘世泽 (2022). 基于深度残差长短记忆网络交通流量预测算法. 计算机应用.",
                                        style: content2),
                                    TextSpan(
                                        text: " (北大中文核心)", style: content2Bold),
                                  ]),
                            ),
                          ],
                        ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
