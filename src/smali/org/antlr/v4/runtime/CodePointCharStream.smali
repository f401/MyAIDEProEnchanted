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
.field static final $assertionsDisabled:Z = false


# instance fields
.field protected final name:Ljava/lang/String;

.field protected position:I

.field protected final size:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    .line 36
    iput-object p3, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .registers 5

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public static fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 2

    .line 48
    const-string v0, "<unknown>"

    invoke-static {p0, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;->fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;

    move-result-object p0

    return-object p0
.end method

.method public static fromBuffer(Lorg/antlr/v4/runtime/CodePointBuffer;Ljava/lang/String;)Lorg/antlr/v4/runtime/CodePointCharStream;
    .registers 18

    .line 66
    sget-object v0, Lorg/antlr/v4/runtime/CodePointCharStream$1;->$SwitchMap$org$antlr$v4$runtime$CodePointBuffer$Type:[I

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->getType()Lorg/antlr/v4/runtime/CodePointBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antlr/v4/runtime/CodePointBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    .line 82
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->intArray()[I

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;-><init>(IILjava/lang/String;[IILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    return-object v0

    .line 89
    :cond_2f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_37
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->charArray()[C

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v7

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;-><init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    return-object v0

    .line 68
    :cond_51
    new-instance v0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->position()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->remaining()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->byteArray()[B

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/antlr/v4/runtime/CodePointBuffer;->arrayOffset()I

    move-result v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v15}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;-><init>(IILjava/lang/String;[BILorg/antlr/v4/runtime/CodePointCharStream$1;)V

    return-object v0
.end method


# virtual methods
.method public final consume()V
    .registers 3

    .line 94
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 98
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void

    .line 96
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract getInternalStorage()Ljava/lang/Object;
.end method

.method public final getSourceName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 132
    :cond_b
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->name:Ljava/lang/String;

    return-object v0

    .line 129
    :cond_e
    :goto_e
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public final index()I
    .registers 2

    .line 103
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return v0
.end method

.method public final mark()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public final release(I)V
    .registers 2

    return-void
.end method

.method public final seek(I)V
    .registers 2

    .line 123
    iput p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->position:I

    return-void
.end method

.method public final size()I
    .registers 2

    .line 108
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 137
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream;->size:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;->getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
