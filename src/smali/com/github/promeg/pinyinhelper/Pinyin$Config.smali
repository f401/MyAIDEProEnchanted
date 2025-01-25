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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    .line 149
    :cond_c
    new-instance p1, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;

    invoke-direct {p1}, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;-><init>()V

    iput-object p1, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mSelector:Lcom/github/promeg/pinyinhelper/SegmentationSelector;

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
            "Ljava/util/List<",
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

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->getSelector()Lcom/github/promeg/pinyinhelper/SegmentationSelector;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .registers 3

    if-eqz p1, :cond_1c

    .line 160
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    if-nez v0, :cond_11

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    .line 162
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 163
    :cond_11
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 164
    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->mPinyinDicts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    return-object p0
.end method
