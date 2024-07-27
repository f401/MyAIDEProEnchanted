.class public final Lcom/a/b/c/c/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/a;

.field private final b:Lcom/a/b/c/c/aq;

.field private final c:Lcom/a/b/c/c/aq;

.field private final d:Lcom/a/b/c/c/aq;

.field private final e:Lcom/a/b/c/c/aq;

.field private final f:Lcom/a/b/c/c/bc;

.field private final g:Lcom/a/b/c/c/be;

.field private final h:Lcom/a/b/c/c/aw;

.field private final i:Lcom/a/b/c/c/ab;

.field private final j:Lcom/a/b/c/c/ap;

.field private final k:Lcom/a/b/c/c/m;

.field private final l:Lcom/a/b/c/c/aq;

.field private final m:Lcom/a/b/c/c/h;

.field private final n:Lcom/a/b/c/c/an;

.field private final o:Lcom/a/b/c/c/aq;

.field private final p:Lcom/a/b/c/c/ad;

.field private final q:[Lcom/a/b/c/c/ax;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Lcom/a/b/c/a;)V
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/c/c/t;->a:Lcom/a/b/c/a;

    new-instance v0, Lcom/a/b/c/c/ad;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/ad;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->p:Lcom/a/b/c/c/ad;

    new-instance v0, Lcom/a/b/c/c/aq;

    sget-object v1, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    invoke-direct {v0, v5, p0, v4, v1}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->c:Lcom/a/b/c/c/aq;

    new-instance v0, Lcom/a/b/c/c/aq;

    const-string v1, "word_data"

    sget-object v2, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    invoke-direct {v0, v1, p0, v4, v2}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    new-instance v0, Lcom/a/b/c/c/aq;

    const-string v1, "string_data"

    sget-object v2, Lcom/a/b/c/c/as;->c:Lcom/a/b/c/c/as;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->e:Lcom/a/b/c/c/aq;

    new-instance v0, Lcom/a/b/c/c/aq;

    sget-object v1, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    invoke-direct {v0, v5, p0, v3, v1}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->l:Lcom/a/b/c/c/aq;

    new-instance v0, Lcom/a/b/c/c/aq;

    const-string v1, "byte_data"

    sget-object v2, Lcom/a/b/c/c/as;->b:Lcom/a/b/c/c/as;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->o:Lcom/a/b/c/c/aq;

    new-instance v0, Lcom/a/b/c/c/bc;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/bc;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    new-instance v0, Lcom/a/b/c/c/be;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/be;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    new-instance v0, Lcom/a/b/c/c/aw;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/aw;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    new-instance v0, Lcom/a/b/c/c/ab;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/ab;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    new-instance v0, Lcom/a/b/c/c/ap;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/ap;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    new-instance v0, Lcom/a/b/c/c/m;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/m;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    new-instance v0, Lcom/a/b/c/c/aq;

    const-string v1, "map"

    sget-object v2, Lcom/a/b/c/c/as;->a:Lcom/a/b/c/c/as;

    invoke-direct {v0, v1, p0, v4, v2}, Lcom/a/b/c/c/aq;-><init>(Ljava/lang/String;Lcom/a/b/c/c/t;ILcom/a/b/c/c/as;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/a/b/c/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/b/c/c/h;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/h;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    new-instance v0, Lcom/a/b/c/c/an;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/an;-><init>(Lcom/a/b/c/c/t;)V

    iput-object v0, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/a/b/c/c/ax;

    iget-object v1, p0, Lcom/a/b/c/c/t;->p:Lcom/a/b/c/c/ad;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/a/b/c/c/t;->c:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/a/b/c/c/t;->e:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/a/b/c/c/t;->o:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/a/b/c/c/t;->l:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/c/c/t;->r:I

    const/16 v0, 0x4f

    iput v0, p0, Lcom/a/b/c/c/t;->s:I

    return-void

    :cond_0
    iput-object v5, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    iput-object v5, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/a/b/c/c/ax;

    iget-object v1, p0, Lcom/a/b/c/c/t;->p:Lcom/a/b/c/c/ad;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/a/b/c/c/t;->c:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/a/b/c/c/t;->e:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/a/b/c/c/t;->o:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/a/b/c/c/t;->l:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    goto :goto_0
.end method

.method private a(ZZLcom/a/b/c/c/u;)Lcom/a/b/g/h;
    .registers 12

    const/16 v2, 0x1a

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    invoke-virtual {v1}, Lcom/a/b/c/c/m;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->l:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->a:Lcom/a/b/c/a;

    invoke-virtual {v1, v2}, Lcom/a/b/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    invoke-virtual {v1}, Lcom/a/b/c/c/h;->i()V

    :cond_0
    iget-object v1, p0, Lcom/a/b/c/c/t;->o:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->a:Lcom/a/b/c/a;

    invoke-virtual {v1, v2}, Lcom/a/b/c/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    invoke-virtual {v1}, Lcom/a/b/c/c/an;->i()V

    :cond_1
    iget-object v1, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    invoke-virtual {v1}, Lcom/a/b/c/c/ap;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    invoke-virtual {v1}, Lcom/a/b/c/c/ab;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    invoke-virtual {v1}, Lcom/a/b/c/c/aw;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->c:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    invoke-virtual {v1}, Lcom/a/b/c/c/be;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    invoke-virtual {v1}, Lcom/a/b/c/c/bc;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->e:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->p:Lcom/a/b/c/c/ad;

    invoke-virtual {v1}, Lcom/a/b/c/c/ad;->i()V

    iget-object v1, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    array-length v5, v1

    move v1, v3

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_3

    iput v1, p0, Lcom/a/b/c/c/t;->r:I

    if-nez p3, :cond_9

    iget v1, p0, Lcom/a/b/c/c/t;->r:I

    new-array v1, v1, [B

    :goto_1
    new-instance v4, Lcom/a/b/g/h;

    invoke-direct {v4, v1}, Lcom/a/b/g/h;-><init>([B)V

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/a/b/c/c/t;->s:I

    invoke-virtual {v4, v2, p2}, Lcom/a/b/g/h;->a(IZ)V

    :cond_2
    :goto_2
    if-lt v3, v5, :cond_a

    invoke-virtual {v4}, Lcom/a/b/g/h;->g()I

    move-result v2

    iget v3, p0, Lcom/a/b/c/c/t;->r:I

    if-eq v2, v3, :cond_f

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "foreshortened write"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v2, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    aget-object v2, v2, v4

    iget-object v6, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    if-eq v2, v6, :cond_4

    iget-object v6, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->b()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v1}, Lcom/a/b/c/c/ax;->b(I)I

    move-result v6

    if-ge v6, v1, :cond_6

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bogus placement for section "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    if-ne v2, v1, :cond_7

    iget-object v1, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    iget-object v7, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    invoke-static {v1, v7}, Lcom/a/b/c/c/ai;->a([Lcom/a/b/c/c/ax;Lcom/a/b/c/c/aq;)V

    iget-object v1, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->i()V

    :cond_7
    instance-of v1, v2, Lcom/a/b/c/c/aq;

    if-eqz v1, :cond_8

    move-object v0, v2

    check-cast v0, Lcom/a/b/c/c/aq;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/a/b/c/c/aq;->d()V

    :cond_8
    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->f_()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v6

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while writing section "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v1

    throw v1

    :cond_9
    iget v1, p0, Lcom/a/b/c/c/t;->r:I

    invoke-virtual {p3, v1}, Lcom/a/b/c/c/u;->a(I)[B

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    :try_start_1
    iget-object v2, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    aget-object v2, v2, v3

    iget-object v6, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    if-eq v2, v6, :cond_b

    iget-object v6, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    if-ne v2, v6, :cond_c

    :cond_b
    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->b()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v2}, Lcom/a/b/c/c/ax;->h()I

    move-result v6

    invoke-virtual {v4}, Lcom/a/b/g/h;->g()I

    move-result v7

    sub-int/2addr v6, v7

    if-gez v6, :cond_d

    new-instance v1, Lcom/a/a/a/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "excess write of "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/a/a/a/b;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    instance-of v2, v1, Lcom/a/a/a/b;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/a/a/a/b;

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "...while writing section "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/b;->a(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/a/b/g/h;->g(I)V

    invoke-virtual {v2, v4}, Lcom/a/b/c/c/ax;->c(Lcom/a/b/g/a;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :cond_e
    new-instance v2, Lcom/a/a/a/b;

    invoke-direct {v2, v1}, Lcom/a/a/a/b;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_5

    :cond_f
    invoke-virtual {v4}, Lcom/a/b/g/h;->g()I

    move-result v2

    invoke-static {v1, v2}, Lcom/a/b/c/c/t;->a([BI)V

    invoke-virtual {v4}, Lcom/a/b/g/h;->g()I

    move-result v2

    invoke-static {v1, v2}, Lcom/a/b/c/c/t;->b([BI)V

    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    sget-object v2, Lcom/a/b/c/c/ah;->o:Lcom/a/b/c/c/ah;

    const-string v3, "\nmethod code index:\n\n"

    invoke-virtual {v1, v4, v2, v3}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/g/a;Lcom/a/b/c/c/ah;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/c/c/t;->s()Lcom/a/b/c/c/ay;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/a/b/c/c/ay;->a(Lcom/a/b/g/a;)V

    invoke-virtual {v4}, Lcom/a/b/g/h;->h()V

    :cond_10
    return-object v4
.end method

.method private static a([BI)V
    .registers 6

    const/16 v3, 0x14

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/16 v1, 0x20

    add-int/lit8 v2, p1, -0x20

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    if-eq v0, v3, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected digest write: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static b([BI)V
    .registers 5

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0xc

    add-int/lit8 v2, p1, -0xc

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x8

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    const/16 v1, 0x9

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/16 v1, 0xa

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/16 v1, 0xb

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/c/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->a:Lcom/a/b/c/a;

    return-object v0
.end method

.method public a(Lcom/a/b/c/c/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/m;->a(Lcom/a/b/c/c/l;)V

    return-void
.end method

.method a(Lcom/a/b/e/c/a;)V
    .registers 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    check-cast p1, Lcom/a/b/e/c/ad;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/c/c/bb;

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    check-cast p1, Lcom/a/b/e/c/ae;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/c/c/bd;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/b/e/c/f;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    check-cast p1, Lcom/a/b/e/c/f;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/ap;->a(Lcom/a/b/e/c/f;)Lcom/a/b/c/c/ao;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/a/b/e/c/n;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    check-cast p1, Lcom/a/b/e/c/n;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/a/b/e/c/m;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    check-cast p1, Lcom/a/b/e/c/m;

    invoke-virtual {p1}, Lcom/a/b/e/c/m;->i()Lcom/a/b/e/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    check-cast p1, Lcom/a/b/e/c/ab;

    invoke-virtual {p1}, Lcom/a/b/e/c/ab;->i()Lcom/a/b/e/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/aw;->a(Lcom/a/b/e/d/a;)Lcom/a/b/c/c/av;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/a/b/e/c/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    check-cast p1, Lcom/a/b/e/c/y;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/an;->a(Lcom/a/b/e/c/y;)V

    goto :goto_0
.end method

.method public a(Ljava/io/Writer;Z)[B
    .registers 5

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/a/b/c/c/t;->a(ZZLcom/a/b/c/c/u;)Lcom/a/b/g/h;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/a/b/g/h;->a(Ljava/io/Writer;)V

    :cond_0
    invoke-virtual {v1}, Lcom/a/b/g/h;->e()[B

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .registers 3

    iget v0, p0, Lcom/a/b/c/c/t;->r:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/a/b/c/c/t;->r:I

    return v0
.end method

.method b(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;
    .registers 4

    instance-of v0, p1, Lcom/a/b/e/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/bc;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/a/b/e/c/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/a/b/e/c/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/ap;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/a/b/e/c/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/b/e/c/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    check-cast p1, Lcom/a/b/e/c/m;

    invoke-virtual {p1}, Lcom/a/b/e/c/m;->i()Lcom/a/b/e/c/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/ab;->a(Lcom/a/b/e/c/n;)Lcom/a/b/c/c/aa;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/a/b/e/c/ab;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/aw;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/a/b/e/c/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/an;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/a/b/e/c/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/h;->a(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->e:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method d()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method e()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->c:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method f()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method g()Lcom/a/b/c/c/bc;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->f:Lcom/a/b/c/c/bc;

    return-object v0
.end method

.method public h()Lcom/a/b/c/c/m;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->k:Lcom/a/b/c/c/m;

    return-object v0
.end method

.method i()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->l:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method public j()Lcom/a/b/c/c/be;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->g:Lcom/a/b/c/c/be;

    return-object v0
.end method

.method k()Lcom/a/b/c/c/aw;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->h:Lcom/a/b/c/c/aw;

    return-object v0
.end method

.method public l()Lcom/a/b/c/c/ab;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->i:Lcom/a/b/c/c/ab;

    return-object v0
.end method

.method public m()Lcom/a/b/c/c/ap;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->j:Lcom/a/b/c/c/ap;

    return-object v0
.end method

.method public n()Lcom/a/b/c/c/an;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->n:Lcom/a/b/c/c/an;

    return-object v0
.end method

.method public o()Lcom/a/b/c/c/h;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->m:Lcom/a/b/c/c/h;

    return-object v0
.end method

.method p()Lcom/a/b/c/c/aq;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->o:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method q()Lcom/a/b/c/c/ax;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->b:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method r()Lcom/a/b/c/c/ax;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/t;->d:Lcom/a/b/c/c/aq;

    return-object v0
.end method

.method public s()Lcom/a/b/c/c/ay;
    .registers 6

    new-instance v1, Lcom/a/b/c/c/ay;

    invoke-direct {v1}, Lcom/a/b/c/c/ay;-><init>()V

    iget-object v2, p0, Lcom/a/b/c/c/t;->q:[Lcom/a/b/c/c/ax;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lcom/a/b/c/c/ay;->a(Lcom/a/b/c/c/ax;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
