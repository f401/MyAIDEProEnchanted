.class final Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;
.super Lorg/antlr/v4/runtime/CodePointCharStream;
.source "CodePointCharStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/CodePointCharStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodePoint16BitCharStream"
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field private final charArray:[C


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 193
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;[CI)V
    .registers 6

    .line 197
    const/4 p5, 0x0

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V

    .line 198
    iput-object p4, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .registers 7

    .line 193
    invoke-direct/range {p0 .. p5}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;-><init>(IILjava/lang/String;[CI)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .registers 5

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 232
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->position:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 233
    iget p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    if-lt v0, p1, :cond_15

    return v1

    .line 236
    :cond_15
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    aget-char p1, p1, v0

    goto :goto_2e

    .line 238
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    const/4 p1, 0x0

    return p1

    .line 223
    :cond_24
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->position:I

    add-int/2addr v0, p1

    if-gez v0, :cond_2a

    return v1

    .line 227
    :cond_2a
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    aget-char p1, p1, v0

    .line 236
    :goto_2e
    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method getInternalStorage()Ljava/lang/Object;
    .registers 2

    .line 243
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 5

    .line 206
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 215
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
