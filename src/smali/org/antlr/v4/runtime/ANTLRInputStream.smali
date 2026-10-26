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
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
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
    .locals 1
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lorg/antlr/v4/runtime/ANTLRInputStream;-><init>(Ljava/io/Reader;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1
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
    .locals 1
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
    .locals 1

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

    move-result v0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

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
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 4294967295
    :cond_1
    if-gez p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 146
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 151
    :cond_2
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-ge v1, v2, :cond_0

    .line 157
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public LT(I)I
    .locals 1

    .line 161
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/ANTLRInputStream;->LA(I)I

    move-result v0

    return v0
.end method

.method public consume()V
    .locals 2

    .line 127
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-ge v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    .line 134
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot consume EOF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    const-string v0, "<unknown>"

    .line 223
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getText(Lorg/antlr/v4/runtime/misc/Interval;)Ljava/lang/String;
    .locals 4

    .line 206
    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 207
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    .line 208
    iget v3, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    if-lt v0, v3, :cond_1

    add-int/lit8 v0, v3, -0x1

    move v1, v0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 210
    const-string v0, ""

    .line 214
    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public index()I
    .locals 1

    .line 170
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return v0
.end method

.method public load(Ljava/io/Reader;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 4294967295
    :cond_0
    if-gtz p2, :cond_1

    move p2, v0

    :cond_1
    if-gtz p3, :cond_2

    move p3, v0

    .line 94
    :cond_2
    :try_start_0
    new-array v0, p2, [C

    iput-object v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    const/4 v0, 0x0

    .line 99
    :cond_3
    iget-object v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    add-int v2, v0, p3

    array-length v3, v1

    if-le v2, v3, :cond_4

    .line 101
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    iput-object v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    .line 103
    :cond_4
    iget-object v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    invoke-virtual {p1, v1, v0, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 109
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    throw v0
.end method

.method public mark()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public release(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    return-void
.end method

.method public seek(I)V
    .locals 2

    .line 193
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    if-gt p1, v0, :cond_1

    .line 194
    iput p1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    .line 200
    :cond_0
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 199
    :goto_0
    iget v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->p:I

    if-ge v1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/ANTLRInputStream;->consume()V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/antlr/v4/runtime/ANTLRInputStream;->data:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
