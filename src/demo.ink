# author: lackbfun

-> tutorial


=== wait_for_clear ===

    + [继续]
        # CLEAR
        ->->


=== wait_for_restart ===

    + [回到标题]
        # RESTART
        -> DONE


/**
 * tutorial
 * 教程主页
 */
=== tutorial ===

这是一本我写给自己的教程。

    + [1. 跳转 \-\>]
        # CLEAR
        -> divert

    + [2. 按钮 \+ / \*]
        # CLEAR
        -> choices

    + [3. 阅后即焚 \[ \]]
        # CLEAR
        -> burn_after_reading

    + [4. 胶水 \<\>]
        # CLEAR
        -> glue

    + [5. 逻辑判断 \{ \}]
        # CLEAR
        -> logic

    + [其他效果展示]
        # CLEAR
        -> other_stories

    = other_stories

        + [收听电台]
            # CLEAR
            -> listen_to_the_radio

        + [看电视]
            # CLEAR
            -> turn_on_television

        + [与希尔薇的日常]
            # CLEAR
            -> touch_sylvie

        + [80 天环游世界片段]
            # CLEAR
            -> eighty_days

        + [一次跑路]
            # CLEAR
            -> flee_for_life

        + [遇见守卫]
            # CLEAR
            -> meet_the_guard


/**
 * divert 跳转
 */
=== divert ===

1. 跳转 \-\>  # CLASS: title

选择你的结局：

    + Happy End
        -> happd_end

    + Bad End
        -> bad_end

    + Good End
        就这样吧。# CLASS: end
        -> wait_for_clear -> divert

    + True End
        真相大白。# CLASS: end
        -> wait_for_clear -> divert

    + [懂了]
        # RESTART
        -> tutorial

    = happd_end

    可喜可贺可喜可贺。# CLASS: end
        -> wait_for_clear -> divert

    = bad_end

    人生长恨水长东。# CLASS: end
        -> wait_for_clear -> divert


/**
 * choices 选项
 */
=== choices ===

2. 选项 \+ / \*  # CLASS: title

下面演示两种不同的选项用法。

    + [\+ 这个选项怎么点都不会消失]
        # CLEAR
        -> choices

    * [\* 这个选项点一次就会消失]
        # CLEAR
        注意：使用 \* 的选项消失了。  # CLASS: warn
        -> choices

    + [懂了]
        # RESTART
        -> tutorial


/**
 * burn_after_reading 阅后即焚
 */
=== burn_after_reading ===

3. 阅后即焚 \[ \]  # CLASS: title

下面演示 \[阅后即焚文本\] 的用法。

    // 选项全部删除
    + [“这个畜生。”你心里想。但现在还不是时候。]“没问题，先生。很高兴为您服务。”
        你展露出无可挑剔的微笑。
        -> wait_for_clear -> burn_after_reading

    // 只删除选项最后的标点以延续句子
    + “我就是饿死、死外边、从这里跳下去，不会吃你们一点东西[！”]……烤全羊啊嗯。”
        “真香。”你擦了擦嘴，“想问什么？赶紧的吧。”
        -> wait_for_clear -> burn_after_reading

    // 不删除任何东西 保留整个选项的原文
    + “爷今天必须给你整个活。”[]你深吸一口气，“草，走，忽略！” ጿ ኈ ቼ ዽ ጿ
        “漂亮！”路过的行人见状驻足停下，用力鼓起掌来。
        -> wait_for_clear -> burn_after_reading

    + [懂了]
        # RESTART
        -> tutorial


/**
 * glue 胶水
 */
=== glue ===

4. 胶水 \<\>  # CLASS: title

“不好，我们回去！”<>  // 这里的胶水无效 因为选项必然换行

    + “去萨维尔街[”]，<>
        -> as_fast_as_we_could

    + “去沈阳大街[”]，<>
        -> as_fast_as_we_could

    + [懂了]
        # RESTART
        -> tutorial

    = as_fast_as_we_could

    要尽可能地快。”
        -> wait_for_clear -> glue


/**
 * logic 逻辑判断
 */
=== logic ===

# CLEAR

5. 逻辑判断 \{ \}  # CLASS: title

你要如何前往下一个城镇？

    + 你选择骑马前往。
        -> ride_a_horse

    + 你选择步行前往。
        -> just_walk

    + 你脑海里突然响起一个声音：“布响丸辣”。
        -> have_a_rest

    = ride_a_horse

    你在骑马疾行的过程中被绊马索暗算，摔下了马。
        -> next_town

    = just_walk

    走到半路，你被路边突然冒出来的一伙蒙面恶徒团团包围。
        -> next_town

    = have_a_rest

    虽然搞不太懂是什么意思，总之还是在这个村子休息一阵子再出发吧。
    你养精蓄锐后重新启程，意外地发现路上的人烟出奇地少。
        -> next_town

    = next_town

    {ride_a_horse: 你的四肢和脖子折成了不可思议的角度。}
    {just_walk: 你竭力反抗。可是双拳难敌四手。}
    {ride_a_horse or just_walk: 你死了。}
    {have_a_rest: 沉默地不断前进着，你心里莫名生出的异样感越来越强烈。}
    {not ride_a_horse and not just_walk: 你怀着不安的心情抵达了邻近的城镇。}
    {not (ride_a_horse or just_walk): 你惊讶地发现这个地方已经被烧成了一片白地。}
        -> wait_for_restart


/**
 * turn_on_television 收听电台
 */
=== listen_to_the_radio ===

电台嘶嘶作响。 {“三！”|“二！”|“一！”|传来了爆炸的响声。|只有这些噪声。}

    + [收听电台] -> listen_to_the_radio

    + [回到标题]
        # RESTART
        -> tutorial


/**
 * turn_on_television 看电视
 */
=== turn_on_television ===

我打开电视{一|两|三|四|五|无数}次，但电视{没啥有意思的东西，所以关上了电视|依旧没什么有意思的东西|比以前更不能吸引我的兴趣了|只有垃圾|演关于鲨鱼的节目，我并不喜欢鲨鱼|什么都没有}。

    + [再试试] -> turn_on_television

    + [回到标题]
        # RESTART
        -> tutorial


/**
 * touch_sylvie 与希尔薇的日常
 */
=== touch_sylvie ===

希尔薇{害怕得绷紧小小的身体|仍然有点害怕|好像很慌乱|看起来不知所措|感到有点困惑|似乎觉得舒服|害羞得闭上眼|露出幸福的微笑|做了个鬼脸|恬淡地笑着|没有再做出反应了}。

    + [摸头]
        -> touch_sylvie

    + [回到标题]
        # RESTART
        -> tutorial


/**
 * eighty_days 80 天环游世界片段
 */
=== eighty_days ===

# CLEAR

伦敦，1872 年
Phileas Fogg 先生的住所。
    -> london

    = london

    Phileas Fogg 先生早早从改革俱乐部回到了家，并乘坐了新型的蒸汽运输机！
    “领航，” 他喊道， "我们去环游世界！"

        + “环游世界，先生？”
            我大吃一惊。
            -> astonished

        + [点头。]
            -> nod

    = astonished

    “你在开玩笑！” 我认真地对他说。“你一定是在和我开玩笑，先生。”
    “我很认真。”

        + “好吧。”
            -> eighty_days_end

    = nod

    我点了点头，但不相信一个字。
        -> eighty_days_end

    = eighty_days_end

    “我们将在八十天内环游地球。” 他很平静地提出了这个近乎疯狂的计划，“我们 8:25 去巴黎。一小时后。”

        -> wait_for_restart


/**
 * flee_for_life 一次跑路
 */
=== flee_for_life ===

我跑出森林，狗跟在我后面。

	* 我检查了下珠宝[]，都还在我的钱包里，这感觉就像步入了春天。 <>

	* 我没停下来喘口气[]，继续向前跑。<>

	* 我欢呼了出来[]。 <>

    - 路没多远了！Mackie 会发动引擎，然后我就安全了。

	* 我来到路边四处张望[]。 你能相信吗？

	* 我不该总是说，Mackie 一直很可靠[]。他从未让我失望过。更确切地说，从来没有，直到那晚前。

    - 路旁边是空的。 Mackie 不见了。

    -> wait_for_restart


/**
 * meet_the_guard 遇见守卫
 */
=== meet_the_guard ===

卫兵在盯着你。

    + (greet) [打招呼]
    	“早。”

    + (get_out) “让开。”[]你对卫兵说。

    - “嗯。”卫兵回应道。

    + {greet} 	“天气不错哈？”

    + “咦？”[]你回应道？

    + {get_out} [把他推到一旁]
        你把他推到一旁。作为礼尚往来，卫兵直接拔出了剑。
        -> wait_for_restart

    - “嗯。” 卫兵给你一个小纸袋，“太妃糖？”

    - 我们在沉默中度过了这一天。

    - -> wait_for_restart
