.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1c

    const-string v0, "\r\n"

    .line 89
    :goto_8
    iget-object v1, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 92
    return p1

    .line 88
    :cond_1c
    const-string v0, "\r"

    goto :goto_8

    :cond_1f
    if-eqz p1, :cond_24

    const-string v0, "\n"

    goto :goto_8

    :cond_24
    const-string v0, ""

    goto :goto_8
.end method


# virtual methods
.method protected add([CII)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v7, 0xa

    const/4 v1, 0x1

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_68

    if-lez p3, :cond_68

    .line 53
    aget-char v0, p1, p2

    if-ne v0, v7, :cond_29

    move v0, v1

    :goto_f
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 54
    add-int/lit8 v0, p2, 0x1

    .line 59
    :goto_17
    add-int v6, p2, p3

    move v4, v0

    move v3, v0

    :goto_1b
    if-ge v3, v6, :cond_5d

    .line 60
    aget-char v0, p1, v3

    if-eq v0, v7, :cond_4e

    const/16 v5, 0xd

    if-eq v0, v5, :cond_2b

    move v5, v3

    .line 76
    :goto_26
    add-int/lit8 v3, v5, 0x1

    goto :goto_1b

    :cond_29
    move v0, v2

    .line 53
    goto :goto_f

    .line 62
    :cond_2b
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v3, v4

    invoke-virtual {v0, p1, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 63
    iput-boolean v1, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    .line 64
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v6, :cond_66

    .line 65
    add-int/lit8 v0, v3, 0x1

    aget-char v0, p1, v0

    if-ne v0, v7, :cond_4c

    move v0, v1

    :goto_3f
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 66
    add-int/lit8 v0, v3, 0x1

    .line 69
    :goto_47
    add-int/lit8 v3, v0, 0x1

    move v4, v3

    move v5, v0

    .line 70
    goto :goto_26

    :cond_4c
    move v0, v2

    .line 65
    goto :goto_3f

    .line 73
    :cond_4e
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v3, v4

    invoke-virtual {v0, p1, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0, v1}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 75
    add-int/lit8 v0, v3, 0x1

    move v4, v0

    move v5, v3

    goto :goto_26

    .line 82
    :cond_5d
    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    add-int v1, p2, p3

    sub-int/2addr v1, v4

    invoke-virtual {v0, p1, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 83
    return-void

    :cond_66
    move v0, v3

    goto :goto_47

    :cond_68
    move v0, p2

    goto :goto_17
.end method

.method protected finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 103
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    .line 105
    :cond_10
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
