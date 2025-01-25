.class public Lcom/baidu/mobstat/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ea;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/ef;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I = 0x0

.field public static c:Z = false

.field static final h:Z = true


# instance fields
.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/nio/channels/SelectionKey;

.field public g:Ljava/nio/channels/ByteChannel;

.field private final i:Lcom/baidu/mobstat/ed;

.field private volatile j:Z

.field private k:Lcom/baidu/mobstat/ea$a;

.field private l:Lcom/baidu/mobstat/ef;

.field private m:Lcom/baidu/mobstat/ea$b;

.field private n:Lcom/baidu/mobstat/es;

.field private o:Ljava/nio/ByteBuffer;

.field private p:Lcom/baidu/mobstat/eu;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Boolean;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ec;->a:Ljava/util/List;

    .line 38
    const/16 v1, 0x4000

    sput v1, Lcom/baidu/mobstat/ec;->b:I

    .line 39
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/mobstat/ec;->c:Z

    .line 42
    new-instance v1, Lcom/baidu/mobstat/eh;

    invoke-direct {v1}, Lcom/baidu/mobstat/eh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lcom/baidu/mobstat/eg;

    invoke-direct {v1}, Lcom/baidu/mobstat/eg;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ed;Lcom/baidu/mobstat/ef;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    .line 67
    sget-object v1, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    iput-object v1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    .line 74
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    .line 84
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    .line 86
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->q:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->r:Ljava/lang/Integer;

    .line 88
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->s:Ljava/lang/Boolean;

    .line 90
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->t:Ljava/lang/String;

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    .line 101
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->d:Ljava/util/concurrent/BlockingQueue;

    .line 102
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->e:Ljava/util/concurrent/BlockingQueue;

    .line 103
    iput-object p1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    .line 104
    sget-object p1, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    if-eqz p2, :cond_3f

    .line 106
    invoke-virtual {p2}, Lcom/baidu/mobstat/ef;->c()Lcom/baidu/mobstat/ef;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    :cond_3f
    return-void

    .line 100
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/baidu/mobstat/ez;)V
    .registers 5

    .line 590
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_21

    .line 591
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open using draft: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    :cond_21
    sget-object v0, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 594
    :try_start_25
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/ez;)V
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception p1

    .line 596
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    :goto_31
    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mobstat/es;",
            ">;)V"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 504
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es;

    .line 505
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/es;)V

    goto :goto_a

    :cond_1a
    return-void

    .line 503
    :cond_1b
    new-instance p1, Lcom/baidu/mobstat/eo;

    invoke-direct {p1}, Lcom/baidu/mobstat/eo;-><init>()V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 585
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method private c(ILjava/lang/String;Z)V
    .registers 8

    .line 330
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-eq v0, v1, :cond_83

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    if-eq v0, v1, :cond_83

    .line 331
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_5c

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2c

    .line 333
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_24

    if-nez p3, :cond_1e

    goto :goto_24

    :cond_1e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 334
    :cond_24
    :goto_24
    sget-object p3, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    iput-object p3, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 335
    invoke-virtual {p0, p1, p2, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    return-void

    .line 338
    :cond_2c
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v1

    sget-object v3, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    if-eq v1, v3, :cond_58

    if-nez p3, :cond_44

    .line 342
    :try_start_38
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, p1, p2}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;ILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3d} :catch_3e
    .catch Lcom/baidu/mobstat/ej; {:try_start_38 .. :try_end_3d} :catch_4d

    goto :goto_44

    :catch_3e
    move-exception v1

    .line 344
    :try_start_3f
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v3, p0, v1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 347
    :cond_44
    :goto_44
    new-instance v1, Lcom/baidu/mobstat/eq;

    invoke-direct {v1, p1, p2}, Lcom/baidu/mobstat/eq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/es;)V
    :try_end_4c
    .catch Lcom/baidu/mobstat/ej; {:try_start_3f .. :try_end_4c} :catch_4d

    goto :goto_58

    :catch_4d
    move-exception v1

    .line 349
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v3, p0, v1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 350
    const-string v1, "generated frame is invalid"

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    .line 353
    :cond_58
    :goto_58
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_75

    :cond_5c
    const/4 v0, -0x3

    if-ne p1, v0, :cond_71

    .line 355
    sget-boolean v1, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v1, :cond_6c

    if-eqz p3, :cond_66

    goto :goto_6c

    :cond_66
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 356
    :cond_6c
    :goto_6c
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_75

    .line 358
    :cond_71
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    :goto_75
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_7c

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    .line 362
    :cond_7c
    sget-object p1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 363
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    :cond_83
    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .registers 9

    .line 141
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_a

    move-object v0, p1

    goto :goto_3d

    .line 144
    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 145
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 147
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 148
    iput-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    .line 151
    :cond_31
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    .line 155
    :goto_3d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 157
    const/4 v1, 0x0

    :try_start_41
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    const/4 v3, 0x1

    if-nez v2, :cond_6f

    .line 158
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ef$b;

    move-result-object v2

    .line 159
    sget-object v4, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;
    :try_end_4c
    .catch Lcom/baidu/mobstat/ei; {:try_start_41 .. :try_end_4c} :catch_e1

    if-ne v2, v4, :cond_6f

    .line 161
    :try_start_4e
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v2, p0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    .line 162
    const-string v2, ""

    const/4 v4, -0x3

    invoke-virtual {p0, v4, v2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;)V
    :try_end_65
    .catch Lcom/baidu/mobstat/ej; {:try_start_4e .. :try_end_65} :catch_66
    .catch Lcom/baidu/mobstat/ei; {:try_start_4e .. :try_end_65} :catch_e1

    goto :goto_6e

    .line 164
    :catch_66
    move-exception v2

    :try_start_67
    const-string v2, "remote peer closed connection before flashpolicy could be transmitted"

    const/16 v4, 0x3ee

    invoke-direct {p0, v4, v2, v3}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V
    :try_end_6e
    .catch Lcom/baidu/mobstat/ei; {:try_start_67 .. :try_end_6e} :catch_e1

    :goto_6e
    return v1

    .line 172
    :cond_6f
    :try_start_6f
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    sget-object v4, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne v2, v4, :cond_12b

    .line 173
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v4, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    invoke-virtual {v2, v4}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ea$b;)V

    .line 174
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/ef;->d(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ez;

    move-result-object v2

    .line 175
    instance-of v4, v2, Lcom/baidu/mobstat/fb;

    const/16 v5, 0x3ea

    if-nez v4, :cond_8e

    .line 176
    const-string v2, "wrong http function"

    invoke-virtual {p0, v5, v2, v1}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    return v1

    .line 179
    :cond_8e
    check-cast v2, Lcom/baidu/mobstat/fb;

    .line 180
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v6, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-virtual {v4, v6, v2}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)Lcom/baidu/mobstat/ef$b;

    move-result-object v4

    .line 181
    sget-object v6, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;
    :try_end_9a
    .catch Lcom/baidu/mobstat/el; {:try_start_6f .. :try_end_9a} :catch_dc
    .catch Lcom/baidu/mobstat/ei; {:try_start_6f .. :try_end_9a} :catch_e1

    if-ne v4, v6, :cond_c3

    .line 183
    :try_start_9c
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    iget-object v5, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-interface {v4, p0, v5, v2}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)V
    :try_end_a3
    .catch Lcom/baidu/mobstat/ej; {:try_start_9c .. :try_end_a3} :catch_b6
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_a3} :catch_a7
    .catch Lcom/baidu/mobstat/el; {:try_start_9c .. :try_end_a3} :catch_dc
    .catch Lcom/baidu/mobstat/ei; {:try_start_9c .. :try_end_a3} :catch_e1

    .line 192
    :try_start_a3
    invoke-direct {p0, v2}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ez;)V

    return v3

    :catch_a7
    move-exception v2

    .line 188
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v3, p0, v2}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 189
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    return v1

    :catch_b6
    move-exception v2

    .line 185
    invoke-virtual {v2}, Lcom/baidu/mobstat/ej;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/baidu/mobstat/ej;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    return v1

    .line 195
    :cond_c3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draft "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;)V
    :try_end_db
    .catch Lcom/baidu/mobstat/el; {:try_start_a3 .. :try_end_db} :catch_dc
    .catch Lcom/baidu/mobstat/ei; {:try_start_a3 .. :try_end_db} :catch_e1

    goto :goto_12b

    :catch_dc
    move-exception v2

    .line 199
    :try_start_dd
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ej;)V
    :try_end_e0
    .catch Lcom/baidu/mobstat/ei; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_12b

    :catch_e1
    move-exception v2

    .line 202
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_119

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v2}, Lcom/baidu/mobstat/ei;->a()I

    move-result v3

    if-nez v3, :cond_fa

    .line 206
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v3, v0, 0x10

    goto :goto_10f

    .line 208
    :cond_fa
    sget-boolean v4, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v4, :cond_10f

    invoke-virtual {v2}, Lcom/baidu/mobstat/ei;->a()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v2, v0, :cond_109

    goto :goto_10f

    :cond_109
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 210
    :cond_10f
    :goto_10f
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    .line 212
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_12b

    .line 215
    :cond_119
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_12b
    :goto_12b
    return v1
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ef;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_195

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es;

    .line 228
    sget-boolean v1, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v1, :cond_30

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matched frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_30
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v1

    .line 231
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->d()Z

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v4, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-ne v3, v4, :cond_3f

    return-void

    .line 236
    :cond_3f
    sget-object v3, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_75

    .line 238
    nop

    .line 239
    instance-of v1, v0, Lcom/baidu/mobstat/ep;

    if-eqz v1, :cond_54

    .line 240
    check-cast v0, Lcom/baidu/mobstat/ep;

    .line 241
    invoke-interface {v0}, Lcom/baidu/mobstat/ep;->a()I

    move-result v1

    .line 242
    invoke-interface {v0}, Lcom/baidu/mobstat/ep;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Lcom/baidu/mobstat/ej; {:try_start_0 .. :try_end_53} :catch_196

    goto :goto_58

    :cond_54
    const-string v0, ""

    const/16 v1, 0x3ed

    .line 244
    :goto_58
    :try_start_58
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v3, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    const/4 v5, 0x1

    if-ne v2, v3, :cond_63

    .line 246
    invoke-virtual {p0, v1, v0, v5}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    goto :goto_a

    .line 249
    :cond_63
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v2}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    if-ne v2, v3, :cond_71

    .line 250
    invoke-direct {p0, v1, v0, v5}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    goto :goto_a

    .line 252
    :cond_71
    invoke-virtual {p0, v1, v0, v4}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_a

    .line 255
    :cond_75
    sget-object v3, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-ne v1, v3, :cond_7f

    .line 256
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V

    goto :goto_a

    .line 258
    :cond_7f
    sget-object v3, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-ne v1, v3, :cond_89

    .line 259
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->c(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V

    goto :goto_a

    :cond_89
    const/16 v3, 0x3ea

    if-eqz v2, :cond_d8

    .line 261
    sget-object v5, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne v1, v5, :cond_92

    goto :goto_d8

    .line 303
    :cond_92
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-nez v2, :cond_d0

    .line 305
    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;
    :try_end_98
    .catch Lcom/baidu/mobstat/ej; {:try_start_58 .. :try_end_98} :catch_196

    if-ne v1, v2, :cond_b1

    .line 307
    :try_start_9a
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_a7} :catch_a9
    .catch Lcom/baidu/mobstat/ej; {:try_start_9a .. :try_end_a7} :catch_196

    goto/16 :goto_a

    :catch_a9
    move-exception v0

    .line 309
    :try_start_aa
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 311
    :cond_b1
    sget-object v2, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;
    :try_end_b3
    .catch Lcom/baidu/mobstat/ej; {:try_start_aa .. :try_end_b3} :catch_196

    if-ne v1, v2, :cond_c8

    .line 313
    :try_start_b5
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/nio/ByteBuffer;)V
    :try_end_be
    .catch Ljava/lang/RuntimeException; {:try_start_b5 .. :try_end_be} :catch_c0
    .catch Lcom/baidu/mobstat/ej; {:try_start_b5 .. :try_end_be} :catch_196

    goto/16 :goto_a

    :catch_c0
    move-exception v0

    .line 315
    :try_start_c1
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 318
    :cond_c8
    new-instance p1, Lcom/baidu/mobstat/ej;

    const-string v0, "non control or continious frame expected"

    invoke-direct {p1, v3, v0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1

    .line 304
    :cond_d0
    new-instance p1, Lcom/baidu/mobstat/ej;

    const-string v0, "Continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1

    .line 262
    :cond_d8
    :goto_d8
    sget-object v5, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    const/16 v6, 0x3ef

    if-eq v1, v5, :cond_ed

    .line 263
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-nez v2, :cond_e5

    .line 265
    iput-object v0, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    goto :goto_133

    .line 264
    :cond_e5
    new-instance p1, Lcom/baidu/mobstat/ej;

    const-string v0, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v3, v0}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_ed
    .catch Lcom/baidu/mobstat/ej; {:try_start_c1 .. :try_end_ed} :catch_196

    .line 266
    :cond_ed
    const-string v5, "Continuous frame sequence was not started."

    if-eqz v2, :cond_12f

    .line 267
    :try_start_f1
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v2, :cond_129

    .line 270
    invoke-interface {v2}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v2

    sget-object v3, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v2, v3, :cond_125

    .line 272
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v2}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x40

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 273
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v3, v0}, Lcom/baidu/mobstat/es;->a(Lcom/baidu/mobstat/es;)V

    .line 274
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v3}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-eqz v2, :cond_11f

    goto :goto_125

    .line 275
    :cond_11f
    new-instance p1, Lcom/baidu/mobstat/ej;

    invoke-direct {p1, v6}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw p1

    .line 278
    :cond_125
    :goto_125
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    goto :goto_133

    .line 268
    :cond_129
    new-instance p1, Lcom/baidu/mobstat/ej;

    invoke-direct {p1, v3, v5}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1

    .line 279
    :cond_12f
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v2, :cond_18f

    .line 283
    :goto_133
    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_148

    .line 284
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/fe;->b(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_142

    goto :goto_148

    .line 285
    :cond_142
    new-instance p1, Lcom/baidu/mobstat/ej;

    invoke-direct {p1, v6}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw p1

    .line 289
    :cond_148
    :goto_148
    sget-object v2, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_180

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v1, :cond_180

    invoke-interface {v1}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_180

    .line 291
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v2, v0}, Lcom/baidu/mobstat/es;->a(Lcom/baidu/mobstat/es;)V

    .line 293
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v2}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_17a

    goto :goto_180

    .line 294
    :cond_17a
    new-instance p1, Lcom/baidu/mobstat/ej;

    invoke-direct {p1, v6}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw p1
    :try_end_180
    .catch Lcom/baidu/mobstat/ej; {:try_start_f1 .. :try_end_180} :catch_196

    .line 298
    :cond_180
    :goto_180
    :try_start_180
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    :try_end_185
    .catch Ljava/lang/RuntimeException; {:try_start_180 .. :try_end_185} :catch_187
    .catch Lcom/baidu/mobstat/ej; {:try_start_180 .. :try_end_185} :catch_196

    goto/16 :goto_a

    :catch_187
    move-exception v0

    .line 300
    :try_start_188
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 280
    :cond_18f
    new-instance p1, Lcom/baidu/mobstat/ej;

    invoke-direct {p1, v3, v5}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_195
    .catch Lcom/baidu/mobstat/ej; {:try_start_188 .. :try_end_195} :catch_196

    :cond_195
    return-void

    :catch_196
    move-exception p1

    .line 322
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ej;)V

    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ef$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ei;
        }
    .end annotation

    .line 527
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 528
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    array-length v1, v1

    if-le v0, v1, :cond_f

    .line 529
    sget-object p1, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    return-object p1

    .line 530
    :cond_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_35

    const/4 v0, 0x0

    .line 534
    :goto_19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 535
    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v1, v2, :cond_2f

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 537
    sget-object p1, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    return-object p1

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 540
    :cond_32
    sget-object p1, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    return-object p1

    .line 531
    :cond_35
    new-instance p1, Lcom/baidu/mobstat/ei;

    sget-object v0, Lcom/baidu/mobstat/ef;->c:[B

    array-length v0, v0

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/ei;-><init>(I)V

    goto :goto_3f

    :goto_3e
    throw p1

    :goto_3f
    goto :goto_3e
.end method

.method private f(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 569
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_3c

    .line 570
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_24

    const-string v2, "too big to display"

    goto :goto_2d

    :cond_24
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    :cond_3c
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {p1, p0}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/net/InetSocketAddress;
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/ed;->c(Lcom/baidu/mobstat/ea;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 4

    .line 464
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method protected a(ILjava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_3f

    if-ne v0, v1, :cond_9

    .line 385
    monitor-exit p0

    return-void

    .line 388
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->f:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_10

    .line 390
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 392
    :cond_10
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->g:Ljava/nio/channels/ByteChannel;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_3f

    if-eqz v0, :cond_1e

    .line 394
    :try_start_14
    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18
    .catchall {:try_start_14 .. :try_end_17} :catchall_3f

    goto :goto_1e

    :catch_18
    move-exception v0

    .line 396
    :try_start_19
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3f

    .line 400
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_3f

    goto :goto_2a

    :catch_24
    move-exception p1

    .line 402
    :try_start_25
    iget-object p2, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {p2, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 404
    :goto_2a
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    if-eqz p1, :cond_31

    .line 405
    invoke-virtual {p1}, Lcom/baidu/mobstat/ef;->a()V

    .line 406
    :cond_31
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    .line 408
    sget-object p1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 409
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3f

    .line 410
    monitor-exit p0

    return-void

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(IZ)V
    .registers 4

    .line 413
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/baidu/mobstat/ej;)V
    .registers 4

    .line 468
    invoke-virtual {p1}, Lcom/baidu/mobstat/ej;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/ej;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/baidu/mobstat/es;)V
    .registers 5

    .line 516
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_17

    .line 517
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send frame: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    :cond_17
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/es;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(Lcom/baidu/mobstat/ev;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 545
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v2, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    if-eq v1, v2, :cond_b

    goto :goto_13

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "shall only be called once"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 548
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    .line 550
    invoke-interface {p1}, Lcom/baidu/mobstat/ev;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->t:Ljava/lang/String;

    if-nez v0, :cond_2c

    if-eqz p1, :cond_26

    goto :goto_2c

    .line 551
    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 555
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-interface {p1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;)V
    :try_end_33
    .catch Lcom/baidu/mobstat/ej; {:try_start_2c .. :try_end_33} :catch_5b
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_33} :catch_41

    .line 565
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    invoke-virtual {p1, v0, v1}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->a(Ljava/util/List;)V

    return-void

    :catch_41
    move-exception p1

    .line 560
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rejected because of"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/baidu/mobstat/el;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw p1

    .line 558
    :catch_5b
    move-exception p1

    new-instance p1, Lcom/baidu/mobstat/el;

    const-string v0, "Handshake data rejected by client."

    invoke-direct {p1, v0}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 9

    .line 114
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 116
    :cond_11
    :goto_11
    sget-boolean v1, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v1, :cond_55

    .line 117
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_35

    const-string v3, "too big to display"

    goto :goto_46

    :cond_35
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    :goto_46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_55
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v2, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    if-eq v1, v2, :cond_5f

    .line 120
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_97

    .line 122
    :cond_5f
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->c(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_97

    if-nez v0, :cond_80

    .line 123
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-ne v1, v2, :cond_80

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_7a

    goto :goto_80

    :cond_7a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_80
    :goto_80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 126
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_97

    .line 127
    :cond_8a
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 128
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    :cond_97
    :goto_97
    if-nez v0, :cond_b2

    .line 132
    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->d()Z

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->e()Z

    move-result v0

    if-nez v0, :cond_b2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_ac

    goto :goto_b2

    :cond_ac
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b2
    :goto_b2
    return-void
.end method

.method public a([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/eo;
        }
    .end annotation

    .line 498
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/ec;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b()V
    .registers 5

    .line 449
    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->g()Lcom/baidu/mobstat/ea$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    .line 450
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_47

    .line 451
    :cond_e
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    if-eqz v0, :cond_24

    .line 452
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/ec;->s:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    goto :goto_47

    .line 453
    :cond_24
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    const/16 v3, 0x3e8

    if-ne v0, v1, :cond_34

    .line 454
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_47

    .line 455
    :cond_34
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ef$a;->b:Lcom/baidu/mobstat/ef$a;

    if-ne v0, v1, :cond_42

    .line 456
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_47

    .line 458
    :cond_42
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    :goto_47
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method protected b(ILjava/lang/String;Z)V
    .registers 5

    monitor-enter p0

    .line 428
    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_7

    .line 429
    monitor-exit p0

    return-void

    .line 431
    :cond_7
    :try_start_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->r:Ljava/lang/Integer;

    .line 432
    iput-object p2, p0, Lcom/baidu/mobstat/ec;->q:Ljava/lang/String;

    .line 433
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->s:Ljava/lang/Boolean;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    .line 437
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_35

    .line 439
    :try_start_1d
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_35

    goto :goto_29

    :catch_23
    move-exception p1

    .line 441
    :try_start_24
    iget-object p2, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {p2, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 443
    :goto_29
    iget-object p1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    if-eqz p1, :cond_30

    .line 444
    invoke-virtual {p1}, Lcom/baidu/mobstat/ef;->a()V

    .line 445
    :cond_30
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_35

    .line 446
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/eo;
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 493
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    sget-object v2, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, p1, v1}, Lcom/baidu/mobstat/ef;->a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->a(Ljava/util/Collection;)V

    return-void

    .line 492
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .registers 3

    .line 608
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    if-nez v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 609
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public d()Z
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public e()Z
    .registers 2

    .line 619
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    return v0
.end method

.method public f()Z
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public g()Lcom/baidu/mobstat/ea$a;
    .registers 2

    .line 629
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 634
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 639
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
