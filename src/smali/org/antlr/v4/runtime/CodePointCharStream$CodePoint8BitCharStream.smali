.class final Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;
.super Lorg/antlr/v4/runtime/CodePointCharStream;
.source "CodePointCharStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/CodePointCharStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodePoint8BitCharStream"
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false


# instance fields
.field private final byteArray:[B


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 141
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;[BI)V
    .registers 6

    .line 145
    const/4 p5, 0x0

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V

    .line 148
    iput-object p4, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->byteArray:[B

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[BILorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .registers 7

    .line 141
    invoke-direct/range {p0 .. p5}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;-><init>(IILjava/lang/String;[BI)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .registers 5

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    if-eqz v0, :cond_22

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 177
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->position:I

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 178
    iget p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->size:I

    if-lt v0, p1, :cond_15

    return v1

    .line 181
    :cond_15
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->byteArray:[B

    aget-byte p1, p1, v0

    goto :goto_2e

    .line 183
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not reached"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    const/4 p1, 0x0

    return p1

    .line 168
    :cond_24
    iget v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->position:I

    add-int/2addr v0, p1

    if-gez v0, :cond_2a

    return v1

    .line 172
    :cond_2a
    iget-object p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->byteArray:[B

    aget-byte p1, p1, v0

    .line 181
    :goto_2e
    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method getInternalStorage()Ljava/lang/Object;
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->byteArray:[B

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 6

    .line 154
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iget p1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->size:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 160
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint8BitCharStream;->byteArray:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v0, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method
