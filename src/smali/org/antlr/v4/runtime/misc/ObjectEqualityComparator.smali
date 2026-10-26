.class public final Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;
.super Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
.source "ObjectEqualityComparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    .line 4294967295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
