.class public Lorg/apache/tools/ant/util/LazyHashtable;
.super Ljava/util/Hashtable;
.source "LazyHashtable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Hashtable",
        "<TK;TV;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected initAllDone:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    .line 40
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 88
    invoke-super {p0, p1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 97
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 98
    invoke-super {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/LazyHashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 60
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected initAll()V
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/util/LazyHashtable;->initAllDone:Z

    goto :goto_0
.end method

.method public isEmpty()Z
    .registers 2

    .line 68
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 69
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 116
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 77
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/LazyHashtable;->initAll()V

    .line 78
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method
