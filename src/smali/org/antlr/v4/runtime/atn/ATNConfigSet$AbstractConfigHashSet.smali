.class public abstract Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;
.super Lorg/antlr/v4/runtime/misc/Array2DHashSet;
.source "ATNConfigSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/atn/ATNConfigSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractConfigHashSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/misc/Array2DHashSet",
        "<",
        "Lorg/antlr/v4/runtime/atn/ATNConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;)V"
        }
    .end annotation

    .line 360
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-",
            "Lorg/antlr/v4/runtime/atn/ATNConfig;",
            ">;II)V"
        }
    .end annotation

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/misc/Array2DHashSet;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic asElementType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 357
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->asElementType(Ljava/lang/Object;)Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final asElementType(Ljava/lang/Object;)Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 1

    .line 369
    instance-of v0, p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 373
    :goto_0
    return-object p1

    :cond_0
    check-cast p1, Lorg/antlr/v4/runtime/atn/ATNConfig;

    goto :goto_0
.end method

.method protected bridge synthetic createBucket(I)[Ljava/lang/Object;
    .locals 1

    .line 357
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->createBucket(I)[Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final createBucket(I)[Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 1

    .line 383
    new-array v0, p1, [Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object v0
.end method

.method protected bridge synthetic createBuckets(I)[[Ljava/lang/Object;
    .locals 1

    .line 357
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/atn/ATNConfigSet$AbstractConfigHashSet;->createBuckets(I)[[Lorg/antlr/v4/runtime/atn/ATNConfig;

    move-result-object v0

    return-object v0
.end method

.method protected final createBuckets(I)[[Lorg/antlr/v4/runtime/atn/ATNConfig;
    .locals 1

    .line 378
    new-array v0, p1, [[Lorg/antlr/v4/runtime/atn/ATNConfig;

    return-object v0
.end method
