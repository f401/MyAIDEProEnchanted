.class public abstract Lcom/github/promeg/pinyinhelper/PinyinMapDict;
.super Ljava/lang/Object;
.source "PinyinMapDict.java"

# interfaces
.implements Lcom/github/promeg/pinyinhelper/PinyinDict;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract mapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public toPinyin(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 29
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;->mapping()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;->mapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public words()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;->mapping()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/PinyinMapDict;->mapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method
