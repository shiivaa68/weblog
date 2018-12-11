-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2018 at 06:23 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a.jpg',
  `cat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'طراحی سایت',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `user_id`, `title`, `demo`, `text`, `image`, `cat`, `created_at`, `updated_at`) VALUES
(1, 1, 'بهداشت روانی', 'سلامت روان عبارتست از رفتار موزون و هماهنگ با جامعه و شناخت و پذیرش واقعیات اجتماعی و قدرت سازگاری با آنها ارضای نیازهای خویش به طور متعادل درعین هدفداری در زندگی و شکوفا کردن استعدادهای فطری', '« همانا این دلها همانند بدنها افسرده می شوند پس برای شادابی دلها سخنان زیبای حکمت آمیز را بجویید. » حضرت علی علیه السلام\r\n\r\nیکی از از نعمتهای بسیار ارزشمند پروردگار برخورداری از جسم و روان سالم است و بهره مندی از آن در گرو رعایت موازین بهداشتی است .\r\n\r\nبهداشت از نظر علمی به معنای پیشگیری از بیماری ها و در نتیجه افزایش طول عمر و سلامتی در انسان است . بهداشت را در یک طبقه بندی کلی به دو نوع بهداشت جسمی و بهداشت روانی تقسیم نموده اند. حال سوال این است که بهداشت و سلامت روان چیست و چه عواملی بر آن تاثیر می گذارد.\r\n\r\nبهداشت روان علمی است برای بهتر زیستن و رفاه اجتماعی که تمام زوایای زندگی از اولین لحظات حیات جنینی تا مرگ اعم از زندگی داخل رحمی نوزادی کودکی تا نوجوانی بزرگسالی و پیری را در بر می گیرد. بهداشت روان دانش و هنری است که به افراد کمک می کند تا با ایجاد روش هایی صحیح از لحاظ روانی و عاطفی بتوانند با محیط خود سازگاری نموده و راه حل های مطلوب تری را برای حل مشکلاتشان انتخاب نمایند.\r\n\r\nاکثر روانپزشکان توانایی سازش با محیط انعطاف پذیری قضاوت عادلانه و منطقی در مواجه با محرومیتها و فشارهای روانی را ملاک سلامت و تعادل روان میدانند و هدف اصلی از درمان بیماران روانی نیز قادر کردن آنها به زندگی خانوادگی اجتماعی و به اصطلاح سازش با محیط است .', 'https://lorempixel.com/360/260/?78495', 'بهداشت و روان', '1975-04-12 04:08:09', '2018-10-31 16:54:37'),
(2, 1, 'بهداشت روانی', 'بهداشت روانی،اختلال های جزئی رفتار،خود کار آمدی،خودگردانی،زمینه های آسیب پذیری', 'هدف اصلی بهداشت روانی، پیش گیری از وقوع ناراحتی ها و اختلال های جزئی رفتار است و ارتقای سلامت، بهترینشکل بهداشت روانی است. در این زمینه لازم است جامعه از طریق آموزشهای رسمی و غیر رسمی از ابتلای جمعیتسالم به بیماری های روانی جلوگیری کند و افراد را علیه بیماریها واکسینه کند، زیرا علاج واقع، قبل از وقوع بایدگردد. والدین به عنوان اولین معلم کودکان وظیفه خطیری نسبت به انسان سازی و حفاظت از بهداشت روانی وشخصیت فرزندان دارند. والدین ابتدا باید نیازهای اساسی فرزندان از جمله بازی، احترام، مسؤولیت و پذیرش در گروهرا مورد توجه قرار دهند و زمینه را برای تأمین هر یک از آنها فراهم سازند. پدر و مادر باید جو خانه خود را اصلاح وبهبود بخشند، یعنی حالت گرم – پذیرا بر خانه خود حاکم کنند، زیرا ایجاد جوی از ترس، تهدید، اضطراب و فشارروانی بر سلامت روانی کودکان آسیب وارد می کند. والدین باید سعی کنند در خانواده محیطی حاکی از صلح، صفا وصمیمیت را بوجود آورند، زیرا اگر فرزندان قبول داشته باشند که خانواده آنها را می پذیرد، احساس ارزش و احتراممی کنند. در یک کلام، والدین باید الگوی نمونه عملی در مسائل عقیدتی، اجتماعی ، دینی و مذهبی باشند. برایدستیابی به بهترین شکل بهداشت روانی، افراد باید شکست های خود را بپذیرند، انعطاف پذیر باشند، در زندگی هدفداشته باشند، خود کار آمدی و خود گردانی لازم را برای افزایش اعتماد به نفس و احساس کفایت و پختگی داشتهباشند. به همین منظور و برای کمک به بهداشت روانی باید زمینه های آسیب پذیری خود را دریابیم، زمان (استفادهبهینه از اوقات) خود را مدیریت کنم، نه خود کم بین باشیم و نه خود بزرگ بین، با انجام به موقع کارها از احساسدرماندگی جلوگیری کنیم و با دیگران روابط صمیمانه برقرار کنیم.', 'https://lorempixel.com/360/260/?22309', 'بهداشت و روان', '1992-05-29 22:44:32', '2018-10-31 16:54:38'),
(3, 2, 'پزشکی', ' فعالیت مغزی مرتبط با درد در اريترومالالژی ارثی', 'اريترومالالژي ارثی (IEM) يک اختلال مزمن درد ناشي از جهش هاي حاصل از عملکردهاي محيطي کانال سدیم Nav1.7 می باشد، که در آن گرما موجب درد شدید می شود. اندکی درباره نمایش درد مغز در IEM شناخته شده است. در اینجا ما دو فرد را با جهش IEM Nav1.7-S241T با استفاده از تصویربرداری عملکرد مغز بررسی می کنیم(fMRI). افراد در هر یک از پنج بار ویزیت، اسکن شدند. در طول هر اسکن، درد در ابتدا باعث شد با استفاده از گرم کردن بوت افراد درد گرما-حرارتی را ارزیابی کنند. بعد، محرک حرارتی خاتمه یافت و افراد درد ناشی از محرک ر ا بررسی کردند. سرانجام، افراد کار رتبه بندی بصری کنترل را انجام دادند. حرارتی-گرمایی موجب درد برنامه ریزی شده برای قسمت جلوی چین سینوسی مغز، پیش پیشانی قشر مخ، لوبول (لخته کوچک) جداری اصلی، ناحیه حرکتی تکميلی، انسولا، قشرهای حرکتی حرکتی حسی- جسمی اولیه و ثانویه، استریاتوم پشتی و شکمی، آمیگدال و هیپوکامپ شدند. در مقابل، درد بدون تحریک، به طور عمده به قشر جلویی، از جمله پشت، شکم و کورتکس پیش مدفونی و ناحیه محرک مکمل برنامه ریزی شده بود. بررسی دوره های زمانی که درد بدون تحریک در حال تغییر بود فعالیت های بیشتری در شبکه ارزیابی شامل قشر مچ دست روسترال، استریاتوم و آمیگدالا و علاوه بر ساقه مغزی، تالاموس و انسولا را نشان دادند. نتیجه می گیریم که، مشابه با سایر وضعیت درد مزمن، بیان مغز درد بدون تحریک در طی حمله در افراد مبتلا به IEM مناطق مغزی را درگیر می کند که شامل درد حاد و همچنین ارزیابی و یادگیری می باشد.', 'https://lorempixel.com/360/260/?94784', 'پزشکی', '1976-12-18 07:20:31', '2018-10-31 16:54:38'),
(4, 2, 'بقای کودک نیجریه', ' بقای کودکان در نیجر با دانش و قدرت در سیاست گذاری', 'درد مزمن باری برای افراد و جامعه است. افرادی از درد مزمن رنج می برند که کیفیت زندگی کمتری دارند (کری و وانگ، ۲۰۰۴؛ ناستر و همکاران، ۲۰۱۲)، اما کمبود ابزار برای ارزیابی عینی تجربه درد وجود دارد. تصویر برداری عملکرد مغزی (fMRI) ابزاری ارزشمند برای بررسی فعالیت مغز همراه با درد می باشد (دیویس و مودی ۲۰۱۳؛ لی و تراسی، ۲۰۱۳؛ اشمیت ویلک ۲۰۱۵). FMRI برای بررسی انواع مختلف درد مزمن استفاده شده است، شامل درد مزمن پشت (بالیکی و همکاران ۲۰۰۶، بالیکی و همکاران ۲۰۰۸، ککو و همکاران ۲۰۱۵، هاشمی و همکاران ۲۰۱۳، سمینوویسز و همکاران ۲۰۱۱)، میگرن (بروشتین و همکاران ۲۰۱۵، شولته و می ۲۰۱۶)، درد نوروپاتیک (ناخوشی عصبی) (کودا و همکاران ۲۰۱۰، کودا و همکاران ۲۰۰۹، ارپلدینگ و همکاران ۲۰۱۴، گه آ همکاران ۲۰۰۸، خان و همکاران ۲۰۱۴، مای هافنر و همکاران ۲۰۰۳، مالینن همکاران ۲۰۱۰)، استئوآرتریت زانو (پارکس و همکاران ۲۰۱۱، رودریگز-رائک و همکاران ۲۰۰۹، رودریگز-رائک و همکاران ۲۰۱۳) فیبرومیالژیا(فلودین و همکاران ۲۰۱۴، کوچیناد و همکاران ۲۰۰۷، لاگیا و همکاران ۲۰۱۴، لاگیا و همکاران ۲۰۱۳، لوپز-سولا و همکاران ۲۰۱۶، ناپادو و همکاران ۲۰۱۰، اشمیت-ویلک و همکاران ۲۰۱۴ ) و درد مزمن لگنی (فارمر و همکاران ۲۰۱۱) می باشد. این مطالعه تغیرات ساختاری و عملکردی مرتبط با درد مزمن را شناسایی کرده است که بر هردو سیستم مغز حسی و لنفاوی تاثیر می گذارد. مهم است، شواهد اخیرا نشان می دهد که برخی از این تغییرات ممکن است پیش بینی کنده خطر انتقال از حاد به درد مزمن باشد. (بالیکی و همکاران ۲۰۱۲، واچون-پرسئو و همکاران، ۲۰۱۶). بنابراین، یافته های تصویر برداری مغز به آسیب پذیری مغز در مقابل تداوم درد و انعطاف پذیری مغز در پاسخ به درد اشاره دارد. ( فلور و همکاران ۱۹۹۷، کارل و همکاران، ۲۰۰۱؛ مای هافنر و همکاران ۲۰۰۷، مای هافنر و همکاران ۲۰۰۳). به هرحال، پاتوفیزیولوژی درد مزمن غیر سرطانی در انسان هنوز کاملا درک نشده است.', 'https://lorempixel.com/360/260/?97594', 'پزشکی', '2010-01-24 02:53:09', '2018-10-31 16:54:38'),
(5, 3, ' نحوه نگارش پایان نامه\r\n', 'موسسه پژوهش برتر: علارغم طولانی بودن پروسه انجام کار پژوهشی پایان نامه، جلسه دفاع پایان نامه بسیار کوتاه می باشد و دانشجویان بایستی کل کار پژوهشی و یافته های خود را در کمتر از 30 دقیقه برای د', 'موسسه پژوهش برتر:\r\nچگونه برای جلسه دفاع پاورپوینت آماده کنیم؟\r\n\r\nبرای آماده سازی پاورپوینت برای جلسه دفاعیه بایستی مرحله به مرحله پیش بروید تا بتوانبد در نهایت یک پاورپوینت کامل، مفید و مختصر و منظم داشته باشد.\r\n\r\n۱- مرحله قبل از طراحی پاورپوینت.\r\n\r\nاولین کاری که باید انجام دهید این است که فصول 1 تا 5 پایان نامه خود را خلاصه کنید و نکات مهم و ضروری این فصول را استخراج کرده و در صفحه جداگانه ای ذکر نمایید. توجه داشته باشید که بیشترین حجم مطالب شما بایستی مربوط به بخش نتایج و بحث باشد. از بخش مقدمه کمترین مطلب ممکن را برای پاورپوینت خود انتخاب کنید.\r\n\r\n۲- مرحله انتخاب طرح و فورمت برای پاورپوینت.\r\n\r\nهرگز به دنبال طرح های سخت و شلوغ نروید. برای داوران جلسه مهم نیست که طرح پاورپوینت شما چه رنگی باشد و از طرح های تزئینی استفاده کرده باشید یا نه. هر چه صفحات پاورپوینت شما ساده و خلوت باشد، تمرکز روی مطالب بیشتر خواهد بود. چیزی که در اینجا اهمیت دارد، فونت مطالب شما و تعداد اسلایدها می باشد. اندازه فونت مطالب ، اندازه جملات و حجم مطلب نوشته شده در هر صفحه پاورپوینت باید به گونه ای باشد که برای تمامی حظار خوانا باشد و کسل کننده نباشد. اسلایدها را پر از نوشته نکنید. بهترین اسلاید اسلایدی خواهد بود که شما مطلبی را خوانده‌اید و هسته اصلی ان را نهایتاً در دو یا سه خط بر روی اسلاید آورده‌اید. استفاده از نمودارها و جداول به جای ذکر جملات طولانی، بسیار عالی است. مطمئن باشید پاورپوینت شما در این صورت تحسین خواهد شد. هرگز مطالب را کپی و روخوانی نکنید که بدترین نوع ارائه از دیدگاه داوران جلسه دفاع می باشد. سعی کنید تمام مطالب خود را در کمتر از 30 صفحه پاورپوینت قرار دهید تا بتوانید در بازه زمانی 20-30 دقیقه تمامی اسلایدها را توضیح دهید.\r\n\r\nبیشتر بخوانید', 'https://lorempixel.com/360/260/?54528', 'علمی و پژوهشی', '1985-05-01 17:25:16', '2018-10-31 16:54:38'),
(6, 3, 'موسسه پژوهش برتر: مقاله علمی – ترویجی چیست؟\r\n', 'موسسه پژوهش برتر: پژوهش برتر: مقالات علمی - ترویجی، به ترویج یکی از رشته‌های علوم می‌پردازد و هدف آن ارتقاء سطح دانش خواننده هست و سعی دارد او را با موضوعات جدید علمی آشنا سازد. اصولاً این نو', 'موسسه پژوهش برتر:\r\n\r\nمقالات علمی ترویجی، دستاوردهای علمی، فنی و حرفه‌ای آموزنده و جالب ر ا به زبانی ساده برای افراد دارای تحصیلات دانشگاهی، دانش آموزان سال‌های بالای دبیرستان‌ها، صنعتگران، مخترعین، مبتکرین و افراد دارای تحصیلات غیر‌کلاسیک ارائه می‌دهند.\r\n\r\nیک مقاله علمی ترویجی یا مرور ادبیات، اطلاعات منتشرشده در حوزه یک موضوع بخصوص در یک محدوده زمانی را موردبحث و بررسی قرار می‌دهد. مقاله علمی ترویجی (مرور ادبیات) می‌تواند خلاصه‌ای از مقالات علمی و منابع موجود باشد اما معمولاً سازمان‌دهی خاص خود را دارد و خلاصه و استنتاج‌ها را ترکیب می‌کند و اطلاعات را در ساختاری نو ارائه می‌دهد. مقاله علمی ترویجی می‌تواند تفسیری جدید از مقالات و کارهای قبلی ارائه دهد یا اطلاعاتی جدید را با تفاسیر قبلی در هم آمیزد، یا سیر جریان پیشرفت فکری حوزه موردبحث و مباحثات مربوط به آن را ترسیم کند. مقاله علمی ترویجی بسته به‌موقعیت ممکن است مقالات و منابع را مورد ارزیابی قرار دهد و مناسب‌ترین و مربوط‌ترین منابع را به خواننده پیشنهاد کند. این مقالات بر پایه جابه‌جایی، تلفیق و ترکیب دانش موجود تهیه می‌شوند و معمولاً به روشن شدن زوایای مسئله‌ای کمک می‌نمایند، ازاین‌گونه مقالات می‌توان به مقالات مروری، تدوینی، ترجمه‌ای، تحلیلی اشاره کرد. به لحاظ ارزش علمی در بین این دسته از مقالات، مقاله‌های تحلیلی ارزش و اعتبار بالاتری دارند.\r\n\r\nبیشتر بخوانید', 'https://lorempixel.com/360/260/?71170', 'علمی و پژوهشی', '2008-11-16 04:24:52', '2018-10-31 16:54:39'),
(7, 5, ' مقاله بخارا ', 'هر تاریخی بخارا\r\n\r\nشهر بخارا، واقع در جاده ابریشم بیش از 2000 سال قدمت دارد . بخارا با بافت شهری خاصی که عمدتاً دست نخورده باقی مانده است، یکی از کامل ترین نمونه های شهرهای قرون وسطی در آسیای', 'ریخچه[1]\r\n\r\nبخارا پایتخت سامانیان بود، ۸۵٪ مردم آن تا امروز نیز به زبان فارسی با گویش ویژه آسیای مرکزی که امروزه به زبان فارسی تاجیکی معروف شده حرف می‌زنند.\r\n\r\nدر سالهای ۱۹۲۴ میلادی بخارا و سمرقند با سیاست‌های شوروی پیشین از تاجیکستان جدا گشته و به ازبکستان پیوست. دولت ازبکستان با سیاست فارسی‌ستیزی خود همچنان محدودیت‌های آموزشی و رسانه‌ای سختی بر ضد زبان فارسی پیاده کرده است.\r\n\r\nاماکن و ابنیه تاریخی\r\n\r\nارگ بخارا\r\n\r\nبالاحوض ،سده 18 تا 20.\r\n\r\nآرامگاه سامانی ،سده‌های 9 تا 10.\r\n\r\nقبرستان چشمه ایوب ،1380 یا 1384-1385.', 'https://lorempixel.com/360/260/?72910', 'تاریخی', '2016-02-07 19:35:23', '2018-10-31 16:54:40'),
(8, 4, 'مقاله بنا های تاریخی', 'رهنگسرا های تهران\r\n\r\nخانه های فرهنگ\r\n\r\nمجتمع فرهنگی فجر\r\n\r\nبا 1700 متر مربع زیربنا در سه طبقه می باشد دارای سالن آمفی تأتر با ظرفیت 250 نفر همراه با امکانات نمایش فیلم سینمایی ِ، کتابخانه با ', 'مجتمع فرهنگی آزادی\r\n\r\nمجتمع فرهنگی آزادی ، متشکل از چندین بخش ، در سطح زیرین برجی به همین نام قرار دارد . قسمت فرهنگی مجموعه آزادی دارای این بخش ها می باشد : موزه ( گنجینه ) ، کتابخانه ، سالن دیورا ، واحد سمعی و بصری ، سالن نمایشگاه ، سالن اجتماعات و سالن برگزاری کنسرت و کنفرانس ، این مجموعه فرهنگی 5000 متری در برگیرنده برج اصلی ( تلفیقی از معماری ساسانی و اسلامی کار حسین امانت ) است و در شهریور ماه سال 1350 گشایش یافت و در سال 1357 « مجموعه فرهنگی آزادی » نام گرفت . این مجموعه در طبقه تحتانی میدان آزادی قرار دارد .\r\n\r\nکتابخانه وسیع و مجهز این مجموعه با سماحت 5/271 متر مربع دارای بیش از 000/50 جلد کتاب می باشد . همچنین کتابخانه محققات و مؤلفان با مساحت 243 متر مربع مکانی است که از طریق 30 دستگاه کامپیوتر به شبکه های اطلاع رسانی داخلی و خارجی متصل شده است .\r\n\r\nمجتمع فرهنگی گلستان\r\n\r\nاین مجتمع با هدف ارتقاء سطح فرهنگ عموم از طریق ارائه جدیدترین کتاب ها در موضوعات متنوع ، آفرینش آثار هنری ، تولید و نمایش فیلم ، ارائ محصولات فرهنگی و کلاس های آموزشی ، هنری ، کامپیوتری و دروس دبیرستانی و ... تأسیس شده است .\r\n\r\nمجتمع گلستان در شش طبقه با مساحتی بالغ بر 6265 متر مربع در منطقه 8 قرار گرفته و امکانات د رخور توجیهی را در اختیار ساکنین به خصوص نوجوانان و جوانان منطقه قرار داده است . دو قرائت خانه مستقل برای بانوان و آقایان روزانه ظرفیت پذیرش جمعاٌ 900 نفر را دارد . آمفی تأتر در مجموعه ای با گنجایش بیش از 350 صندلی به سیستم های جدید پخش صدا و تصویر مجهز شده و قادر به نمایش مطلوب فیلم است .\r\n\r\nگالری مجتمع گلستان در طبقه همکف با 150 متر زیربنا پیوسته در مواضع مختلف هنرمندان نقاشی ، عکاسی و مجسمه ساز بوده و آمادگی دارد برای نمایش و فروش در اختیار هنرمندان باشد .', 'https://lorempixel.com/360/260/?21901', 'تاریخی', '1977-02-10 21:20:49', '2018-10-31 16:54:40'),
(17, 1, 'فناوری', 'فناوری اطلاعات', 'رایانه[۱] یا کامپیوتر (به انگلیسی: computer) دستگاهی است که می‌تواند برنامه‌ریزی شود تا دستورهای ریاضیاتی و منطقی را به‌صورت خودکار انجام دهد. رایانه‌ها می‌توانند از مجموعه‌ای عظیمی از دستورها به نام برنامه پیروی کنند، این امر به آن‌ها اجازه می‌دهد تا قابلیت انجام طیف وسیعی از وظایف را داشته باشند؛ و بر اساس برنامه‌ای که به آن‌ها داده می‌شود عمل می‌کنند.\r\n\r\nیک رایانه مدرن حداقل از یک واحد پردازش، عموماً واحد پردازش مرکزی و نوعی حافظه تشکیل شده‌است. واحد پردازش وظیفه انجام عملیات‌های محاسباتی و منطقی را بر عهده دارد. دستگاه‌های جانبی شامل ورودی (مانند صفحه‌کلید)، خروجی (مانند نمایشگر) و ورودی/خروجی (مانند صفحه لمسی) می‌توانند برای دریافت، نمایش و ارسال اطلاعات در رایانه مورد استفاده قرار گیرن', 'https://lorempixel.com/360/260/?17786', 'طراحی سایت', '2018-12-01 13:46:54', '2018-12-01 13:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2012-07-23 12:08:51', '2018-10-31 16:54:39'),
(2, 2, 1, '2016-02-07 19:35:23', '2018-10-31 16:54:40'),
(3, 3, 2, '1977-02-10 21:20:49', '2018-10-31 16:54:40'),
(4, 4, 2, '2016-11-13 21:33:39', '2018-10-31 16:54:40'),
(5, 5, 3, '1978-07-29 17:35:47', '2018-10-31 16:54:40'),
(6, 6, 3, '2016-12-28 00:54:25', '2018-10-31 16:54:40'),
(7, 7, 4, '1978-07-29 17:35:47', '2018-10-31 16:54:40'),
(8, 8, 4, '2016-12-28 00:54:25', '2018-10-31 16:54:40'),
(9, 17, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'بهداشت و سلامت', '2018-10-31 16:51:21', '2018-10-31 16:51:21'),
(2, 'پزشکی', '2018-10-31 16:51:31', '2018-10-31 16:51:31'),
(3, 'علمی و پژوهشی', '2018-10-31 16:51:38', '2018-10-31 16:51:38'),
(4, 'تاریخی', '2018-10-31 16:51:46', '2018-10-31 16:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `article_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'خوب بود', '1992-04-27 04:00:20', '2018-10-31 16:54:40'),
(2, 2, 1, 'ممنون', '2016-12-28 00:54:25', '2018-10-31 16:54:40'),
(3, 3, 2, 'راضی بودم', '1992-04-27 04:00:20', '2018-10-31 16:54:40'),
(4, 2, 3, 'موافق نبودم ', '2016-12-28 00:54:25', '2018-10-31 16:54:40'),
(5, 3, 4, 'متن بسیار اموزنده ای بود', '1990-05-18 23:48:30', '2018-10-31 16:54:40'),
(6, 4, 5, 'خیلی علی بود موفق باشید', '2018-10-08 20:30:00', '2018-09-10 19:30:00'),
(7, 5, 6, 'متن اموزنده ای بود', '1990-05-18 23:48:30', '2018-10-31 16:54:40'),
(8, 4, 7, 'موفق باشید', '2018-10-08 20:30:00', '2018-09-10 19:30:00'),
(9, 5, 8, 'متن مبهم بود ', '2018-11-30 20:30:00', '2018-10-16 20:30:00'),
(10, 4, 8, 'متن رو دوباره بازنویسی نمایید', '2018-11-30 20:30:00', '2018-11-12 20:30:00'),
(13, 5, 7, 'خوب بود', '2018-12-01 13:07:24', '2018-12-01 13:07:24'),
(14, 5, 3, 'جالب بود', '2018-12-01 13:15:21', '2018-12-01 13:15:21'),
(15, 1, 7, 'very good', '2018-12-01 13:56:23', '2018-12-01 13:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_29_073007_create_articles_table', 1),
(4, '2018_11_30_210023_create_comments_table', 1),
(5, '2018_12_01_091232_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shiva', 'shiva@gmail.com', '$2y$10$7TD//MgkNiIU50HPm8FFiODCD7R3Rl7GbkM1DvE6lr3eg/gbPq5RO', 'Cg0ZkNRcUVe3ZI5gZWI2IebpX7ui86nY1und7vvpreenR8IAL8Cbw1XTCrcR', '2018-12-01 11:28:34', '2018-12-01 11:28:34'),
(2, 'donya', 'donya@gmail.com', '$2y$10$u1stNlaA7Q3wLzbZ1Ie54uD7DscsCJAhS3ydL1LUCy/e1AsMZp5qm', 'VslqQTqWI6E4cNDCAUx0ikinUCOXYCbNNz1OF2xnj6WTjerbo3IohgPLlrBu', '2018-12-01 11:29:15', '2018-12-01 11:29:15'),
(3, 'shirin', 'shirin@gmail.com', '$2y$10$Ibx7ExywJYfJ4xoSnsNFxef2QCItOx.eViom7rybVjVYxyfXK//4O', 'F8DRsdtkOzonQh7KKyAotI91K2xpFv0RHDZta9OcFE4mNWcndzkAMPkvwHj7', '2018-12-01 11:30:31', '2018-12-01 11:30:31'),
(4, 'ahmad', 'ahmad@gmail.com', '$2y$10$mM9S2QrgT5J45JphSGiPLeEI5Ma9sGYj0fC4/Z97MfjRTWVGJ4Pom', 'nOxItsHVSXeLvqCJ6TRwJ8vhX6fWKGlhUF9oCFRDMZhEmwSiOk7PIdsJWNQp', '2018-12-01 11:31:21', '2018-12-01 11:31:21'),
(5, 'samaneh', 'samaneh@gmail.com', '$2y$10$7dtEBuaPtnFaJqYZ1EYiXusKsNfEA8uHoIKha90XTue/lfIo35AfO', 'YTuc4MOVa7r99UvT33bfw2155n8cdJ5VRa8QDkkFH1xEFYWMCiBuy2kD0jKq', '2018-12-01 11:31:57', '2018-12-01 11:31:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
