.class public final Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;
.super Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
.source "ObjectEqualityComparator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;-><init>()V

    sput-object v0, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1

    .line 47
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 29
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method
