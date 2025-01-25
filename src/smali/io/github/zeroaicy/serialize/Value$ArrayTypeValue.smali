.class public Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;
.super Lio/github/zeroaicy/serialize/Value;
.source "Value.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/zeroaicy/serialize/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayTypeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/zeroaicy/serialize/Value<",
        "[",
        "Lio/github/zeroaicy/serialize/Value;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lio/github/zeroaicy/serialize/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lio/github/zeroaicy/serialize/Value$ArrayTypeValue;->value:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
