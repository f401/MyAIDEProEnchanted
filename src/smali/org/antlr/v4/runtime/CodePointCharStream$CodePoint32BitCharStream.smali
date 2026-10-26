.class final Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;
.super Lorg/antlr/v4/runtime/CodePointCharStream;
.source "CodePointCharStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/CodePointCharStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CodePoint32BitCharStream"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# instance fields
.field private final intArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 248
    return-void
.end method

.method private constructor <init>(IILjava/lang/String;[II)V
    .locals 1

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/antlr/v4/runtime/CodePointCharStream;-><init>(IILjava/lang/String;Lorg/antlr/v4/runtime/CodePointCharStream$1;)V

    .line 253
    iput-object p4, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->intArray:[I

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;[IILorg/antlr/v4/runtime/CodePointCharStream$1;)V
    .locals 0

    .line 248
    invoke-direct/range {p0 .. p5}, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;-><init>(IILjava/lang/String;[II)V

    return-void
.end method


# virtual methods
.method public LA(I)I
    .locals 3

    const/4 v0, -0x1

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 283
    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->position:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 284
    iget v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->size:I

    if-lt v1, v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->intArray:[I

    aget v0, v0, v1

    goto :goto_0

    .line 289
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not reached"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_4
    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->position:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_0

    .line 278
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->intArray:[I

    aget v0, v0, v1

    goto :goto_0
.end method

.method getInternalStorage()Ljava/lang/Object;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->intArray:[I

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 4

    .line 261
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 262
    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->size:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 266
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/antlr/v4/runtime/CodePointCharStream$CodePoint32BitCharStream;->intArray:[I

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([III)V

    return-object v2
.end method
