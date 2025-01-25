.class public Lorg/antlr/v4/runtime/ANTLRInputStream;
.super Ljava/lang/Object;
.source "ANTLRInputStream.java"

# interfaces
.implements Lorg/antlr/v4/runtime/CharStream;


# static fields
.field static final $assertionsDisabled:Z = false

.field public static final INITIAL_BUFFER_SIZE:I = 0x400

.field public static final READ_BUFFER_SIZE:I = 0x400


# instance fields
.field protected data:[C

.field protected n:I

.field public name:Ljava/lang/String;

.field protected p:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {p0, v0, p1}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lorg/antlr/v4/runtime/ANTLRInputStream;->load(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    return-void
.end method

.method public constructor <init>([CI)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    .line 51
    iput-object p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    .line 52
    iput p2, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    return-void
.end method


# virtual methods
.method public LA(I)I
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const/4 v0, -0x1

    if-gez p1, :cond_11

    add-int/lit8 p1, p1, 0x1

    .line 146
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_11

    return v0

    .line 151
    :cond_11
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-lt v1, p1, :cond_1b

    return v0

    .line 157
    :cond_1b
    iget-object p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    aget-char p1, p1, v1

    return p1
.end method

.method public LT(I)I
    .registers 2

    .line 161
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ANTLRInputStream;->LA(I)I

    move-result p1

    return p1
.end method

.method public consume()V
    .registers 3

    .line 127
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-ge v0, v1, :cond_d

    if-ge v0, v1, :cond_c

    .line 134
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    :cond_c
    return-void

    .line 129
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->name:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_e

    .line 223
    :cond_b
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->name:Ljava/lang/String;

    return-object v0

    .line 220
    :cond_e
    :goto_e
    const-string v0, "<unknown>"

    return-object v0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .registers 5

    .line 206
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 207
    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 208
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-lt p1, v1, :cond_a

    add-int/lit8 p1, v1, -0x1

    :cond_a
    if-lt v0, v1, :cond_f

    .line 210
    const-string p1, ""

    return-object p1

    .line 214
    :cond_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-direct {v1, v2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public index()I
    .registers 2

    .line 170
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return v0
.end method

.method public load(Ljava/io/Reader;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x400

    if-gtz p2, :cond_9

    const/16 p2, 0x400

    :cond_9
    if-gtz p3, :cond_d

    const/16 p3, 0x400

    .line 94
    :cond_d
    :try_start_d
    new-array p2, p2, [C

    iput-object p2, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    const/4 p2, 0x0

    .line 99
    :cond_12
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    add-int v1, p2, p3

    array-length v2, v0

    if-le v1, v2, :cond_22

    .line 101
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    .line 103
    :cond_22
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 109
    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_34

    .line 113
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    return-void

    :catchall_34
    move-exception p2

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_3a

    :goto_39
    throw p2

    :goto_3a
    goto :goto_39
.end method

.method public mark()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public release(I)V
    .registers 2

    return-void
.end method

.method public reset()V
    .registers 2

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return-void
.end method

.method public seek(I)V
    .registers 3

    .line 193
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    if-gt p1, v0, :cond_7

    .line 194
    iput p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return-void

    .line 198
    :cond_7
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 199
    :goto_d
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    if-ge v0, p1, :cond_15

    .line 200
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ANTLRInputStream;->consume()V

    goto :goto_d

    :cond_15
    return-void
.end method

.method public size()I
    .registers 2

    .line 175
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
