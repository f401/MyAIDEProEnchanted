.class public abstract Lorg/antlr/v4/runtime/CodePointCharStream;
.super Ljava/lang/Object;
.source "CodePointCharStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;,
        Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;,
        Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field protected final name:Ljava/lang/String;

.field protected position:I

.field protected final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    .line 36
    iput-object p3, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 1

    .line 48
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object v0

    return-object v0
.end method

.method public static fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .locals 7

    const/4 v6, 0x0

    .line 66
    sget-object v0, Lorg/antlr/v4/runtime/CodePointCharStream$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->getType()Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->intArray()[I

    move-result-object v4

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;-><init>(IILjava/lang/String;[IILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->charArray()[C

    move-result-object v4

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;-><init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    goto :goto_0

    .line 68
    :cond_2
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->byteArray()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v5

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;-><init>(IILjava/lang/String;[BILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    goto :goto_0
.end method


# virtual methods
.method public final consume()V
    .locals 2

    .line 94
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 98
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract getInternalStorage()Ljava/lang/Object;
.end method

.method public final getSourceName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const-string v0, "<unknown>"

    .line 132
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public final index()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return v0
.end method

.method public final mark()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final release(I)V
    .locals 0

    return-void
.end method

.method public final seek(I)V
    .locals 0

    .line 123
    iput p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void
.end method

.method public final size()I
    .locals 1

    .line 108
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 137
    const/4 v0, 0x0

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
