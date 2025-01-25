.class public abstract Lorg/apache/tools/ant/filters/BaseFilterReader;
.super Ljava/io/FilterReader;
.source "BaseFilterReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private initialized:Z

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 51
    new-instance v0, Ljava/io/StringReader;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    .line 52
    invoke-static {p0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 63
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    .line 64
    return-void
.end method


# virtual methods
.method protected final getInitialized()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    return v0
.end method

.method protected final getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public final read([CII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 83
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_d

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->read()I

    move-result v2

    .line 85
    if-ne v2, v0, :cond_10

    .line 86
    if-nez v1, :cond_e

    move p3, v0

    .line 94
    :cond_d
    :goto_d
    return p3

    :cond_e
    move p3, v1

    .line 89
    goto :goto_d

    .line 92
    :cond_10
    add-int v3, p2, v1

    int-to-char v2, v2

    aput-char v2, p1, v3

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected final readFully()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final readLine()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    .line 170
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 172
    if-ne v0, v3, :cond_b

    .line 173
    const/4 v0, 0x0

    .line 185
    :goto_a
    return-object v0

    .line 176
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    :goto_10
    if-eq v0, v3, :cond_1a

    .line 179
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1f

    .line 185
    :cond_1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 183
    :cond_1f
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_10
.end method

.method protected final setInitialized(Z)V
    .registers 2

    .line 128
    iput-boolean p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->initialized:Z

    .line 129
    return-void
.end method

.method public final setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lorg/apache/tools/ant/filters/BaseFilterReader;->project:Lorg/apache/tools/ant/Project;

    .line 148
    return-void
.end method

.method public final skip(J)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 110
    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    .line 114
    :goto_6
    cmp-long v2, v0, p1

    if-gez v2, :cond_12

    .line 115
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    move-wide p1, v0

    .line 119
    :cond_12
    return-wide p1

    .line 114
    :cond_13
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_6

    .line 111
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
