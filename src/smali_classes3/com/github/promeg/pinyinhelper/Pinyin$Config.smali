.class public final Lcom/github/promeg/pinyinhelper/Pinyin$Config;
.super Ljava/lang/Object;
.source "Pinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/promeg/pinyinhelper/Pinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field mPinyinDicts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation
.end field

.field mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    .line 149
    :cond_0
    new-instance v0, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;-><init>()V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$1;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getPinyinDicts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    return-object v0
.end method

.method getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    return-object v0
.end method

.method valid()Z
    .registers 2

    .line 171
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getPinyinDicts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .registers 3

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    .line 162
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    :goto_0
    return-object p0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
