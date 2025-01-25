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
.field static final f:Z = true


# instance fields
.field private g:Ljava/nio/ByteBuffer;

.field private final h:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
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
    .registers 4

    .line 151
    sget-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_6
    sget-object v0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_c
    sget-object v0, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_12

    const/4 p1, 0x2

    return p1

    .line 157
    :cond_12
    sget-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_19

    const/16 p1, 0x8

    return p1

    .line 159
    :cond_19
    sget-object v0, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_20

    const/16 p1, 0x9

    return p1

    .line 161
    :cond_20
    sget-object v0, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-ne p1, v0, :cond_27

    const/16 p1, 0xa

    return p1

    .line 163
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Don\'t know how to handle "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/mobstat/es$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(B)Lcom/baidu/mobstat/es$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ek;
        }
    .end annotation

    if-eqz p1, :cond_2f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    packed-switch p1, :pswitch_data_32

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknow optcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/baidu/mobstat/ek;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :pswitch_20  #0xa
    sget-object p1, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    return-object p1

    .line 224
    :pswitch_23  #0x9
    sget-object p1, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    return-object p1

    .line 222
    :pswitch_26  #0x8
    sget-object p1, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    return-object p1

    .line 219
    :cond_29
    sget-object p1, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    return-object p1

    .line 217
    :cond_2c
    sget-object p1, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    return-object p1

    .line 215
    :cond_2f
    sget-object p1, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    return-object p1

    :pswitch_data_32
    .packed-switch 0x8
        :pswitch_26  #00000008
        :pswitch_23  #00000009
        :pswitch_20  #0000000a
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    :try_start_15
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_1b} :catch_28

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mobstat/fd;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_28
    move-exception p1

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(JI)[B
    .registers 8

    .line 204
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_15

    mul-int/lit8 v2, p3, 0x8

    add-int/lit8 v2, v2, -0x8

    mul-int/lit8 v3, v1, 0x8

    sub-int/2addr v2, v3

    ushr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 207
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)Lcom/baidu/mobstat/ef$b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 61
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/baidu/mobstat/eu;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lcom/baidu/mobstat/fb;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_29

    .line 64
    :cond_11
    invoke-interface {p2, v1}, Lcom/baidu/mobstat/fb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/eu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 69
    sget-object p1, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    return-object p1

    .line 70
    :cond_26
    sget-object p1, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    return-object p1

    .line 62
    :cond_29
    :goto_29
    sget-object p1, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;
    .registers 4

    .line 180
    const-string v0, "websocket"

    const-string v1, "Upgrade"

    invoke-interface {p1, v1, v0}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "Connection"

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

    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/es;)Ljava/nio/ByteBuffer;
    .registers 15

    .line 84
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->d:Lcom/baidu/mobstat/ea$b;

    sget-object v2, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 86
    :goto_f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v5, 0x7d

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-gt v2, v5, :cond_1c

    const/4 v2, 0x1

    goto :goto_29

    :cond_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const v5, 0xffff

    if-gt v2, v5, :cond_27

    const/4 v2, 0x2

    goto :goto_29

    :cond_27
    const/16 v2, 0x8

    :goto_29
    if-le v2, v3, :cond_2e

    add-int/lit8 v5, v2, 0x1

    goto :goto_2f

    :cond_2e
    move v5, v2

    :goto_2f
    const/4 v8, 0x4

    if-eqz v1, :cond_34

    const/4 v9, 0x4

    goto :goto_35

    :cond_34
    const/4 v9, 0x0

    .line 87
    :goto_35
    add-int/2addr v5, v3

    add-int/2addr v5, v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 88
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/baidu/mobstat/eg;->a(Lcom/baidu/mobstat/es$a;)B

    move-result v9

    .line 89
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->d()Z

    move-result p1

    const/16 v10, -0x80

    if-eqz p1, :cond_53

    const/16 p1, -0x80

    goto :goto_54

    :cond_53
    const/4 p1, 0x0

    :goto_54
    int-to-byte p1, p1

    or-int/2addr p1, v9

    int-to-byte p1, p1

    .line 91
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long v11, p1

    invoke-direct {p0, v11, v12, v2}, Lcom/baidu/mobstat/eg;->a(JI)[B

    move-result-object p1

    .line 93
    sget-boolean v9, Lcom/baidu/mobstat/eg;->f:Z

    if-nez v9, :cond_71

    array-length v9, p1

    if-ne v9, v2, :cond_6b

    goto :goto_71

    :cond_6b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_71
    :goto_71
    if-ne v2, v3, :cond_7f

    .line 96
    aget-byte p1, p1, v4

    if-eqz v1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v10, 0x0

    :goto_79
    or-int/2addr p1, v10

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_9e

    :cond_7f
    if-ne v2, v6, :cond_8f

    if-eqz v1, :cond_84

    goto :goto_85

    :cond_84
    const/4 v10, 0x0

    :goto_85
    or-int/lit8 v2, v10, 0x7e

    int-to-byte v2, v2

    .line 98
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_9e

    :cond_8f
    if-ne v2, v7, :cond_e7

    if-eqz v1, :cond_94

    goto :goto_95

    :cond_94
    const/4 v10, 0x0

    :goto_95
    or-int/lit8 v2, v10, 0x7f

    int-to-byte v2, v2

    .line 101
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_9e
    if-eqz v1, :cond_cb

    .line 107
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 108
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->h:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    :goto_b4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v2, v4, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v3

    goto :goto_b4

    .line 114
    :cond_cb
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 116
    :cond_ce
    sget-boolean p1, Lcom/baidu/mobstat/eg;->f:Z

    if-nez p1, :cond_e3

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_d9

    goto :goto_e3

    :cond_d9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    .line 117
    :cond_e3
    :goto_e3
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v5

    .line 104
    :cond_e7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Size representation not supported/specified"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_f0

    :goto_ef
    throw p1

    :goto_f0
    goto :goto_ef
.end method

.method public a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/es;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/baidu/mobstat/et;

    invoke-direct {v0}, Lcom/baidu/mobstat/et;-><init>()V

    .line 126
    :try_start_5
    invoke-interface {v0, p1}, Lcom/baidu/mobstat/er;->a(Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catch Lcom/baidu/mobstat/ej; {:try_start_5 .. :try_end_8} :catch_19

    .line 130
    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/er;->a(Z)V

    .line 131
    sget-object p1, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/er;->a(Lcom/baidu/mobstat/es$a;)V

    .line 132
    invoke-interface {v0, p2}, Lcom/baidu/mobstat/er;->b(Z)V

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_19
    move-exception p1

    .line 128
    new-instance p2, Lcom/baidu/mobstat/en;

    invoke-direct {p2, p1}, Lcom/baidu/mobstat/en;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a()V
    .registers 2

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

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
            "Ljava/util/List<",
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
    nop

    :goto_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_97

    .line 242
    :try_start_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 243
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 244
    iget-object v2, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_33

    .line 248
    iget-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 249
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 252
    :cond_33
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/eg;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;

    move-result-object v1

    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;
    :try_end_5f
    .catch Lcom/baidu/mobstat/eg$a; {:try_start_a .. :try_end_5f} :catch_60

    goto :goto_97

    :catch_60
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

    if-nez v1, :cond_89

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-le v1, v2, :cond_83

    goto :goto_89

    :cond_83
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 263
    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 264
    iget-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 265
    iput-object v0, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 270
    :cond_97
    :goto_97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 271
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 273
    :try_start_a0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/eg;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;

    move-result-object v1

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Lcom/baidu/mobstat/eg$a; {:try_start_a0 .. :try_end_a7} :catch_a8

    goto :goto_97

    :catch_a8
    move-exception v1

    .line 277
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 278
    invoke-virtual {v1}, Lcom/baidu/mobstat/eg$a;->a()I

    move-result v1

    .line 279
    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/eg;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/eg;->g:Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_bd
    return-object v0
.end method

.method public e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/es;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/eg$a;,
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_14c

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    shr-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    and-int/lit8 v6, v2, 0x7f

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    int-to-byte v6, v6

    if-nez v6, :cond_138

    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit8 v8, v6, -0x80

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    goto :goto_26

    :cond_25
    const/4 v8, 0x0

    :goto_26
    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 301
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/eg;->a(B)Lcom/baidu/mobstat/es$a;

    move-result-object v2

    if-nez v3, :cond_47

    .line 304
    sget-object v9, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_3f

    sget-object v9, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_3f

    sget-object v9, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_3f

    goto :goto_47

    .line 305
    :cond_3f
    new-instance p1, Lcom/baidu/mobstat/ek;

    const-string v0, "control frames may no be fragmented"

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    :goto_47
    if-ltz v6, :cond_4d

    const/16 v9, 0x7d

    if-le v6, v9, :cond_a4

    .line 310
    :cond_4d
    sget-object v9, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_130

    sget-object v9, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_130

    sget-object v9, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-eq v2, v9, :cond_130

    const/16 v9, 0x7e

    if-ne v6, v9, :cond_7f

    if-lt v0, v7, :cond_79

    .line 317
    const/4 v6, 0x3

    new-array v6, v6, [B

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    aput-byte v9, v6, v4

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v6, v1

    .line 320
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    const/4 v1, 0x4

    goto :goto_a4

    .line 316
    :cond_79
    new-instance p1, Lcom/baidu/mobstat/eg$a;

    invoke-direct {p1, p0, v7}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw p1

    :cond_7f
    const/16 v1, 0xa

    if-lt v0, v1, :cond_12a

    .line 325
    const/16 v4, 0x8

    new-array v6, v4, [B

    const/4 v9, 0x0

    :goto_88
    if-ge v9, v4, :cond_93

    .line 327
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    aput-byte v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_88

    .line 329
    :cond_93
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v4, v9, v11

    if-gtz v4, :cond_122

    long-to-int v6, v9

    :cond_a4
    :goto_a4
    if-eqz v8, :cond_a8

    const/4 v4, 0x4

    goto :goto_a9

    :cond_a8
    const/4 v4, 0x0

    :goto_a9
    add-int/2addr v1, v4

    add-int/2addr v1, v6

    if-lt v0, v1, :cond_11c

    .line 346
    invoke-virtual {p0, v6}, Lcom/baidu/mobstat/eg;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v8, :cond_ce

    .line 348
    new-array v1, v7, [B

    .line 349
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_bc
    if-ge v5, v6, :cond_e9

    .line 351
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    rem-int/lit8 v7, v5, 0x4

    aget-byte v7, v1, v7

    xor-int/2addr v4, v7

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 354
    :cond_ce
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 359
    :cond_e9
    sget-object p1, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne v2, p1, :cond_f3

    .line 360
    new-instance p1, Lcom/baidu/mobstat/eq;

    invoke-direct {p1}, Lcom/baidu/mobstat/eq;-><init>()V

    goto :goto_fe

    .line 362
    :cond_f3
    new-instance p1, Lcom/baidu/mobstat/et;

    invoke-direct {p1}, Lcom/baidu/mobstat/et;-><init>()V

    .line 363
    invoke-interface {p1, v3}, Lcom/baidu/mobstat/er;->a(Z)V

    .line 364
    invoke-interface {p1, v2}, Lcom/baidu/mobstat/er;->a(Lcom/baidu/mobstat/es$a;)V

    .line 366
    :goto_fe
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/er;->a(Ljava/nio/ByteBuffer;)V

    .line 368
    sget-object v0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v2, v0, :cond_11b

    .line 369
    invoke-interface {p1}, Lcom/baidu/mobstat/er;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->b(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_113

    goto :goto_11b

    .line 370
    :cond_113
    new-instance p1, Lcom/baidu/mobstat/ej;

    const/16 v0, 0x3ef

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw p1

    :cond_11b
    :goto_11b
    return-object p1

    .line 344
    :cond_11c
    new-instance p1, Lcom/baidu/mobstat/eg$a;

    invoke-direct {p1, p0, v1}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw p1

    .line 331
    :cond_122
    new-instance p1, Lcom/baidu/mobstat/em;

    const-string v0, "Payloadsize is to big..."

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/em;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_12a
    new-instance p1, Lcom/baidu/mobstat/eg$a;

    invoke-direct {p1, p0, v1}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    throw p1

    .line 311
    :cond_130
    new-instance p1, Lcom/baidu/mobstat/ek;

    const-string v0, "more than 125 octets"

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_138
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bad rsv "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/baidu/mobstat/ek;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/ek;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_14c
    new-instance p1, Lcom/baidu/mobstat/eg$a;

    invoke-direct {p1, p0, v1}, Lcom/baidu/mobstat/eg$a;-><init>(Lcom/baidu/mobstat/eg;I)V

    goto :goto_153

    :goto_152
    throw p1

    :goto_153
    goto :goto_152
.end method
