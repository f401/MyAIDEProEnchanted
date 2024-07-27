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

    .line 19
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

    .line 31
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    const/16 v3, 0x3f7

    const/16 v0, 0x3ed

    const/16 v2, 0x3ea

    .line 34
    if-nez p2, :cond_4

    .line 35
    const-string v1, ""

    .line 38
    :goto_0
    if-ne p1, v3, :cond_0

    .line 40
    const-string v1, ""

    move p1, v0

    .line 42
    :cond_0
    if-ne p1, v0, :cond_1

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 44
    new-instance v0, Lcom/baidu/mobstat/ej;

    const-string v1, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v2, v1}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    const/16 v0, 0x3f3

    if-le p1, v0, :cond_2

    const/16 v0, 0xbb8

    if-ge p1, v0, :cond_2

    if-eq p1, v3, :cond_2

    .line 50
    new-instance v0, Lcom/baidu/mobstat/ej;

    const-string v1, "Trying to send an illegal close code!"

    invoke-direct {v0, v2, v1}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    invoke-static {v1}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 54
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 61
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/eq;->a(Ljava/nio/ByteBuffer;)V

    .line 62
    :cond_3
    return-void

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method private g()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ek;
        }
    .end annotation

    const/16 v3, 0x3ed

    const/4 v2, 0x2

    .line 65
    iput v3, p0, Lcom/baidu/mobstat/eq;->f:I

    .line 66
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 69
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/mobstat/eq;->f:I

    .line 75
    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v2, 0x3ee

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v2, 0x3f7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v2, 0x1387

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    const/16 v2, 0x3ec

    if-ne v1, v2, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lcom/baidu/mobstat/ek;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closecode must not be sent over the wire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mobstat/eq;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 80
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

    if-ne v0, v1, :cond_0

    .line 89
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/eq;->g:Ljava/lang/String;

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 94
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-static {v1}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/eq;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    new-instance v3, Lcom/baidu/mobstat/ek;

    invoke-direct {v3, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
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

    .line 119
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

    if-ne v0, v1, :cond_0

    .line 124
    sget-object v0, Lcom/baidu/mobstat/eq;->a:Ljava/nio/ByteBuffer;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/baidu/mobstat/et;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/baidu/mobstat/et;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mobstat/eq;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
