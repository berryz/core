-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: zhanqqq124
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `zq_model_addition`
--

DROP TABLE IF EXISTS `zq_model_addition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `zq_model_addition` (
  `ma_id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_add_time` int(11) NOT NULL,
  `ma_update_time` int(11) NOT NULL,
  `ma_approval_status` tinyint(4) NOT NULL,
  `ma_add_user_id` smallint(6) NOT NULL,
  `zt_id` smallint(6) NOT NULL,
  `ma_keyword` text,
  `ma_description` text,
  `ma_content` text NOT NULL,
  `ma_ml_id` int(11) NOT NULL COMMENT 'ml表主键',
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='长字段表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zq_model_addition`
--

LOCK TABLES `zq_model_addition` WRITE;
/*!40000 ALTER TABLE `zq_model_addition` DISABLE KEYS */;
INSERT INTO `zq_model_addition` VALUES (1,1583047462,1583398874,0,1,1,'','','<p>本系统用php编码完成，底层用dcrphp框架。</p><p>后台用H-ui.admin，采用前后端分离开发完成</p>',1),(2,1583047567,1583398879,0,1,1,'','','<p>开发列表:</p><p><a href=\"https://github.com/junqing124/dcrphp/wiki\">https://github.com/junqing124/dcrphp/wiki</a></p>',2),(3,1583047863,1583398885,0,1,1,'','','<p>投放广告的目的是为了引流，而有流量的前提是广告得有展示曝光，但是影响广告展示的因素有哪些呢？今天主要给大家介绍以下8块内容：</p><p><br/></p><p>1、是否获得购物车（Buy Box）？</p><p>如果你的listing没有购物车，其实是打不了广告的。我们在日常运营中要关注自己listing购物车的赢得率，在选择商品进行投放时，也要考虑这个商品购物车的赢得率是多少。不然创建了广告计划之后仍然不会有曝光。</p><p><br/></p><p>2、广告投入</p><p>在推广一款商品之前，我们要规划好预算，打算投多少广告费用在这款商品上。每个阶段分配多少钱，然后对应的竞价是多少。广告位置排在首页和其它页的流量差别还是非常大的。通常情况下，你的广告投入越多，你的曝光也会更多。</p><p><br/></p><p>3、相关性</p><p>亚马逊会根据卖家listing和广告的内容与买家需求做匹配，如果你的相关性越高，那么你得到曝光的机会也就越高。</p><p>所以，卖家在优化自己listing的时候，一定要把握好这一因素，尤其是需要将精准的关键词布局到listing的各个模块，让亚马逊更好的识别你的产品。而在投放广告时，相关性也同等重要。</p><p><br/></p><p>4、广告商品分类</p><p>商品分类准确，其实也是为了让亚马逊更好地识别你的产品。这样当买家搜索商品时，亚马逊也就能更准确地为他推荐匹配的商品。</p><p><br/></p><p>5、历史点击率（CTR）和转化率（CVR）</p><p>历史点击率和转化率越高，说明你的产品越受欢迎。亚马逊当然也会将更好的产品推荐给买家，毕竟让买家获得更好的购物体验是亚马逊一直以来的宗旨。</p><p><br/></p><p>6、产品价格</p><p>其它条件差不多的情况下，对于大部分产品，价格越低，相对也会更加受欢迎。理所当然，你的广告获得被推荐的几率也就更大。</p><p><br/></p><p>7、评论</p><p>Rating的数量和评级的分数，直接影响着买家的购买选择。很少有买家愿意去当小白鼠，或者选择rating分数低的商品。获得更优的评论，这是每个运营所一直追求的，而且会贯穿整个产品的生命周期。对于亚马逊广告来说，它当然也会更愿意展示更好的产品。</p><p>现在亚马逊广告中还出现了一个“4 Stars and Above”的广告位置，充分说明好的评论在广告展示中的重要性。</p><p><br/></p><p>8、账户的总体表现</p><p>账户总体的表现这个因素虽然不是那么明显，但实际也影响着广告的整体表现。在日常运营中，我们要注意整个销售账户的总体表现，做到合规运营，各个指标都要达到亚马逊的要求。</p><p><br/></p><p>总结：</p><p>影响亚马逊广告展示的因素肯定不止以上八个，但是如果将以上八个因素都做好，你的广告展示量肯定不会差。而且它们之间又是相互促进、相互影响的。</p><p><br/></p>',3),(4,1583047943,1583398889,0,1,1,'','','<p>现在的站内广告确实越来越不好玩了，竞争激烈，竞价升高，而产品的利润率又越来越低。开广告就亏损，不开广告就没流量没订单，这是很多卖家遇到的尴尬局面。</p><p>每个人都知道站内广告玩法的核心在于优化，可真正到运营的实践中，却又不知道该如何优化。</p><p><br/></p><p>凡事有主次，广告的优化也不例外，虽然广告辐射的数据很多，需要解读和调整的数据也很多，但最重要的数据毫无疑问是ACOS。</p><p><br/></p><p>如果能够以全局视角，把ACOS的解读分为以下三个阶段，也许我们对广告的把握就更好一些。三个阶段具体如下：</p><p><br/></p><p>第一阶段：广告投放之后的2-4周内</p><p><br/></p><p>此阶段，可以无视ACOS的高低</p><p><br/></p><p>设置该产品的总预算（即产品的前期推广投入）和日预算，只要在预算之内，只关注订单/销量和BSR排名，辅助观察关键词排名。</p><p><br/></p><p>关于广告预算，我的建议是，日预算大于等于广告竞价的30倍，总预算大于等于日预算的60倍。简单的理解就是，日预算得起码可以支撑得起广告被点击30次，而整个广告预算最起码要做好两个月投放的准备。毕竟，一个爆款的形成，需要基础流量，保证每天广告导入足够的点击，这是基础流量的一部分，而另一方面，一个产品成为爆款，需要时间的沉淀，两个月打造出一个爆款的节奏已经算是比较快的了，而广告就是打造爆款过程中的重要辅助工具。</p><p><br/></p><p>在这一阶段，我们期望达成的效果是，以周为单位，销量环比上升，BSR排名环比上升，关键词排名实现从无到有，从“找不到”到“找得到”（我这里是指自己尝试去手工找的结果）。</p><p><br/></p><p>期间，辅助的项目包括，Review和QA的增加，一方面来自于订单增多之后的自动产生，另一方面来自于确保安全前提下的增评。</p><p><br/></p><p>第二阶段：在广告投放4周左右</p><p><br/></p><p>ACOS虽然依然大于或等于毛利率</p><p><br/></p><p>但较第一阶段有所下降</p><p><br/></p><p>在此阶段，应该关注的指标包括，总销量比前一阶段增多，BSR排名比前一阶段上升，广告带来的销售在总销售中的占比较第一阶段下降，虽然当前阶段从广告的层面看是亏损的，但广告支出和总销售额的比例开始小于等于毛利率，即总销售达到盈亏平衡或者有一定利润。</p><p><br/></p><p>此阶段利润虽然少，总体利润率也比较低，但市场份额扩大，即你在该产品的竞争中的相对优势有一定的提升。</p><p><br/></p><p>第三阶段：广告投放6周之后</p><p><br/></p><p>ACOS小于等于毛利率或预期毛利率</p><p><br/></p><p>在这一阶段，通过前边一两个月的推广打造之后，Listing的爆款已初步形成，BSR排名接近或进入头部，这一阶段，广告所带来的订单数量在总订单中逐步减少，而广告也要通过降低竞价等手段让其ACOS逐步下降，降至毛利率以内，这样，从广告直接的投入产出比的角度，达到盈亏平衡和盈利。</p><p><br/></p><p>如果对广告的解读能够沿着这样三个阶段的视角来解读，我们再看其他数据的时候就不致于太焦虑，也不致于匆匆忙忙就把广告按了暂停键。在广告的优化上，很多时候，耐着性子观察和等待甚至比盲目的胡乱调整更有效。（来源：跨境电商赢商荟）</p><p><br/></p>',4),(5,1583048162,1583048162,0,1,1,'','','<p>dcrphp用于提供最基础的原生开发框架，主要目标让开发从最基础的编码中解放出来</p>',5),(6,1583048197,1583048197,0,1,1,'','','<p>QQ:335759285</p><p>Email:junqing124@126.com</p><p>Site:www.dcrcms.com</p>',6),(7,1583569887,1583569887,0,1,1,'','','<p>学校类模板</p>',7),(8,1583569901,1583569901,0,1,1,'','','<p>企业类模板</p>',8),(9,1583569917,1583569917,0,1,1,'','','<p>电商类模板</p>',9),(10,1583569929,1583569929,0,1,1,'','','<p>科技类模板</p>',10),(11,1583569942,1583570024,0,1,1,'','','<p>化工类模板</p>',11);
/*!40000 ALTER TABLE `zq_model_addition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-08 22:26:55
