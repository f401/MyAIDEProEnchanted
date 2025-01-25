.class public Lio/github/zeroaicy/serialize/Value$CollectionTypeValue;
.super Lio/github/zeroaicy/serialize/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/serialize/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionTypeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/zeroaicy/serialize/Value<",
        "Ljava/util/Collection<",
        "Lio/github/zeroaicy/serialize/Value;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lio/github/zeroaicy/serialize/Value;-><init>()V

    return-void
.end method
