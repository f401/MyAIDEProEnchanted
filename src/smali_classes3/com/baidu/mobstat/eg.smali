.class public Lcom/baidu/mobstat/eg;
.super Lcom/baidu/mobstat/ef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/eg$a;
    }
.end annotation


# static fields
.field static final f:Z


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private final h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-class v0, Lcom/baidu/mobstat/eg;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/eg;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/baidu/mobstat/ef;-><init>()V

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/eg;->h:Ljava/util/Random;

    return-void
.end method

.method private a(Lcom/baidu/mobstat/es$a;)B
    .registers 5

    .line 151
    sget-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 153
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_1

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_2

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 157
    :cond_2
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_3

    .line 158
    const/16 v0, 0x8

    goto :goto_0

    .line 159
    :cond_3
    sget-object v0, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_4

    .line 160
    const/16 v0, 0x9

    goto :goto_0

    .line 161
    :cond_4
    sget-object v0, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_5

    .line 162
    const/16 v0, 0xa

    goto :goto_0

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/mobstat/es$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(B)Lcom/baidu/mobstat/es$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ek;
        }
    .end annotation

    .line 213
    packed-switch p1, :pswitch_data_0

    .line 229
    :pswitch_0
    new-instance v0, Lcom/baidu/mobstat/ek;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow optcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-short v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :pswitch_1
    sget-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    .line 226
    :goto_0
    return-object v0

    .line 217
    :pswitch_2
    sget-object v0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    goto :goto_0

    .line 219
    :pswitch_3
    sget-object v0, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    goto :goto_0

    .line 222
    :pswitch_4
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    goto :goto_0

    .line 224
    :pswitch_5
    sget-object v0, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    goto :goto_0

    .line 226
    :pswitch_6
    sget-object v0, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fd;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(JI)[B
    .registers 9

    .line 204
    new-array v1, p3, [B

    .line 205
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 207
    mul-int/lit8 v2, p3, 0x8

    add-int/lit8 v2, v2, -0x8

    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v2, v3

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)Lcom/baidu/mobstat/ef$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 61
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/baidu/mobstat/eu;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lcom/baidu/mobstat/fb;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    .line 70
    :goto_0
    return-object v0

    .line 64
    :cond_1
    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0}, Lcom/baidu/mobstat/fb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1}, Lcom/baidu/mobstat/eu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget-object v0, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    goto :goto_0

    .line 70
    :cond_2
    sget-object v0, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    goto :goto_0
.end method

.method public a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;
    .registers 4

    .line 180
    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Connection"

    const-string v1, "Upgrade"

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "8"

    invoke-interface {p1, v0, v1}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 185
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->h:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 186
    const-string v1, "Sec-WebSocket-Key"

    invoke-static {v0}, Lcom/baidu/mobstat/fd;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/es;)Ljava/nio/ByteBuffer;
    .registers 14

    const/4 v4, 0x4

    const/4 v8, 0x2

    const/16 v5, -0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 85
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->d:Lcom/baidu/mobstat/ea$b;

    sget-object v3, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 86
    :goto_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v6, 0x7d

    if-gt v3, v6, :cond_1

    move v7, v1

    .line 87
    :goto_1
    if-le v7, v1, :cond_3

    add-int/lit8 v3, v7, 0x1

    move v6, v3

    :goto_2
    if-eqz v0, :cond_4

    move v3, v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v6

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 88
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/mobstat/eg;->a(Lcom/baidu/mobstat/es$a;)B

    move-result v10

    .line 89
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_4
    int-to-byte v3, v3

    .line 90
    or-int/2addr v3, v10

    int-to-byte v3, v3

    .line 91
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v10, v3

    invoke-direct {p0, v10, v11, v7}, Lcom/baidu/mobstat/eg;->a(JI)[B

    move-result-object v3

    .line 93
    sget-boolean v10, Lcom/baidu/mobstat/eg;->f:Z

    if-nez v10, :cond_6

    array-length v10, v3

    if-eq v10, v7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const v6, 0xffff

    if-gt v3, v6, :cond_2

    move v7, v8

    goto :goto_1

    :cond_2
    const/16 v7, 0x8

    goto :goto_1

    :cond_3
    move v6, v7

    .line 87
    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    .line 89
    goto :goto_4

    .line 95
    :cond_6
    if-ne v7, v1, :cond_8

    .line 96
    aget-byte v1, v3, v2

    if-eqz v0, :cond_7

    :goto_5
    or-int/2addr v1, v5

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    :goto_6
    if-eqz v0, :cond_d

    .line 107
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->h:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    :goto_7
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 111
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    move v5, v2

    .line 96
    goto :goto_5

    .line 97
    :cond_8
    if-ne v7, v8, :cond_a

    .line 98
    if-eqz v0, :cond_9

    :goto_8
    or-int/lit8 v1, v5, 0x7e

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_9
    move v5, v2

    .line 98
    goto :goto_8

    .line 100
    :cond_a
    const/16 v1, 0x8

    if-ne v7, v1, :cond_c

    .line 101
    if-eqz v0, :cond_b

    :goto_9
    or-int/lit8 v1, v5, 0x7f

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_b
    move v5, v2

    .line 101
    goto :goto_9

    .line 104
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Size representation not supported/specified"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_d
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 116
    :cond_e
    sget-boolean v0, Lcom/baidu/mobstat/eg;->f:Z

    if-nez v0, :cond_f

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 117
    :cond_f
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 119
    return-object v6
.end method

.method public a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/es;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/baidu/mobstat/et;

    invoke-direct {v0}, Lcom/baidu/mobstat/et;-><init>()V

    .line 126
    :try_start_0
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/er;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lcom/baidu/mobstat/ej; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/er;->a(Z)V

    .line 131
    sget-object v1, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    invoke-interface {v0, v1}, Lcom/baidu/mobstat/er;->a(Lcom/baidu/mobstat/es$a;)V

    .line 132
    invoke-interface {v0, p2}, Lcom/baidu/mobstat/er;->b(Z)V

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    new-instance v1, Lcom/baidu/mobstat/en;

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/en;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()V
    .registers 2

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    .line 379
    return-void
.end method

.method public b()Lcom/baidu/mobstat/ef$a;
    .registers 2

    .line 388
    sget-object v0, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    return-object v0
.end method

.method public c()Lcom/baidu/mobstat/ef;
    .registers 2

    .line 383
    new-instance v0, Lcom/baidu/mobstat/eg;

    invoke-direct {v0}, Lcom/baidu/mobstat/eg;-><init>()V

    return-object v0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/es;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/em;,
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 236
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 239
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 242
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 244
    iget-object v2, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 246
    if-le v2, v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 284
    :goto_1
    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/eg;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;

    move-result-object v0

    .line 256
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/baidu/mobstat/eg$a; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 273
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/eg;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;

    move-result-object v0

    .line 274
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/baidu/mobstat/eg$a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 275
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v0}, Lcom/baidu/mobstat/eg$a;->a()I

    move-result v0

    .line 279
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/eg;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    .line 280
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    move-object v0, v1

    .line 284
    goto :goto_1

    .line 258
    :catch_1
    move-exception v0

    .line 260
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    .line 261
    invoke-virtual {v0}, Lcom/baidu/mobstat/eg$a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/eg;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    sget-boolean v1, Lcom/baidu/mobstat/eg;->f:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-gt v1, v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 264
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 265
    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/eg$a;,
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    .line 291
    if-ge v8, v4, :cond_0

    .line 292
    new-instance v0, Lcom/baidu/mobstat/eg$a;

    invoke-direct {v0, p0, v4}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 294
    shr-int/lit8 v0, v9, 0x8

    if-eqz v0, :cond_1

    move v7, v1

    .line 295
    :goto_0
    and-int/lit8 v0, v9, 0x7f

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 296
    if-eqz v0, :cond_2

    .line 297
    new-instance v1, Lcom/baidu/mobstat/ek;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad rsv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v7, v2

    .line 294
    goto :goto_0

    .line 298
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 299
    and-int/lit8 v0, v6, -0x80

    if-eqz v0, :cond_4

    move v0, v1

    .line 300
    :goto_1
    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    .line 301
    and-int/lit8 v9, v9, 0xf

    int-to-byte v9, v9

    invoke-direct {p0, v9}, Lcom/baidu/mobstat/eg;->a(B)Lcom/baidu/mobstat/es$a;

    move-result-object v9

    .line 303
    if-nez v7, :cond_5

    .line 304
    sget-object v10, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-eq v9, v10, :cond_3

    sget-object v10, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-eq v9, v10, :cond_3

    sget-object v10, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne v9, v10, :cond_5

    .line 305
    :cond_3
    new-instance v0, Lcom/baidu/mobstat/ek;

    const-string v1, "control frames may no be fragmented"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    .line 299
    goto :goto_1

    .line 309
    :cond_5
    if-ltz v6, :cond_6

    const/16 v10, 0x7d

    if-le v6, v10, :cond_a

    .line 310
    :cond_6
    sget-object v10, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-eq v9, v10, :cond_7

    sget-object v10, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-eq v9, v10, :cond_7

    sget-object v10, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne v9, v10, :cond_8

    .line 311
    :cond_7
    new-instance v0, Lcom/baidu/mobstat/ek;

    const-string v1, "more than 125 octets"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_8
    const/16 v10, 0x7e

    if-ne v6, v10, :cond_b

    .line 315
    if-ge v8, v3, :cond_9

    .line 316
    new-instance v0, Lcom/baidu/mobstat/eg$a;

    invoke-direct {v0, p0, v3}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw v0

    .line 317
    :cond_9
    const/4 v5, 0x3

    new-array v5, v5, [B

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v1

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    aput-byte v1, v5, v4

    .line 320
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move v4, v3

    move v6, v1

    .line 339
    :cond_a
    :goto_2
    if-eqz v0, :cond_f

    move v1, v3

    .line 341
    :goto_3
    add-int/2addr v1, v4

    add-int/2addr v1, v6

    .line 343
    if-ge v8, v1, :cond_10

    .line 344
    new-instance v0, Lcom/baidu/mobstat/eg$a;

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw v0

    .line 323
    :cond_b
    if-ge v8, v5, :cond_c

    .line 324
    new-instance v0, Lcom/baidu/mobstat/eg$a;

    invoke-direct {v0, p0, v5}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw v0

    .line 325
    :cond_c
    const/16 v1, 0x8

    new-array v4, v1, [B

    move v1, v2

    .line 326
    :goto_4
    const/16 v6, 0x8

    if-ge v1, v6, :cond_d

    .line 327
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v4, v1

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 329
    :cond_d
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    .line 330
    const-wide/32 v12, 0x7fffffff

    cmp-long v1, v10, v12

    if-lez v1, :cond_e

    .line 331
    new-instance v0, Lcom/baidu/mobstat/em;

    const-string v1, "Payloadsize is to big..."

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/em;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_e
    long-to-int v1, v10

    move v4, v5

    move v6, v1

    goto :goto_2

    :cond_f
    move v1, v2

    .line 339
    goto :goto_3

    .line 346
    :cond_10
    invoke-virtual {p0, v6}, Lcom/baidu/mobstat/eg;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 347
    if-eqz v0, :cond_11

    .line 348
    new-array v0, v3, [B

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 350
    :goto_5
    if-ge v2, v6, :cond_12

    .line 351
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    rem-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 354
    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    :cond_12
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne v9, v0, :cond_13

    .line 360
    new-instance v0, Lcom/baidu/mobstat/eq;

    invoke-direct {v0}, Lcom/baidu/mobstat/eq;-><init>()V

    .line 366
    :goto_6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-interface {v0, v1}, Lcom/baidu/mobstat/er;->a(Ljava/nio/ByteBuffer;)V

    .line 368
    sget-object v1, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v9, v1, :cond_14

    .line 369
    invoke-interface {v0}, Lcom/baidu/mobstat/er;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/fe;->b(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 370
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw v0

    .line 362
    :cond_13
    new-instance v0, Lcom/baidu/mobstat/et;

    invoke-direct {v0}, Lcom/baidu/mobstat/et;-><init>()V

    .line 363
    invoke-interface {v0, v7}, Lcom/baidu/mobstat/er;->a(Z)V

    .line 364
    invoke-interface {v0, v9}, Lcom/baidu/mobstat/er;->a(Lcom/baidu/mobstat/es$a;)V

    goto :goto_6

    .line 373
    :cond_14
    return-object v0
.end method
