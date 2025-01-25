.class public final Lcom/s1243808733/android/dx/util/IndentingWriter;
.super Ljava/io/FilterWriter;
.source "IndentingWriter.java"


# instance fields
.field private collectingIndent:Z

.field private column:I

.field private indent:I

.field private final maxIndent:I

.field private final prefix:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 4

    .line 86
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .registers 4

    .line 57
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_33

    if-ltz p2, :cond_2b

    if-eqz p3, :cond_23

    if-eqz p2, :cond_d

    move p1, p2

    goto :goto_10

    :cond_d
    const p1, 0x7fffffff

    .line 71
    :goto_10
    iput p1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->width:I

    .line 72
    shr-int/lit8 p1, p2, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->maxIndent:I

    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1d

    const/4 p3, 0x0

    :cond_1d
    iput-object p3, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IndentingWriter;->bol()V

    return-void

    .line 68
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "prefix == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bol()V
    .registers 3

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    .line 166
    iget v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->maxIndent:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->collectingIndent:Z

    .line 167
    iput v0, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->indent:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->collectingIndent:Z

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1d

    if-ne p1, v2, :cond_1b

    .line 95
    iget v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->indent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->indent:I

    .line 96
    iget v4, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->maxIndent:I

    if-lt v1, v4, :cond_1d

    .line 97
    iput v4, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->indent:I

    .line 98
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->collectingIndent:Z

    goto :goto_1d

    .line 101
    :cond_1b
    iput-boolean v3, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->collectingIndent:Z

    .line 105
    :cond_1d
    :goto_1d
    iget v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    iget v4, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->width:I

    const/16 v5, 0xa

    if-ne v1, v4, :cond_2e

    if-eq p1, v5, :cond_2e

    .line 106
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    .line 107
    iput v3, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    .line 114
    :cond_2e
    iget v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    if-nez v1, :cond_4f

    .line 115
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_3d

    .line 116
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    :cond_3d
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->collectingIndent:Z

    if-nez v1, :cond_4f

    .line 120
    :goto_41
    iget v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->indent:I

    if-ge v3, v1, :cond_4d

    .line 121
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 123
    :cond_4d
    iput v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    .line 127
    :cond_4f
    iget-object v1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v5, :cond_5a

    .line 130
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/IndentingWriter;->bol()V

    goto :goto_60

    .line 132
    :cond_5a
    iget p1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->column:I

    .line 134
    :goto_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    goto :goto_66

    :goto_65
    throw p1

    :goto_66
    goto :goto_65
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-lez p3, :cond_11

    .line 154
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 158
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    goto :goto_17

    :goto_16
    throw p1

    :goto_17
    goto :goto_16
.end method

.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/IndentingWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-lez p3, :cond_f

    .line 142
    :try_start_5
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 146
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    goto :goto_15

    :goto_14
    throw p1

    :goto_15
    goto :goto_14
.end method
