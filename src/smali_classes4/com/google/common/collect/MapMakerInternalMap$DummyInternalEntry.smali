.class final Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DummyInternalEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getHash()I
    .registers 2

    .line 988
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 993
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
    .registers 2

    .line 983
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .registers 2

    .line 975
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 998
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
