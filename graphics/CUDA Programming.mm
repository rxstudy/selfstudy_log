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
<node TEXT="" ID="ID_1807400921" CREATED="1739823664495" MODIFIED="1739823664495">
<hook NAME="FirstGroupNode"/>
</node>
<node TEXT="Features" ID="ID_288807086" CREATED="1739823416647" MODIFIED="1739823419825">
<node TEXT="Numbers of CUDA cores" ID="ID_1127418901" CREATED="1739823419826" MODIFIED="1739823428251"/>
<node TEXT="Memory Size" ID="ID_1228408749" CREATED="1739823431345" MODIFIED="1739823434452"/>
</node>
<node TEXT="Performance Metrics" ID="ID_1612652817" CREATED="1739823439399" MODIFIED="1739823444241">
<node TEXT="peak computational performance&#xa;(peak single-precision float perf)" ID="ID_59714363" CREATED="1739823445521" MODIFIED="1739823477667"/>
<node TEXT="Memory bandwidth" ID="ID_1857003698" CREATED="1739823479139" MODIFIED="1739823483715"/>
</node>
<node TEXT="" ID="ID_1160340785" CREATED="1739823664494" MODIFIED="1739823664495">
<hook NAME="SummaryNode"/>
<hook NAME="AlwaysUnfoldedNode"/>
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
</node>
</node>
</node>
</map>
