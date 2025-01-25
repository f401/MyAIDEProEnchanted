.class public Lorg/antlr/v4/runtime/misc/IntegerStack;
.super Lorg/antlr/v4/runtime/misc/IntegerList;
.source "IntegerStack.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/IntegerStack;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lorg/antlr/v4/runtime/misc/IntegerList;-><init>(Lorg/antlr/v4/runtime/misc/IntegerList;)V

    return-void
.end method


# virtual methods
.method public final peek()I
    .registers 2

    .line 34
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->get(I)I

    move-result v0

    return v0
.end method

.method public final pop()I
    .registers 2

    .line 30
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/misc/IntegerStack;->removeAt(I)I

    move-result v0

    return v0
.end method

.method public final push(I)V
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/IntegerStack;->add(I)V

    return-void
.end method
