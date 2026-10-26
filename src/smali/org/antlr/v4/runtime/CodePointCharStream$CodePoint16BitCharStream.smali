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
.field static final $assertionsDisabled:Z


# instance fields
.field private final charArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 193
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;[CI)V
    .locals 1

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V

    .line 198
    iput-object p4, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[CILorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .locals 0

    .line 193
    invoke-direct/range {p0 .. p5}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;-><init>(IILjava/lang/String;[CI)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 3

    const/4 v0, -0x1

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 232
    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->position:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 233
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    if-lt v1, v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    aget-char v0, v0, v1

    :goto_1
    const v1, 0xffff

    and-int/2addr v0, v1

    goto :goto_0

    .line 238
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :cond_4
    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->position:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    .line 227
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    aget-char v0, v0, v1

    goto :goto_1
.end method

.method getInternalStorage()Ljava/lang/Object;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 4

    .line 206
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->size:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 215
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint16BitCharStream;->charArray:[C

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
