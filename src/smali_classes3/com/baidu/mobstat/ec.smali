.class public Lcom/baidu/mobstat/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/ea;


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ef;",
            ">;"
        }
    .end annotation
.end field

.field public static b:I

.field public static c:Z

.field static final h:Z


# instance fields
.field public final d:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
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
    .registers 3

    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/baidu/mobstat/ec;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/baidu/mobstat/ec;->a:Ljava/util/List;

    .line 38
    const/16 v0, 0x4000

    sput v0, Lcom/baidu/mobstat/ec;->b:I

    .line 39
    sput-boolean v1, Lcom/baidu/mobstat/ec;->c:Z

    .line 42
    sget-object v0, Lcom/baidu/mobstat/ec;->a:Ljava/util/List;

    new-instance v1, Lcom/baidu/mobstat/eh;

    invoke-direct {v1}, Lcom/baidu/mobstat/eh;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/baidu/mobstat/ec;->a:Ljava/util/List;

    new-instance v1, Lcom/baidu/mobstat/eg;

    invoke-direct {v1}, Lcom/baidu/mobstat/eg;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ed;Lcom/baidu/mobstat/ef;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/baidu/mobstat/ec;->j:Z

    .line 67
    sget-object v0, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 70
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    .line 74
    iput-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    .line 79
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

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

    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
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
    sget-object v0, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    .line 105
    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {p2}, Lcom/baidu/mobstat/ef;->c()Lcom/baidu/mobstat/ef;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    .line 107
    :cond_2
    return-void
.end method

.method private a(Lcom/baidu/mobstat/ez;)V
    .registers 5

    .line 590
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_0

    .line 591
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open using draft: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/ez;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/mobstat/es;",
            ">;)V"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/baidu/mobstat/eo;

    invoke-direct {v0}, Lcom/baidu/mobstat/eo;-><init>()V

    throw v0

    .line 504
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es;

    .line 505
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/es;)V

    goto :goto_0

    .line 507
    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 584
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 585
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 587
    :cond_0
    return-void
.end method

.method private c(ILjava/lang/String;Z)V
    .registers 9

    const/16 v4, 0x3ee

    const/4 v3, -0x3

    const/4 v2, 0x0

    .line 330
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    if-eq v0, v1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_6

    .line 332
    if-ne p1, v4, :cond_2

    .line 333
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 334
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 335
    invoke-virtual {p0, p1, p2, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    if-eq v0, v1, :cond_4

    .line 340
    if-nez p3, :cond_3

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1, p2}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/mobstat/ej; {:try_start_0 .. :try_end_0} :catch_1

    .line 347
    :cond_3
    :goto_1
    :try_start_1
    new-instance v0, Lcom/baidu/mobstat/eq;

    invoke-direct {v0, p1, p2}, Lcom/baidu/mobstat/eq;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/es;)V
    :try_end_1
    .catch Lcom/baidu/mobstat/ej; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    .line 360
    :goto_3
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    .line 361
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    .line 362
    :cond_5
    sget-object v0, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    :try_start_2
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lcom/baidu/mobstat/ej; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 348
    :catch_1
    move-exception v0

    .line 349
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 350
    const-string v0, "generated frame is invalid"

    invoke-virtual {p0, v4, v0, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_2

    .line 354
    :cond_6
    if-ne p1, v3, :cond_8

    .line 355
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_7

    if-nez p3, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 356
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v3, p2, v0}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_3

    .line 358
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, v2}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_3
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v1, p1

    .line 155
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    if-nez v0, :cond_4

    .line 158
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/ec;->e(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ef$b;

    move-result-object v0

    .line 159
    sget-object v4, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;
    :try_end_0
    .catch Lcom/baidu/mobstat/ei; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v4, :cond_4

    .line 161
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    .line 162
    const/4 v0, -0x3

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/baidu/mobstat/ej; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/baidu/mobstat/ei; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v0, v2

    .line 219
    :goto_2
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

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
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 153
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    move-object v1, v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const/16 v0, 0x3ee

    :try_start_2
    const-string v3, "remote peer closed connection before flashpolicy could be transmitted"

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V
    :try_end_2
    .catch Lcom/baidu/mobstat/ei; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 202
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_8

    .line 203
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v3}, Lcom/baidu/mobstat/ei;->a()I

    move-result v0

    .line 205
    if-nez v0, :cond_7

    .line 206
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    .line 210
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    .line 212
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    :goto_3
    move v0, v2

    .line 219
    goto :goto_2

    .line 172
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    sget-object v4, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne v0, v4, :cond_3

    .line 173
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v4, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    invoke-virtual {v0, v4}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ea$b;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ef;->d(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ez;

    move-result-object v0

    .line 175
    instance-of v4, v0, Lcom/baidu/mobstat/fb;

    if-nez v4, :cond_5

    .line 176
    const/16 v0, 0x3ea

    const-string v3, "wrong http function"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 177
    goto/16 :goto_2

    .line 179
    :cond_5
    check-cast v0, Lcom/baidu/mobstat/fb;

    .line 180
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v5, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-virtual {v4, v5, v0}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)Lcom/baidu/mobstat/ef$b;

    move-result-object v4

    .line 181
    sget-object v5, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;
    :try_end_3
    .catch Lcom/baidu/mobstat/el; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/baidu/mobstat/ei; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v4, v5, :cond_6

    .line 183
    :try_start_4
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    iget-object v5, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-interface {v4, p0, v5, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)V
    :try_end_4
    .catch Lcom/baidu/mobstat/ej; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/baidu/mobstat/el; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/baidu/mobstat/ei; {:try_start_4 .. :try_end_4} :catch_1

    .line 192
    :try_start_5
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ez;)V

    move v0, v3

    .line 193
    goto/16 :goto_2

    .line 184
    :catch_2
    move-exception v0

    .line 185
    invoke-virtual {v0}, Lcom/baidu/mobstat/ej;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/baidu/mobstat/ej;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 186
    goto/16 :goto_2

    .line 187
    :catch_3
    move-exception v0

    .line 188
    iget-object v3, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v3, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 189
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    move v0, v2

    .line 190
    goto/16 :goto_2

    .line 195
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3ea

    const-string v4, "draft "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " refuses handshake"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;)V
    :try_end_5
    .catch Lcom/baidu/mobstat/el; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/baidu/mobstat/ei; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 198
    :catch_4
    move-exception v0

    .line 199
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ej;)V
    :try_end_6
    .catch Lcom/baidu/mobstat/ei; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 208
    :cond_7
    sget-boolean v4, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/baidu/mobstat/ei;->a()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v3, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :cond_8
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto/16 :goto_3
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ef;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es;

    .line 228
    sget-boolean v1, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v1, :cond_0

    .line 229
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matched frame: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v1

    .line 231
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->d()Z

    move-result v2

    .line 233
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v5, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-ne v4, v5, :cond_2

    .line 327
    :cond_1
    :goto_1
    return-void

    .line 236
    :cond_2
    sget-object v4, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    if-ne v1, v4, :cond_5

    .line 237
    const/16 v1, 0x3ed

    .line 238
    instance-of v2, v0, Lcom/baidu/mobstat/ep;

    if-eqz v2, :cond_15

    .line 240
    check-cast v0, Lcom/baidu/mobstat/ep;

    .line 241
    invoke-interface {v0}, Lcom/baidu/mobstat/ep;->a()I

    move-result v1

    .line 242
    invoke-interface {v0}, Lcom/baidu/mobstat/ep;->b()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 244
    :goto_2
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v4, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-ne v1, v4, :cond_3

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/baidu/mobstat/ej; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->a(Lcom/baidu/mobstat/ej;)V

    goto :goto_1

    .line 249
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v1}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v1

    sget-object v4, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    if-ne v1, v4, :cond_4

    .line 250
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    goto :goto_0

    .line 252
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/baidu/mobstat/ec;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 255
    :cond_5
    sget-object v4, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    if-ne v1, v4, :cond_6

    .line 256
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V

    goto :goto_0

    .line 258
    :cond_6
    sget-object v4, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    if-ne v1, v4, :cond_7

    .line 259
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->c(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V

    goto/16 :goto_0

    .line 261
    :cond_7
    if-eqz v2, :cond_8

    sget-object v4, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne v1, v4, :cond_11

    .line 262
    :cond_8
    sget-object v4, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-eq v1, v4, :cond_b

    .line 263
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v2, :cond_9

    .line 264
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "Previous continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 265
    :cond_9
    iput-object v0, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    .line 283
    :cond_a
    :goto_3
    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_f

    .line 284
    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/fe;->b(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 285
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw v0

    .line 266
    :cond_b
    if-eqz v2, :cond_e

    .line 267
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-nez v2, :cond_c

    .line 268
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 270
    :cond_c
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v2}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v2

    sget-object v4, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v2, v4, :cond_d

    .line 272
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v2}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x40

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 273
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v4, v0}, Lcom/baidu/mobstat/es;->a(Lcom/baidu/mobstat/es;)V

    .line 274
    iget-object v4, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v4}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 275
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw v0

    .line 278
    :cond_d
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    goto :goto_3

    .line 279
    :cond_e
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-nez v2, :cond_a

    .line 280
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence was not started."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 289
    :cond_f
    sget-object v2, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_10

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v1}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v1

    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    if-ne v1, v2, :cond_10

    .line 291
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    invoke-interface {v1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x40

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

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

    if-nez v1, :cond_10

    .line 294
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ej;-><init>(I)V

    throw v0
    :try_end_1
    .catch Lcom/baidu/mobstat/ej; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :cond_10
    :try_start_2
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/es;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/baidu/mobstat/ej; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 300
    :try_start_3
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 303
    :cond_11
    iget-object v2, p0, Lcom/baidu/mobstat/ec;->n:Lcom/baidu/mobstat/es;

    if-eqz v2, :cond_12

    .line 304
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "Continuous frame sequence not completed."

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 305
    :cond_12
    sget-object v2, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;
    :try_end_3
    .catch Lcom/baidu/mobstat/ej; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v1, v2, :cond_13

    .line 307
    :try_start_4
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/baidu/mobstat/ej; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 308
    :catch_2
    move-exception v0

    .line 309
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 311
    :cond_13
    sget-object v2, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;
    :try_end_5
    .catch Lcom/baidu/mobstat/ej; {:try_start_5 .. :try_end_5} :catch_0

    if-ne v1, v2, :cond_14

    .line 313
    :try_start_6
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/nio/ByteBuffer;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/baidu/mobstat/ej; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 314
    :catch_3
    move-exception v0

    .line 315
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 318
    :cond_14
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "non control or continious frame expected"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lcom/baidu/mobstat/ej; {:try_start_7 .. :try_end_7} :catch_0

    :cond_15
    const-string v2, ""

    move v0, v1

    goto/16 :goto_2
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

    if-le v0, v1, :cond_0

    .line 529
    sget-object v0, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    .line 540
    :goto_0
    return-object v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 531
    new-instance v0, Lcom/baidu/mobstat/ei;

    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ei;-><init>(I)V

    throw v0

    .line 534
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    sget-object v1, Lcom/baidu/mobstat/ef;->c:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-eq v1, v2, :cond_2

    .line 536
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 537
    sget-object v0, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    goto :goto_0

    .line 534
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_3
    sget-object v0, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    goto :goto_0
.end method

.method private f(Ljava/nio/ByteBuffer;)V
    .registers 6

    .line 569
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_0

    .line 570
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_1

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;)V

    .line 581
    return-void

    .line 570
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
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

    .line 465
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4

    .line 370
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    .line 371
    return-void
.end method

.method protected a(ILjava/lang/String;Z)V
    .registers 6

    .line 384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 410
    :goto_0
    monitor-exit p0

    return-void

    .line 388
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->f:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->f:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->g:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 394
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->g:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->a()V

    .line 406
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    .line 408
    sget-object v0, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    .line 409
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->d:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    :try_start_5
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    goto :goto_1

    .line 401
    :catch_1
    move-exception v0

    .line 402
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method protected a(IZ)V
    .registers 4

    .line 413
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    .line 414
    return-void
.end method

.method public a(Lcom/baidu/mobstat/ej;)V
    .registers 5

    .line 468
    invoke-virtual {p1}, Lcom/baidu/mobstat/ej;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/mobstat/ej;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/mobstat/ec;->c(ILjava/lang/String;Z)V

    .line 469
    return-void
.end method

.method public a(Lcom/baidu/mobstat/es;)V
    .registers 5

    .line 516
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/es;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->f(Ljava/nio/ByteBuffer;)V

    .line 519
    return-void
.end method

.method public a(Lcom/baidu/mobstat/ev;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 545
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "shall only be called once"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    .line 550
    invoke-interface {p1}, Lcom/baidu/mobstat/ev;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->t:Ljava/lang/String;

    .line 551
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->t:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 555
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    invoke-interface {v0, p0, v1}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Lcom/baidu/mobstat/eu;)V
    :try_end_0
    .catch Lcom/baidu/mobstat/ej; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 565
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;

    iget-object v2, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->a(Ljava/util/List;)V

    .line 566
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 558
    new-instance v0, Lcom/baidu/mobstat/el;

    const-string v1, "Handshake data rejected by client."

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :catch_1
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V

    .line 561
    new-instance v1, Lcom/baidu/mobstat/el;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 114
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    sget-boolean v0, Lcom/baidu/mobstat/ec;->c:Z

    if-eqz v0, :cond_1

    .line 117
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_3

    const-string v0, "too big to display"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    if-eq v0, v1, :cond_4

    .line 120
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    .line 132
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->e()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->c(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 125
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->o:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 133
    :cond_7
    return-void
.end method

.method public a([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/eo;
        }
    .end annotation

    .line 498
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ec;->b(Ljava/nio/ByteBuffer;)V

    .line 499
    return-void
.end method

.method public b()V
    .registers 5

    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/baidu/mobstat/ec;->g()Lcom/baidu/mobstat/ea$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    .line 460
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->r:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mobstat/ec;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/ec;->s:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    if-ne v0, v1, :cond_2

    .line 454
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->b()Lcom/baidu/mobstat/ef$a;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/ef$a;->b:Lcom/baidu/mobstat/ef$a;

    if-ne v0, v1, :cond_3

    .line 456
    invoke-virtual {p0, v3, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_0

    .line 458
    :cond_3
    const/16 v0, 0x3ee

    invoke-virtual {p0, v0, v2}, Lcom/baidu/mobstat/ec;->a(IZ)V

    goto :goto_0
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/ec;->a(ILjava/lang/String;Z)V

    .line 425
    return-void
.end method

.method protected b(ILjava/lang/String;Z)V
    .registers 6

    .line 428
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    :cond_0
    :try_start_1
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :try_start_2
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/baidu/mobstat/ed;->b(Lcom/baidu/mobstat/ea;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    invoke-virtual {v0}, Lcom/baidu/mobstat/ef;->a()V

    .line 445
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ec;->p:Lcom/baidu/mobstat/eu;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    :try_start_4
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->i:Lcom/baidu/mobstat/ed;

    invoke-interface {v1, p0, v0}, Lcom/baidu/mobstat/ed;->a(Lcom/baidu/mobstat/ea;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/baidu/mobstat/eo;
        }
    .end annotation

    .line 491
    if-nez p1, :cond_0

    .line 492
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/baidu/mobstat/ec;->l:Lcom/baidu/mobstat/ef;

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->m:Lcom/baidu/mobstat/ea$b;

    sget-object v2, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/baidu/mobstat/ef;->a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ec;->a(Ljava/util/Collection;)V

    .line 494
    return-void

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .registers 3

    .line 608
    sget-boolean v0, Lcom/baidu/mobstat/ec;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/ec;->j:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .registers 3

    .line 614
    iget-object v0, p0, Lcom/baidu/mobstat/ec;->k:Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
