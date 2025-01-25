.class public final Lcom/blankj/utilcode/util/RegexUtils;
.super Ljava/lang/Object;


# static fields
.field private static final CITY_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMatches(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_14
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method

.method public static getReplaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getReplaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getSplits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isDate(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isEmail(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard15(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard18(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isIDCard18Exact(Ljava/lang/CharSequence;)Z
    .registers 7

    const/16 v5, 0x11

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/RegexUtils;->isIDCard18(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18e

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_155

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "11"

    const-string v3, "北京"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "12"

    const-string v3, "天津"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "13"

    const-string v3, "河北"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "14"

    const-string v3, "山西"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "15"

    const-string v3, "内蒙古"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "21"

    const-string v3, "辽宁"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "22"

    const-string v3, "吉林"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "23"

    const-string v3, "黑龙江"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "31"

    const-string v3, "上海"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "32"

    const-string v3, "江苏"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "33"

    const-string v3, "浙江"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "34"

    const-string v3, "安徽"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "35"

    const-string v3, "福建"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "36"

    const-string v3, "江西"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "37"

    const-string v3, "山东"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "41"

    const-string v3, "河南"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "42"

    const-string v3, "湖北"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "43"

    const-string v3, "湖南"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "44"

    const-string v3, "广东"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "45"

    const-string v3, "广西"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "46"

    const-string v3, "海南"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "50"

    const-string v3, "重庆"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "51"

    const-string v3, "四川"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "52"

    const-string v3, "贵州"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "53"

    const-string v3, "云南"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "54"

    const-string v3, "西藏"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "61"

    const-string v3, "陕西"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "62"

    const-string v3, "甘肃"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "63"

    const-string v3, "青海"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "64"

    const-string v3, "宁夏"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "65"

    const-string v3, "新疆"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "71"

    const-string v3, "台湾老"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "81"

    const-string v3, "香港"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "82"

    const-string v3, "澳门"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "83"

    const-string v3, "台湾新"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const-string v2, "91"

    const-string v3, "国外"

    invoke-virtual {v1, v2, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_155
    sget-object v1, Lcom/blankj/utilcode/util/RegexUtils;->CITY_MAP:Landroidx/collection/SimpleArrayMap;

    const/4 v2, 0x2

    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18e

    move v1, v0

    move v2, v0

    :goto_168
    if-ge v2, v5, :cond_17c

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    new-array v4, v5, [I

    fill-array-data v4, :array_190

    aget v4, v4, v2

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_168

    :cond_17c
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xb

    new-array v3, v3, [C

    fill-array-data v3, :array_1b6

    rem-int/lit8 v1, v1, 0xb

    aget-char v1, v3, v1

    if-ne v2, v1, :cond_18e

    const/4 v0, 0x1

    :cond_18e
    return v0

    nop

    :array_190
    .array-data 4
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
        0x1
        0x6
        0x3
        0x7
        0x9
        0xa
        0x5
        0x8
        0x4
        0x2
    .end array-data

    :array_1b6
    .array-data 2
        0x31s
        0x30s
        0x58s
        0x39s
        0x38s
        0x37s
        0x36s
        0x35s
        0x34s
        0x33s
        0x32s
    .end array-data
.end method

.method public static isIP(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "((2[0-4]\\d|25[0-5]|[01]?\\d\\d?)\\.){3}(2[0-4]\\d|25[0-5]|[01]?\\d\\d?)"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .registers 3

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/RegexUtils;->isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isMobileExact(Ljava/lang/CharSequence;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "^((13[0-9])|(14[57])|(15[0-35-9])|(16[2567])|(17[01235-8])|(18[0-9])|(19[189]))\\d{8}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    if-nez p1, :cond_10

    move v0, v2

    goto :goto_b

    :cond_10
    if-eqz p0, :cond_1a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1c

    :cond_1a
    move v0, v2

    goto :goto_b

    :cond_1c
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_26
    if-ge v0, v5, :cond_35

    aget-char v6, v4, v0

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_32

    move v0, v2

    goto :goto_b

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_b
.end method

.method public static isMobileSimple(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^[1]\\d{10}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTel(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^0\\d{2,3}[- ]?\\d{7,8}$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isURL(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "[a-zA-z]+://[^\\s]*"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUsername(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^[\\w\\u4e00-\\u9fa5]{6,20}(?<!_)$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isZh(Ljava/lang/CharSequence;)Z
    .registers 2

    const-string v0, "^[\\u4e00-\\u9fa5]+$"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/RegexUtils;->isMatch(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
