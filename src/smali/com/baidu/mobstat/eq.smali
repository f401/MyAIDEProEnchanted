.class public Lcom/baidu/mobstat/eq;
.super Lcom/baidu/mobstat/et;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ep;


# static fields
.field static final a:Ljava/nio/ByteBuffer;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/eq;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 17
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/et;-><init>(Lcom/baidu/mobstat/es$a;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/eq;->a(Z)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/et;-><init>(Lcom/baidu/mobstat/es$a;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/eq;->a(Z)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/eq;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 34
    const-string v0, ""

    if-nez p2, :cond_5

    move-object p2, v0

    :cond_5
    const/16 v1, 0x3ed

    const/16 v2, 0x3f7

    if-ne p1, v2, :cond_e

    const/16 p1, 0x3ed

    goto :goto_f

    :cond_e
    move-object v0, p2

    :goto_f
    const/16 p2, 0x3ea

    if-ne p1, v1, :cond_22

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1a

    return-void

    .line 44
    :cond_1a
    new-instance p1, Lcom/baidu/mobstat/ej;

    const-string v0, "A close frame must have a closecode if it has a reason"

    invoke-direct {p1, p2, v0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_22
    const/16 v1, 0x3f3

    if-le p1, v1, :cond_35

    const/16 v1, 0xbb8

    if-ge p1, v1, :cond_35

    if-ne p1, v2, :cond_2d

    goto :goto_35

    .line 50
    :cond_2d
    new-instance p1, Lcom/baidu/mobstat/ej;

    const-string v0, "Trying to send an illegal close code!"

    invoke-direct {p1, p2, v0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1

    .line 53
    :cond_35
    :goto_35
    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object p2

    .line 54
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    array-length v1, p2

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 58
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/eq;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ek;
        }
    .end annotation

    .line 65
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/baidu/mobstat/eq;->f:I

    .line 66
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_58

    .line 69
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v3, 0x3ee

    if-eq v2, v3, :cond_42

    const/16 v3, 0x3f7

    if-eq v2, v3, :cond_42

    if-eq v2, v0, :cond_42

    const/16 v0, 0x1387

    if-gt v2, v0, :cond_42

    const/16 v0, 0x3e8

    if-lt v2, v0, :cond_42

    const/16 v0, 0x3ec

    if-eq v2, v0, :cond_42

    goto :goto_58

    .line 76
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closecode must not be sent over the wire: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/baidu/mobstat/ek;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_58
    :goto_58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method private h()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_11

    .line 89
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/eq;->g:Ljava/lang/String;

    goto :goto_2b

    .line 91
    :cond_11
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 94
    :try_start_19
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/mobstat/eq;->g:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_28} :catch_2e
    .catchall {:try_start_19 .. :try_end_28} :catchall_2c

    .line 99
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2b
    return-void

    :catchall_2c
    move-exception v2

    goto :goto_35

    :catch_2e
    move-exception v2

    .line 97
    :try_start_2f
    new-instance v3, Lcom/baidu/mobstat/ek;

    invoke-direct {v3, v2}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    .line 99
    :goto_35
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v2
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/baidu/mobstat/eq;->f:I

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/baidu/mobstat/et;->a(Ljava/nio/ByteBuffer;)V

    .line 117
    invoke-direct {p0}, Lcom/baidu/mobstat/eq;->g()V

    .line 118
    invoke-direct {p0}, Lcom/baidu/mobstat/eq;->h()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/baidu/mobstat/eq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .registers 3

    .line 123
    iget v0, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_9

    .line 124
    sget-object v0, Lcom/baidu/mobstat/eq;->a:Ljava/nio/ByteBuffer;

    return-object v0

    .line 125
    :cond_9
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/baidu/mobstat/et;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
