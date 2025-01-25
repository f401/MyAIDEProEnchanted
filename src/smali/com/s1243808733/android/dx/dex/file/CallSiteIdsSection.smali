.class public final Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "CallSiteIdsSection.java"


# instance fields
.field private final callSiteIds:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;",
            "Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;",
            ">;"
        }
    .end annotation
.end field

.field private final callSites:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/s1243808733/android/dx/rop/cst/CstCallSite;",
            "Lcom/s1243808733/android/dx/dex/file/CallSiteItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 41
    const-string v0, "call_site_ids"

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 30
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    .line 33
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method addCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;Lcom/s1243808733/android/dx/dex/file/CallSiteItem;)V
    .registers 4

    if-eqz p1, :cond_12

    if-eqz p2, :cond_a

    .line 112
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 110
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSiteItem == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callSite == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 3

    if-eqz p1, :cond_1a

    .line 50
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->throwIfNotPrepared()V

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    if-eqz p1, :cond_12

    return-object p1

    .line 54
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1a
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getCallSiteItem(Lcom/s1243808733/android/dx/rop/cst/CstCallSite;)Lcom/s1243808733/android/dx/dex/file/CallSiteItem;
    .registers 3

    if-eqz p1, :cond_b

    .line 128
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSites:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/file/CallSiteItem;

    return-object p1

    .line 126
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callSite == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public intern(Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_1c

    .line 87
    :try_start_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->throwIfPrepared()V

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;

    if-nez v0, :cond_1a

    .line 91
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;)V

    .line 92
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_24

    .line 94
    :cond_1a
    monitor-exit p0

    return-void

    .line 84
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cstRef"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 94
    :catchall_24
    move-exception p1

    .line 84
    monitor-exit p0

    throw p1
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected orderItems()V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CallSiteIdsSection;->callSiteIds:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;

    .line 64
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/dex/file/CallSiteIdItem;->setIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method
