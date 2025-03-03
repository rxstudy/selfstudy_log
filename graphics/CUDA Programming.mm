<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="CUDA Programming" LOCALIZED_STYLE_REF="AutomaticLayout.level.root" FOLDED="false" ID="ID_1090958577" CREATED="1409300609620" MODIFIED="1739820292754"><hook NAME="MapStyle" background="#2e3440ff">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_note_icons="true" fit_to_viewport="false" show_icons="BESIDE_NODES" associatedTemplateLocation="template:/dark_nord_template.mm" show_tags="UNDER_NODES" showTagCategories="false"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_671184412" ICON_SIZE="12 pt" FORMAT_AS_HYPERLINK="false" COLOR="#484747" BACKGROUND_COLOR="#eceff4" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="1.9 px" BORDER_COLOR_LIKE_EDGE="true" BORDER_COLOR="#f0f0f0" BORDER_DASH_LIKE_EDGE="true" BORDER_DASH="SOLID">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#88c0d0" WIDTH="2" TRANSPARENCY="255" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_671184412" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="11" BOLD="false" STRIKETHROUGH="false" ITALIC="false"/>
<edge STYLE="bezier" COLOR="#81a1c1" WIDTH="3" DASH="SOLID"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details" BORDER_WIDTH="1.9 px">
<edge STYLE="bezier" COLOR="#81a1c1" WIDTH="3"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ebcb8b">
<icon BUILTIN="clock2"/>
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.floating" COLOR="#484747">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" COLOR="#e5e9f0" BACKGROUND_COLOR="#5e81ac" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#5e81ac"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_779275544" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#bf616a">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#bf616a" TRANSPARENCY="255" DESTINATION="ID_779275544"/>
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.flower" COLOR="#ffffff" BACKGROUND_COLOR="#255aba" STYLE="oval" TEXT_ALIGN="CENTER" BORDER_WIDTH_LIKE_EDGE="false" BORDER_WIDTH="22 pt" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#f9d71c" BORDER_DASH_LIKE_EDGE="false" BORDER_DASH="CLOSE_DOTS" MAX_WIDTH="6 cm" MIN_WIDTH="3 cm"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#ffffff" BACKGROUND_COLOR="#484747" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font NAME="Ubuntu" SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#eceff4" BACKGROUND_COLOR="#d08770" STYLE="bubble" SHAPE_HORIZONTAL_MARGIN="8 pt" SHAPE_VERTICAL_MARGIN="5 pt">
<font NAME="Ubuntu" SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#3b4252" BACKGROUND_COLOR="#ebcb8b">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#2e3440" BACKGROUND_COLOR="#a3be8c">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#2e3440" BACKGROUND_COLOR="#b48ead">
<font SIZE="11"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5" BACKGROUND_COLOR="#81a1c1">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6" BACKGROUND_COLOR="#88c0d0">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7" BACKGROUND_COLOR="#8fbcbb">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8" BACKGROUND_COLOR="#d8dee9">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9" BACKGROUND_COLOR="#e5e9f0">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10" BACKGROUND_COLOR="#eceff4">
<font SIZE="9"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<font BOLD="true"/>
<node TEXT="Parallelism" POSITION="bottom_or_right" ID="ID_1553083068" CREATED="1739820294789" MODIFIED="1739820316011">
<node TEXT="Task Parallism" ID="ID_1547236736" CREATED="1739820316842" MODIFIED="1739820325646"/>
<node TEXT="Data Parallelism" ID="ID_1565622817" CREATED="1739820340138" MODIFIED="1739820344600">
<node TEXT="Data Partition" ID="ID_409014487" CREATED="1739820345850" MODIFIED="1739820350381">
<node TEXT="Block Partition" ID="ID_1586828423" CREATED="1739820350383" MODIFIED="1739820354250"/>
<node TEXT="Cycle Partition" ID="ID_862984115" CREATED="1739820355988" MODIFIED="1739820360815"/>
</node>
</node>
</node>
<node TEXT="Computer Architecture" POSITION="bottom_or_right" ID="ID_1103990268" CREATED="1739820297361" MODIFIED="1739822274412">
<node TEXT="" ID="ID_575728995" CREATED="1739823010302" MODIFIED="1739823010302">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="Flynn&apos;s Taxonomy" ID="ID_428157378" CREATED="1739822275676" MODIFIED="1739822282720">
<node TEXT="SIMD" ID="ID_1068988467" CREATED="1739822283072" MODIFIED="1739822285240"/>
<node TEXT="SISD" ID="ID_1392533631" CREATED="1739822286071" MODIFIED="1739822289638"/>
<node TEXT="MISD" ID="ID_1429274758" CREATED="1739822290000" MODIFIED="1739822292123"/>
<node TEXT="MIMD" ID="ID_1207942633" CREATED="1739822292403" MODIFIED="1739822296328"/>
<node TEXT="SIMT (single instruction multi thread)" ID="ID_1107778091" CREATED="1739822296627" MODIFIED="1739822316778"/>
</node>
<node TEXT="Memory Organization" ID="ID_1448924874" CREATED="1739822322741" MODIFIED="1739822327545">
<node TEXT="Multi-node with distributed memory&#xa;(e.g. network of processors)" ID="ID_857666446" CREATED="1739822329084" MODIFIED="1739822619701"/>
<node TEXT="Multiprocessor with shared memory&#xa;(e.g. multicore/many-core)" ID="ID_1494575266" CREATED="1739822600179" MODIFIED="1739822632171"/>
</node>
<node TEXT="Computer Architecture" ID="ID_102197881" CREATED="1739822642781" MODIFIED="1739822651420">
<node TEXT="Homogenous Architecture" ID="ID_1775216858" CREATED="1739822651423" MODIFIED="1739822658463">
<node TEXT="use the same processor arch (only CPUs)" ID="ID_438820746" CREATED="1739822676622" MODIFIED="1739822689924"/>
</node>
<node TEXT="Heterogenous Arhitecture" ID="ID_1256462340" CREATED="1739822659420" MODIFIED="1739822670354">
<node TEXT="use different processor arch for diff tasks&#xa;(CPUs + GPUs)" ID="ID_846593813" CREATED="1739822694184" MODIFIED="1739822721319">
<node TEXT="Host (CPU)" ID="ID_1661878781" CREATED="1739822721867" MODIFIED="1739822728524">
<node TEXT="Host Code" ID="ID_1579769212" CREATED="1739822735068" MODIFIED="1739822740785"/>
</node>
<node TEXT="Device (GPU)" ID="ID_1245085219" CREATED="1739822729563" MODIFIED="1739822732932">
<node TEXT="Device Code" ID="ID_1785036652" CREATED="1739822746730" MODIFIED="1739822749330"/>
</node>
</node>
</node>
</node>
<node TEXT="" ID="ID_1044501138" CREATED="1739823010302" MODIFIED="1739823010302">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Goal" ID="ID_549857997" CREATED="1739822754628" MODIFIED="1739822756889">
<node TEXT="decrease Latency" ID="ID_1684230249" CREATED="1739822756891" MODIFIED="1739822761757">
<node TEXT="time for an op to start and complete (ms)" ID="ID_245623775" CREATED="1739822773969" MODIFIED="1739822781150"/>
</node>
<node TEXT="increase Bandwidth" ID="ID_901334157" CREATED="1739822762290" MODIFIED="1739822766448">
<node TEXT="amount of data processed at the same time, MB/s, GB/s" ID="ID_1308149648" CREATED="1739822784396" MODIFIED="1739822802982"/>
</node>
<node TEXT="increase Throughput" ID="ID_219779647" CREATED="1739822766926" MODIFIED="1739822771569">
<node TEXT="amount of ops /s  (gflops)" ID="ID_437157276" CREATED="1739822771570" MODIFIED="1739822823432"/>
</node>
</node>
</node>
</node>
<node TEXT="NVIDIA Product Families" POSITION="bottom_or_right" ID="ID_1995539114" CREATED="1739822828605" MODIFIED="1739822838671">
<node TEXT="" ID="ID_518197733" CREATED="1739822959556" MODIFIED="1739822959556">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="Tegra" ID="ID_270691498" CREATED="1739822839142" MODIFIED="1739822841071">
<node TEXT="mobile/embedded devices" ID="ID_1982336866" CREATED="1739822853976" MODIFIED="1739822862033"/>
</node>
<node TEXT="GeForce" ID="ID_886199348" CREATED="1739822841595" MODIFIED="1739822847852">
<node TEXT="consume graphics" ID="ID_1024228598" CREATED="1739822864656" MODIFIED="1739822868549"/>
</node>
<node TEXT="Quadro" ID="ID_1617023886" CREATED="1739822848200" MODIFIED="1739822850311">
<node TEXT="professional visualization" ID="ID_1630924630" CREATED="1739822872260" MODIFIED="1739822877623"/>
</node>
<node TEXT="Tesla" ID="ID_1880575808" CREATED="1739822850614" MODIFIED="1739822852184">
<node TEXT="datacenter parallel computing" ID="ID_1824671214" CREATED="1739822852186" MODIFIED="1739822888911"/>
</node>
<node TEXT="" ID="ID_472317682" CREATED="1739822959555" MODIFIED="1739822959556">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="NVIDIA Product Architectures" ID="ID_1330901931" CREATED="1739822892507" MODIFIED="1739822902731">
<node TEXT="https://en.wikipedia.org/wiki/Category:Nvidia_microarchitectures" FOLDED="true" ID="ID_286840288" CREATED="1739822902733" MODIFIED="1739822984843">
<node ID="ID_454375160" CREATED="1739822976178" MODIFIED="1739822976178" LINK="https://en.wikipedia.org/wiki/Category:Nvidia_microarchitectures"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        <p>
          https://en.wikipedia.org/wiki/Category:Nvidia_microarchitectures
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="GPU" POSITION="bottom_or_right" ID="ID_1618621171" CREATED="1739823411746" MODIFIED="1739823416645">
<node TEXT="Features" ID="ID_288807086" CREATED="1739823416647" MODIFIED="1739823419825">
<node TEXT="Numbers of CUDA cores" ID="ID_1127418901" CREATED="1739823419826" MODIFIED="1739823428251"/>
<node TEXT="Memory Size" ID="ID_1228408749" CREATED="1739823431345" MODIFIED="1739823434452"/>
</node>
<node TEXT="Performance Metrics" ID="ID_1612652817" CREATED="1739823439399" MODIFIED="1739823444241">
<node TEXT="peak computational performance&#xa;(peak single-precision float perf)" ID="ID_59714363" CREATED="1739823445521" MODIFIED="1739823477667"/>
<node TEXT="Memory bandwidth" ID="ID_1857003698" CREATED="1739823479139" MODIFIED="1739823483715"/>
</node>
<node TEXT="vs CPU" ID="ID_1909490279" CREATED="1739823489014" MODIFIED="1739823491553">
<node TEXT="Advantanges" ID="ID_1612888121" CREATED="1739823492284" MODIFIED="1739823503391">
<node TEXT="CPU good for control intensive task with small data size" ID="ID_758911108" CREATED="1739823504846" MODIFIED="1739823517790"/>
<node TEXT="GPU good for data-parallel computation intensive tasks (large data size)" ID="ID_1267758151" CREATED="1739823518588" MODIFIED="1739823535722"/>
</node>
<node TEXT="Thread comparison" ID="ID_437787655" CREATED="1739823540949" MODIFIED="1739823545028">
<node TEXT="CPU thread" ID="ID_118028954" CREATED="1739823546020" MODIFIED="1739823547641">
<node TEXT="Heavy weight. Slow context switching" ID="ID_1564762656" CREATED="1739823551952" MODIFIED="1739823560218"/>
<node TEXT="Designed to minimize latency for one or two threads at a time" ID="ID_858285905" CREATED="1739823560693" MODIFIED="1739823590330">
<node TEXT="Quad core has 16 concurrent threads, 32 if hyper threading is on" ID="ID_1512526950" CREATED="1739823594457" MODIFIED="1739823609100"/>
</node>
</node>
<node TEXT="GPU thread" ID="ID_1799411902" CREATED="1739823548202" MODIFIED="1739823551327">
<node TEXT="Light weight. Thousands of threads queued for work" ID="ID_190272390" CREATED="1739823612313" MODIFIED="1739823623822"/>
<node TEXT="Designed to handle large number of concurrent threads to max throughput" ID="ID_695573858" CREATED="1739823624080" MODIFIED="1739823638116">
<node TEXT="1536 concurrent actives thread per multiprocessor" ID="ID_909447480" CREATED="1739823638554" MODIFIED="1739823651361"/>
</node>
</node>
</node>
</node>
<node TEXT="Architecture Overview(Fermi)" ID="ID_230359049" CREATED="1740041157476" MODIFIED="1740041396545">
<node TEXT="Streaming Multiprocessor #1(SM)" POSITION="bottom_or_right" ID="ID_177433819" CREATED="1740041466103" MODIFIED="1740041569658">
<node TEXT="" POSITION="bottom_or_right" ID="ID_1271972186" CREATED="1740041334201" MODIFIED="1740041334201">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="CUDA Cores" POSITION="bottom_or_right" ID="ID_605040223" CREATED="1740041171907" MODIFIED="1740041175934"/>
<node TEXT="Shared Memory/L1 Cache" POSITION="bottom_or_right" ID="ID_1466936482" CREATED="1740041176512" MODIFIED="1740041182019"/>
<node TEXT="Register File" POSITION="bottom_or_right" ID="ID_1917528327" CREATED="1740041182412" MODIFIED="1740041353159"/>
<node TEXT="Load/Store Units" POSITION="bottom_or_right" ID="ID_839311535" CREATED="1740041354373" MODIFIED="1740041358395"/>
<node TEXT="Special Function Units" POSITION="bottom_or_right" ID="ID_995149806" CREATED="1740041358765" MODIFIED="1740041362897"/>
<node TEXT="Warp Shceduler" POSITION="bottom_or_right" ID="ID_1350223885" CREATED="1740041363153" MODIFIED="1740041366759"/>
<node TEXT="" POSITION="bottom_or_right" ID="ID_1470175516" CREATED="1740041334200" MODIFIED="1740041334201">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="Fermi Architecture Overview of an SM" ID="ID_1286782668" CREATED="1740041231833" MODIFIED="1740041521634">
<hook URI="CUDA%20Programming_files/png-250220-004709675-7370897898046150413.png" SIZE="0.46324548" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="Streaming Multiprocessor #2(SM)" POSITION="bottom_or_right" ID="ID_1810079694" CREATED="1740041590770" MODIFIED="1740041595390">
<node TEXT="support hundreds of concurrent threads" ID="ID_1745015447" CREATED="1740041642354" MODIFIED="1740041667700"/>
</node>
<node TEXT="Streaming Multiprocessor #3(SM)" POSITION="bottom_or_right" ID="ID_2367886" CREATED="1740041595824" MODIFIED="1740041605980"/>
<node TEXT="........" POSITION="bottom_or_right" ID="ID_479362591" CREATED="1740041607146" MODIFIED="1740041612297"/>
</node>
</node>
<node TEXT="CUDA" POSITION="bottom_or_right" ID="ID_1305242774" CREATED="1739824070152" MODIFIED="1739824075526">
<node TEXT="Accessibility" ID="ID_463335810" CREATED="1739824228714" MODIFIED="1739824245292">
<node TEXT="CUDA accelerated libraries, compiler directives, api, programming lang extensions" ID="ID_761057790" CREATED="1739824248513" MODIFIED="1739824302433">
<hook URI="CUDA%20Programming_files/png-250217-120244202-10140742673346774942.png" SIZE="0.8583691" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="CUDA APIs" ID="ID_1785230322" CREATED="1739824368874" MODIFIED="1739824397256">
<node TEXT="" ID="ID_969765215" CREATED="1739824454901" MODIFIED="1739824454901">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="CUDA Driver API" ID="ID_612430073" CREATED="1739824379935" MODIFIED="1739824394629">
<node TEXT="low-level" ID="ID_1342249742" CREATED="1739824398247" MODIFIED="1739824426516"/>
</node>
<node TEXT="CUDA Runtime API" ID="ID_1084215537" CREATED="1739824400681" MODIFIED="1739824405801">
<node TEXT="higher-level" ID="ID_523597870" CREATED="1739824427887" MODIFIED="1739824435218"/>
</node>
<node TEXT="" ID="ID_150114619" CREATED="1739824454901" MODIFIED="1739824454901">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="CUDA APIs overview" ID="ID_1585205346" CREATED="1739824483621" MODIFIED="1739824547754">
<hook URI="CUDA%20Programming_files/png-250217-123440975-11603829707820800322.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="Mutual exclusive API" ID="ID_506819489" CREATED="1739829414065" MODIFIED="1739829427536"/>
<node TEXT="Not much performance differences" ID="ID_990480915" CREATED="1739829430693" MODIFIED="1739829439578"/>
</node>
</node>
</node>
<node TEXT="CUDA Programming Model" POSITION="bottom_or_right" ID="ID_1325975304" CREATED="1739830832948" MODIFIED="1739830852715">
<node TEXT="Programmer perspective" ID="ID_137817310" CREATED="1739833895860" MODIFIED="1739833911154">
<node TEXT="Domain Level" ID="ID_1956040634" CREATED="1739833911156" MODIFIED="1739833914257">
<node TEXT="Algorithm design" ID="ID_1197011462" CREATED="1739833914258" MODIFIED="1739833921801"/>
</node>
<node TEXT="Logic Level" ID="ID_1599624174" CREATED="1739833923600" MODIFIED="1739833926345">
<node TEXT="Concurrent threads organization&#xa;(pthreads or OpenMP)" ID="ID_414348409" CREATED="1739833926347" MODIFIED="1739833982949"/>
</node>
<node TEXT="Hardware Level" ID="ID_901836204" CREATED="1739833954955" MODIFIED="1739833963689">
<node TEXT="How threads are mapped to core for performance optimization" ID="ID_139258466" CREATED="1739833963691" MODIFIED="1739834016796"/>
</node>
</node>
<node TEXT="CUDA Program" ID="ID_622475907" CREATED="1739829533850" MODIFIED="1739829556295">
<node TEXT="Consists of" POSITION="bottom_or_right" ID="ID_280798515" CREATED="1739830094206" MODIFIED="1739830099397">
<node TEXT="Host code" POSITION="bottom_or_right" ID="ID_29836043" CREATED="1739829557103" MODIFIED="1739829565501">
<node TEXT="compiled by C compiler" ID="ID_849808767" CREATED="1739829975529" MODIFIED="1739830016243"/>
</node>
<node TEXT="Device code (kernels)" POSITION="bottom_or_right" ID="ID_1488863537" CREATED="1739829566451" MODIFIED="1739838960820">
<node TEXT="compiled by nvcc Compiler (LLVM infrast)" ID="ID_1434151172" CREATED="1739829992946" MODIFIED="1739830028571"/>
<node TEXT="data-parallel functions called kernels" ID="ID_910210345" CREATED="1739830041537" MODIFIED="1739830077300">
<node TEXT="__global__  &lt;T&gt; fun(...) will be called from CPU to execute on GPU" ID="ID_62110655" CREATED="1739830256823" MODIFIED="1739830305836"/>
</node>
</node>
</node>
<node TEXT="Structures" POSITION="bottom_or_right" ID="ID_1321277570" CREATED="1739830107064" MODIFIED="1739830155855">
<node TEXT="1. Allocate GPU memories" ID="ID_906276860" CREATED="1739830157420" MODIFIED="1739830197464"/>
<node TEXT="2. Copy data from CPU memory to GPU memory" ID="ID_921315760" CREATED="1739830165088" MODIFIED="1739830174254"/>
<node TEXT="3. Invoke the CUDA kernel to perform computation" ID="ID_18156023" CREATED="1739830174706" MODIFIED="1739830194990"/>
<node TEXT="4. Coyp data back from GPU memory to CPU memory" ID="ID_125727521" CREATED="1739830187746" MODIFIED="1739830205759"/>
<node TEXT="5. Destroy GPU memories." ID="ID_374399642" CREATED="1739830206104" MODIFIED="1739830213893"/>
</node>
</node>
<node TEXT="GPU Memory" ID="ID_979704112" CREATED="1739839005974" MODIFIED="1739840637367">
<node TEXT="Global Memory&#xa;(similar to CPU system memory)" ID="ID_1399829703" CREATED="1739839010417" MODIFIED="1739839032078"/>
<node TEXT="Shared Memory&#xa;(similar to CPU cache, controled by CUDA C kernel)" ID="ID_915803993" CREATED="1739839013365" MODIFIED="1739839061748"/>
<node TEXT="Illustration of Memory hierarchy" POSITION="bottom_or_right" ID="ID_927756330" CREATED="1739840640654" MODIFIED="1739840832673">
<hook URI="CUDA%20Programming_files/png-250217-170358252-4940358680537806792.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="GPU Threads" ID="ID_347466503" CREATED="1739840771419" MODIFIED="1739840776411">
<node TEXT="a Single kernel launches a Grid" POSITION="bottom_or_right" ID="ID_1835307090" CREATED="1739840920974" MODIFIED="1739841255638">
<node TEXT="consists of" POSITION="bottom_or_right" ID="ID_591710096" CREATED="1739840955884" MODIFIED="1739841065507">
<node TEXT="thread Blocks" ID="ID_1736583882" CREATED="1739841066679" MODIFIED="1739841325509">
<node TEXT="consists of" ID="ID_1295225631" CREATED="1739841115866" MODIFIED="1739841126867">
<node TEXT="threads" ID="ID_608105134" CREATED="1739841127796" MODIFIED="1739841379705">
<node TEXT="Thread Index" ID="ID_1962386258" CREATED="1739841380517" MODIFIED="1739841388936">
<node TEXT="threadIdx.x" ID="ID_333084714" CREATED="1739841394255" MODIFIED="1739841401349"/>
<node TEXT="threadIdx.y" ID="ID_1602830036" CREATED="1739841401884" MODIFIED="1739841404817"/>
<node TEXT="threadIdx.z" ID="ID_732792544" CREATED="1739841405120" MODIFIED="1739841409423"/>
</node>
</node>
</node>
<node TEXT="all threads in a block has" ID="ID_1498021169" CREATED="1739841136872" MODIFIED="1739841152621">
<node TEXT="Block-local synchronization" POSITION="bottom_or_right" ID="ID_1817350788" CREATED="1739840977359" MODIFIED="1739840994114"/>
<node TEXT="Block-local shared memory" POSITION="bottom_or_right" ID="ID_655806045" CREATED="1739840997107" MODIFIED="1739841004867"/>
</node>
<node TEXT="Block Index" ID="ID_190136043" CREATED="1739841329781" MODIFIED="1739841392436">
<node TEXT="blockIdx.x" ID="ID_262463903" CREATED="1739841345843" MODIFIED="1739841355686"/>
<node TEXT="blockIdx.y" ID="ID_897878116" CREATED="1739841362512" MODIFIED="1739841367801"/>
<node TEXT="blockIdx.z" ID="ID_1920331618" CREATED="1739841363863" MODIFIED="1739841369812"/>
</node>
</node>
</node>
<node TEXT="all threads in gird share the same global memory space" POSITION="bottom_or_right" ID="ID_1840882457" CREATED="1739841083217" MODIFIED="1739841100403"/>
</node>
<node TEXT="Illustration of Thread hierarchy" POSITION="bottom_or_right" ID="ID_349106961" CREATED="1739840858758" MODIFIED="1739840877940">
<hook URI="CUDA%20Programming_files/png-250217-170737437-8585139259204518418.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Kernels" ID="ID_1226432401" CREATED="1739842987802" MODIFIED="1739842994369">
<node TEXT="Qualifiers" POSITION="bottom_or_right" ID="ID_1796096962" CREATED="1739843036127" MODIFIED="1739843046321">
<hook URI="CUDA%20Programming_files/png-250217-174354962-5177316999757968774.png" SIZE="0.85227275" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="CUDA Execution Model" POSITION="bottom_or_right" ID="ID_1657529337" CREATED="1740041028742" MODIFIED="1740041038938">
<node TEXT="Goal" ID="ID_1457170079" CREATED="1740041043571" MODIFIED="1740041045444">
<node TEXT="How to choose grid and block size" ID="ID_391362779" CREATED="1740041045811" MODIFIED="1740041052591"/>
</node>
<node TEXT="Warp" ID="ID_1110060939" CREATED="1740123417082" MODIFIED="1740123484887">
<node TEXT="Group of 32 threads (32 constrained by hardware)" ID="ID_1830004529" CREATED="1740123485243" MODIFIED="1740123498383"/>
<node TEXT="Execute the same instruction at the same time" ID="ID_1678832584" CREATED="1740123503549" MODIFIED="1740123514930"/>
<node TEXT="Basic unit of execution in SM" ID="ID_1091154211" CREATED="1740123508581" MODIFIED="1740123866333"/>
<node TEXT="warps will be launched by SM to support # of threads in a thread block will" ID="ID_17274335" CREATED="1740124148394" MODIFIED="1740124204271">
<node TEXT="Suppose warp size 32,  80 threads will launch 3 warps (96 threads) in total in an SM" ID="ID_1142998733" CREATED="1740124205190" MODIFIED="1740124232597"/>
</node>
<node TEXT="Warp Divergence&#xa;(Only happens in a single warp)" ID="ID_1029904335" CREATED="1740124447193" MODIFIED="1740124522958">
<node TEXT="if N threads in a wrap goes in a different path (if true vs if false),  The other 32 - N threads will wait for the N threads" ID="ID_685229986" CREATED="1740124458005" MODIFIED="1740124582487">
<node TEXT="Warp divergence impacts performance significantly" ID="ID_1222888412" CREATED="1740124648064" MODIFIED="1740124672725">
<hook URI="CUDA%20Programming_files/png-250220-235726408-6979601907410251618.png" SIZE="0.7210168" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Remedy: Avoid divergence using the fact that warp assignment in a thread block is deterministic." ID="ID_677425438" CREATED="1740124716893" MODIFIED="1740124824999">
<font BOLD="true"/>
<node TEXT="2D ThreadBlock will be flatten into 1D array going through each row" ID="ID_33864351" CREATED="1740124817278" MODIFIED="1740124860719">
<hook URI="CUDA%20Programming_files/png-250221-000015800-5240840948730876151.png" SIZE="0.56657225" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Branch Efficiency  = 1 -  #divergent branches / #total branches" ID="ID_964981158" CREATED="1740125033484" MODIFIED="1740125203357">
<font SIZE="14"/>
</node>
</node>
</node>
<node TEXT="Software view and Hardware view" POSITION="bottom_or_right" ID="ID_144754918" CREATED="1740123450740" MODIFIED="1740123469283">
<hook URI="CUDA%20Programming_files/png-250220-233728891-8925800099242859688.png" SIZE="0.5925926" NAME="ExternalObject"/>
</node>
</node>
</node>
</map>
