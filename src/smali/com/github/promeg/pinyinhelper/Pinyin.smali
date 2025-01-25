.class public final Lcom/github/promeg/pinyinhelper/Pinyin;
.super Ljava/lang/Object;
.source "Pinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    }
.end annotation


# static fields
.field static mPinyinDicts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation
.end field

.field static mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

.field static mTrieDict:Lorg/ahocorasick/trie/Trie;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lcom/github/promeg/pinyinhelper/PinyinDict;)V
    .registers 4

    if-eqz p0, :cond_22

    .line 52
    invoke-interface {p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_22

    .line 56
    :cond_13
    new-instance v0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    sget-object v1, Lcom/github/promeg/pinyinhelper/Pinyin;->mPinyinDicts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$1;)V

    invoke-virtual {v0, p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    move-result-object p0

    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V

    :cond_22
    :goto_22
    return-void
.end method

.method private static decodeIndex([B[BI)S
    .registers 4

    .line 127
    div-int/lit8 v0, p2, 0x8

    .line 128
    nop

    .line 130
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    .line 132
    aget-byte p0, p0, v0

    sget-object v0, Lcom/github/promeg/pinyinhelper/PinyinData;->BIT_MASKS:[I

    rem-int/lit8 p2, p2, 0x8

    aget p2, v0, p2

    and-int/2addr p0, p2

    if-eqz p0, :cond_16

    or-int/lit16 p0, p1, 0x100

    int-to-short p1, p0

    :cond_16
    return p1
.end method

.method private static getPinyinCode(C)I
    .registers 4

    add-int/lit16 v0, p0, -0x4e00

    const/16 v1, 0x1b58

    if-ltz v0, :cond_11

    if-ge v0, v1, :cond_11

    .line 114
    sget-object p0, Lcom/github/promeg/pinyinhelper/PinyinCode1;->PINYIN_CODE_PADDING:[B

    sget-object v1, Lcom/github/promeg/pinyinhelper/PinyinCode1;->PINYIN_CODE:[B

    invoke-static {p0, v1, v0}, Lcom/github/promeg/pinyinhelper/Pinyin;->decodeIndex([B[BI)S

    move-result p0

    return p0

    :cond_11
    if-gt v1, v0, :cond_22

    const/16 v1, 0x36b0

    if-ge v0, v1, :cond_22

    .line 117
    sget-object v0, Lcom/github/promeg/pinyinhelper/PinyinCode2;->PINYIN_CODE_PADDING:[B

    sget-object v1, Lcom/github/promeg/pinyinhelper/PinyinCode2;->PINYIN_CODE:[B

    add-int/lit16 p0, p0, -0x6958

    invoke-static {v0, v1, p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->decodeIndex([B[BI)S

    move-result p0

    return p0

    .line 120
    :cond_22
    sget-object v0, Lcom/github/promeg/pinyinhelper/PinyinCode3;->PINYIN_CODE_PADDING:[B

    sget-object v1, Lcom/github/promeg/pinyinhelper/PinyinCode3;->PINYIN_CODE:[B

    const v2, 0x84b0

    sub-int/2addr p0, v2

    invoke-static {v0, v1, p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->decodeIndex([B[BI)S

    move-result p0

    return p0
.end method

.method public static init(Lcom/github/promeg/pinyinhelper/Pinyin$Config;)V
    .registers 2

    if-nez p0, :cond_a

    .line 29
    const/4 p0, 0x0

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->mPinyinDicts:Ljava/util/List;

    .line 30
    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->mTrieDict:Lorg/ahocorasick/trie/Trie;

    .line 31
    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    return-void

    .line 35
    :cond_a
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->valid()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 39
    :cond_11
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getPinyinDicts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->mPinyinDicts:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getPinyinDicts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/github/promeg/pinyinhelper/Utils;->dictsToTrie(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;

    move-result-object v0

    sput-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->mTrieDict:Lorg/ahocorasick/trie/Trie;

    .line 41
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    move-result-object p0

    sput-object p0, Lcom/github/promeg/pinyinhelper/Pinyin;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    return-void
.end method

.method public static isChinese(C)Z
    .registers 2

    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_f

    const v0, 0x9fa5

    if-gt p0, v0, :cond_f

    .line 107
    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->getPinyinCode(C)I

    move-result v0

    if-gtz v0, :cond_13

    :cond_f
    const/16 v0, 0x3007

    if-ne v0, p0, :cond_15

    :cond_13
    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static newConfig()Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .registers 2

    .line 65
    new-instance v0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$1;)V

    return-object v0
.end method

.method public static toPinyin(C)Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->isChinese(C)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x3007

    if-ne p0, v0, :cond_d

    .line 90
    const-string p0, "LING"

    return-object p0

    .line 92
    :cond_d
    sget-object v0, Lcom/github/promeg/pinyinhelper/PinyinData;->PINYIN_TABLE:[Ljava/lang/String;

    invoke-static {p0}, Lcom/github/promeg/pinyinhelper/Pinyin;->getPinyinCode(C)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 95
    :cond_16
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 78
    sget-object v0, Lcom/github/promeg/pinyinhelper/Pinyin;->mTrieDict:Lorg/ahocorasick/trie/Trie;

    sget-object v1, Lcom/github/promeg/pinyinhelper/Pinyin;->mPinyinDicts:Ljava/util/List;

    sget-object v2, Lcom/github/promeg/pinyinhelper/Pinyin;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/github/promeg/pinyinhelper/Engine;->toPinyin(Ljava/lang/String;Lorg/ahocorasick/trie/Trie;Ljava/util/List;Ljava/lang/String;Lcom/github/promeg/pinyinhelper/SegmentationSelector;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
