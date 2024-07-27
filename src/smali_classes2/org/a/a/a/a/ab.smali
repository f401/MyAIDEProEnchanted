.class public Lorg/a/a/a/a/ab;
.super Lorg/a/a/a/a/m;


# static fields
.field public static m:I

.field static final n:Z


# instance fields
.field protected final f:Lorg/a/a/a/p;

.field protected g:I

.field protected h:I

.field protected i:I

.field public final j:[Lorg/a/a/a/b/a;

.field protected k:I

.field protected final l:Lorg/a/a/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/a/a/a/a/ab;->n:Z

    sput v1, Lorg/a/a/a/a/ab;->m:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/a/a/a/p;Lorg/a/a/a/a/a;[Lorg/a/a/a/b/a;Lorg/a/a/a/a/ay;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p2, p4}, Lorg/a/a/a/a/m;-><init>(Lorg/a/a/a/a/a;Lorg/a/a/a/a/ay;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->h:I

    iput v1, p0, Lorg/a/a/a/a/ab;->i:I

    iput v1, p0, Lorg/a/a/a/a/ab;->k:I

    new-instance v0, Lorg/a/a/a/a/ac;

    invoke-direct {v0}, Lorg/a/a/a/a/ac;-><init>()V

    iput-object v0, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    iput-object p3, p0, Lorg/a/a/a/a/ab;->j:[Lorg/a/a/a/b/a;

    iput-object p1, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    return-void
.end method


# virtual methods
.method protected a(Lorg/a/a/a/a/ac;Lorg/a/a/a/c;Lorg/a/a/a/a/c;I)I
    .registers 12

    const/4 v0, -0x1

    iget-object v1, p1, Lorg/a/a/a/a/ac;->d:Lorg/a/a/a/b/d;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lorg/a/a/a/a/ac;->d:Lorg/a/a/a/b/d;

    iget-object v2, v0, Lorg/a/a/a/b/d;->f:Lorg/a/a/a/a/ae;

    iget v3, p0, Lorg/a/a/a/a/ab;->g:I

    iget v4, p1, Lorg/a/a/a/a/ac;->a:I

    iget v5, p1, Lorg/a/a/a/a/ac;->b:I

    iget v6, p1, Lorg/a/a/a/a/ac;->c:I

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/ae;IIII)V

    iget-object v0, p1, Lorg/a/a/a/a/ac;->d:Lorg/a/a/a/b/d;

    iget v0, v0, Lorg/a/a/a/b/d;->e:I

    :cond_0
    return v0

    :cond_1
    if-ne p4, v0, :cond_2

    invoke-interface {p2}, Lorg/a/a/a/c;->b()I

    move-result v1

    iget v2, p0, Lorg/a/a/a/a/ab;->g:I

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v0, Lorg/a/a/a/q;

    iget-object v1, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    iget v2, p0, Lorg/a/a/a/a/ab;->g:I

    invoke-direct {v0, v1, p2, v2, p3}, Lorg/a/a/a/q;-><init>(Lorg/a/a/a/p;Lorg/a/a/a/c;ILorg/a/a/a/a/c;)V

    throw v0
.end method

.method protected a(Lorg/a/a/a/c;)I
    .registers 5

    iget-object v0, p0, Lorg/a/a/a/a/ab;->d:Lorg/a/a/a/a/a;

    iget-object v0, v0, Lorg/a/a/a/a/a;->j:Ljava/util/List;

    iget v1, p0, Lorg/a/a/a/a/ab;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    iget v1, p0, Lorg/a/a/a/a/ab;->k:I

    invoke-virtual {p0, p1, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/n;)Lorg/a/a/a/a/c;

    move-result-object v0

    iget-boolean v1, v0, Lorg/a/a/a/a/c;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/a/a/a/a/c;->f:Z

    invoke-virtual {p0, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/c;)Lorg/a/a/a/b/d;

    move-result-object v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/a/a/a/a/ab;->j:[Lorg/a/a/a/b/a;

    iget v2, p0, Lorg/a/a/a/a/ab;->k:I

    aget-object v1, v1, v2

    iput-object v0, v1, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/b/d;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/a/a/a/c;I)I
    .registers 6

    sget v0, Lorg/a/a/a/a/ab;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/a/a/a/a/ab;->m:I

    iput p2, p0, Lorg/a/a/a/a/ab;->k:I

    invoke-interface {p1}, Lorg/a/a/a/c;->d()I

    move-result v1

    :try_start_0
    invoke-interface {p1}, Lorg/a/a/a/c;->b()I

    move-result v0

    iput v0, p0, Lorg/a/a/a/a/ab;->g:I

    iget-object v0, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    invoke-virtual {v0}, Lorg/a/a/a/a/ac;->a()V

    iget-object v0, p0, Lorg/a/a/a/a/ab;->j:[Lorg/a/a/a/b/a;

    aget-object v0, v0, p2

    iget-object v2, v0, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {p1, v1}, Lorg/a/a/a/c;->a(I)V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v0, v0, Lorg/a/a/a/b/a;->b:Lorg/a/a/a/b/d;

    invoke-virtual {p0, p1, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/b/d;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    invoke-interface {p1, v1}, Lorg/a/a/a/c;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1, v1}, Lorg/a/a/a/c;->a(I)V

    throw v0
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/b/d;)I
    .registers 8

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-boolean v0, p2, Lorg/a/a/a/b/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    invoke-virtual {p0, v0, p1, p2}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/ac;Lorg/a/a/a/c;Lorg/a/a/a/b/d;)V

    :cond_0
    invoke-interface {p1, v4}, Lorg/a/a/a/c;->c(I)I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/b/d;I)Lorg/a/a/a/b/d;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, v1}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/b/d;I)Lorg/a/a/a/b/d;

    move-result-object v0

    :cond_1
    sget-object v2, Lorg/a/a/a/a/ab;->c:Lorg/a/a/a/b/d;

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    iget-object v2, p2, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    invoke-virtual {p0, v0, p1, v2, v1}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/ac;Lorg/a/a/a/c;Lorg/a/a/a/a/c;I)I

    move-result v0

    return v0

    :cond_3
    if-eq v1, v3, :cond_4

    invoke-virtual {p0, p1}, Lorg/a/a/a/a/ab;->b(Lorg/a/a/a/c;)V

    :cond_4
    iget-boolean v2, v0, Lorg/a/a/a/b/d;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    invoke-virtual {p0, v2, p1, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/ac;Lorg/a/a/a/c;Lorg/a/a/a/b/d;)V

    if-eq v1, v3, :cond_2

    :cond_5
    invoke-interface {p1, v4}, Lorg/a/a/a/c;->c(I)I

    move-result v1

    move-object p2, v0

    goto :goto_0
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/bl;Lorg/a/a/a/a/c;ZZ)Lorg/a/a/a/a/aa;
    .registers 10

    invoke-virtual {p3}, Lorg/a/a/a/a/bl;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    move-object v0, p3

    check-cast v0, Lorg/a/a/a/a/bc;

    iget-object v1, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    iget-object v0, v0, Lorg/a/a/a/a/bc;->c:Lorg/a/a/a/a/n;

    iget v0, v0, Lorg/a/a/a/a/n;->c:I

    invoke-static {v1, v0}, Lorg/a/a/a/a/bg;->b(Lorg/a/a/a/a/ax;I)Lorg/a/a/a/a/bg;

    move-result-object v1

    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v2, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Precedence predicates are not supported in lexers."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move-object v0, p3

    check-cast v0, Lorg/a/a/a/a/aw;

    const/4 v1, 0x1

    iput-boolean v1, p4, Lorg/a/a/a/a/c;->f:Z

    iget v1, v0, Lorg/a/a/a/a/aw;->a:I

    iget v0, v0, Lorg/a/a/a/a/aw;->b:I

    invoke-virtual {p0, p1, v1, v0, p5}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v1, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Lorg/a/a/a/a/ax;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Lorg/a/a/a/a/aa;->c()Lorg/a/a/a/a/ae;

    move-result-object v1

    iget-object v0, p0, Lorg/a/a/a/a/ab;->d:Lorg/a/a/a/a/a;

    iget-object v2, v0, Lorg/a/a/a/a/a;->i:[Lorg/a/a/a/a/ad;

    move-object v0, p3

    check-cast v0, Lorg/a/a/a/a/q;

    iget v0, v0, Lorg/a/a/a/a/q;->b:I

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lorg/a/a/a/a/ae;->a(Lorg/a/a/a/a/ae;Lorg/a/a/a/a/ad;)Lorg/a/a/a/a/ae;

    move-result-object v1

    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v2, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ae;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v1, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v1, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)V

    goto :goto_0

    :pswitch_6
    if-eqz p6, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-virtual {p3, v0, v1, v2}, Lorg/a/a/a/a/bl;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v1, p3, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    invoke-direct {v0, p2, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/a/n;)Lorg/a/a/a/a/c;
    .registers 12

    const/4 v4, 0x0

    sget-object v8, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    new-instance v3, Lorg/a/a/a/a/ar;

    invoke-direct {v3}, Lorg/a/a/a/a/ar;-><init>()V

    move v7, v4

    :goto_0
    invoke-virtual {p2}, Lorg/a/a/a/a/n;->a()I

    move-result v0

    if-lt v7, v0, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Lorg/a/a/a/a/aa;

    invoke-virtual {p2, v7}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v0

    iget-object v0, v0, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    add-int/lit8 v1, v7, 0x1

    invoke-direct {v2, v0, v1, v8}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/n;ILorg/a/a/a/a/ax;)V

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/c;ZZZ)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method

.method protected a(Lorg/a/a/a/a/bl;I)Lorg/a/a/a/a/n;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x10ffff

    invoke-virtual {p1, p2, v0, v1}, Lorg/a/a/a/a/bl;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/a/a/a/a/bl;->f:Lorg/a/a/a/a/n;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lorg/a/a/a/a/c;)Lorg/a/a/a/b/d;
    .registers 8

    const/4 v5, 0x1

    sget-boolean v0, Lorg/a/a/a/a/ab;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lorg/a/a/a/a/c;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v2, Lorg/a/a/a/b/d;

    invoke-direct {v2, p1}, Lorg/a/a/a/b/d;-><init>(Lorg/a/a/a/a/c;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/a/a/a/a/c;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    if-eqz v1, :cond_2

    iput-boolean v5, v2, Lorg/a/a/a/b/d;->d:Z

    move-object v0, v1

    check-cast v0, Lorg/a/a/a/a/aa;

    invoke-virtual {v0}, Lorg/a/a/a/a/aa;->c()Lorg/a/a/a/a/ae;

    move-result-object v0

    iput-object v0, v2, Lorg/a/a/a/b/d;->f:Lorg/a/a/a/a/ae;

    iget-object v0, p0, Lorg/a/a/a/a/ab;->d:Lorg/a/a/a/a/a;

    iget-object v0, v0, Lorg/a/a/a/a/a;->h:[I

    iget-object v1, v1, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    iget v1, v1, Lorg/a/a/a/a/n;->d:I

    aget v0, v0, v1

    iput v0, v2, Lorg/a/a/a/b/d;->e:I

    :cond_2
    iget-object v0, p0, Lorg/a/a/a/a/ab;->j:[Lorg/a/a/a/b/a;

    iget v1, p0, Lorg/a/a/a/a/ab;->k:I

    aget-object v1, v0, v1

    iget-object v3, v1, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/b/d;

    if-eqz v0, :cond_4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/b;

    iget-object v4, v0, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    instance-of v4, v4, Lorg/a/a/a/a/bb;

    if-eqz v4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, v1, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, v2, Lorg/a/a/a/b/d;->a:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/a/a/a/a/c;->a(Z)V

    iput-object p1, v2, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    iget-object v0, v1, Lorg/a/a/a/b/a;->a:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Lorg/a/a/a/b/d;I)Lorg/a/a/a/b/d;
    .registers 5

    iget-object v0, p1, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0x7f

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p1, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    add-int/lit8 v1, p2, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method protected a(Lorg/a/a/a/b/d;ILorg/a/a/a/a/c;)Lorg/a/a/a/b/d;
    .registers 6

    iget-boolean v0, p3, Lorg/a/a/a/a/c;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p3, Lorg/a/a/a/a/c;->f:Z

    invoke-virtual {p0, p3}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/c;)Lorg/a/a/a/b/d;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/b/d;ILorg/a/a/a/b/d;)V

    goto :goto_0
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/b/d;I)Lorg/a/a/a/b/d;
    .registers 6

    new-instance v0, Lorg/a/a/a/a/ar;

    invoke-direct {v0}, Lorg/a/a/a/a/ar;-><init>()V

    iget-object v1, p2, Lorg/a/a/a/b/d;->b:Lorg/a/a/a/a/c;

    invoke-virtual {p0, p1, v1, v0, p3}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/c;Lorg/a/a/a/a/c;I)V

    invoke-virtual {v0}, Lorg/a/a/a/a/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lorg/a/a/a/a/c;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/a/a/a/a/ab;->c:Lorg/a/a/a/b/d;

    invoke-virtual {p0, p2, p3, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/b/d;ILorg/a/a/a/b/d;)V

    :cond_0
    sget-object v0, Lorg/a/a/a/a/ab;->c:Lorg/a/a/a/b/d;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2, p3, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/b/d;ILorg/a/a/a/a/c;)Lorg/a/a/a/b/d;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/a/ab;->l:Lorg/a/a/a/a/ac;

    invoke-virtual {v0}, Lorg/a/a/a/a/ac;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->h:I

    iput v1, p0, Lorg/a/a/a/a/ab;->i:I

    iput v1, p0, Lorg/a/a/a/a/ab;->k:I

    return-void
.end method

.method protected a(Lorg/a/a/a/a/ac;Lorg/a/a/a/c;Lorg/a/a/a/b/d;)V
    .registers 5

    invoke-interface {p2}, Lorg/a/a/a/c;->b()I

    move-result v0

    iput v0, p1, Lorg/a/a/a/a/ac;->a:I

    iget v0, p0, Lorg/a/a/a/a/ab;->h:I

    iput v0, p1, Lorg/a/a/a/a/ac;->b:I

    iget v0, p0, Lorg/a/a/a/a/ab;->i:I

    iput v0, p1, Lorg/a/a/a/a/ac;->c:I

    iput-object p3, p1, Lorg/a/a/a/a/ac;->d:Lorg/a/a/a/b/d;

    return-void
.end method

.method protected a(Lorg/a/a/a/b/d;ILorg/a/a/a/b/d;)V
    .registers 6

    if-ltz p2, :cond_0

    const/16 v0, 0x7f

    if-le p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    if-nez v0, :cond_2

    const/16 v0, 0x80

    new-array v0, v0, [Lorg/a/a/a/b/d;

    iput-object v0, p1, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    :cond_2
    iget-object v0, p1, Lorg/a/a/a/b/d;->c:[Lorg/a/a/a/b/d;

    add-int/lit8 v1, p2, 0x0

    aput-object p3, v0, v1

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/a/ae;IIII)V
    .registers 8

    invoke-interface {p1, p4}, Lorg/a/a/a/c;->b(I)V

    iput p5, p0, Lorg/a/a/a/a/ab;->h:I

    iput p6, p0, Lorg/a/a/a/a/ab;->i:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    invoke-virtual {p2, v0, p1, p3}, Lorg/a/a/a/a/ae;->a(Lorg/a/a/a/p;Lorg/a/a/a/c;I)V

    :cond_0
    return-void
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/a/c;Lorg/a/a/a/a/c;I)V
    .registers 18

    invoke-virtual {p2}, Lorg/a/a/a/a/c;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v1, 0x0

    move v9, v1

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/a/a/a/a/b;

    iget v1, v8, Lorg/a/a/a/a/b;->b:I

    if-ne v1, v9, :cond_3

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    move-object v1, v8

    check-cast v1, Lorg/a/a/a/a/aa;

    invoke-virtual {v1}, Lorg/a/a/a/a/aa;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, v8, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    invoke-virtual {v1}, Lorg/a/a/a/a/n;->a()I

    move-result v12

    const/4 v1, 0x0

    move v10, v1

    :goto_2
    if-ge v10, v12, :cond_0

    iget-object v1, v8, Lorg/a/a/a/a/b;->a:Lorg/a/a/a/a/n;

    invoke-virtual {v1, v10}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {p0, v1, v0}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/a/bl;I)Lorg/a/a/a/a/n;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v1, v8

    check-cast v1, Lorg/a/a/a/a/aa;

    invoke-virtual {v1}, Lorg/a/a/a/a/aa;->c()Lorg/a/a/a/a/ae;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lorg/a/a/a/c;->b()I

    move-result v2

    iget v3, p0, Lorg/a/a/a/a/ab;->g:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/a/a/a/a/ae;->a(I)Lorg/a/a/a/a/ae;

    move-result-object v1

    move-object v2, v1

    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    :goto_4
    new-instance v3, Lorg/a/a/a/a/aa;

    move-object v1, v8

    check-cast v1, Lorg/a/a/a/a/aa;

    invoke-direct {v3, v1, v4, v2}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ae;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/c;ZZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, v8, Lorg/a/a/a/a/b;->b:I

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_6
    move-object v2, v1

    goto :goto_3
.end method

.method protected a(Lorg/a/a/a/c;IIZ)Z
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p4, :cond_1

    iget-object v0, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    invoke-virtual {v0, v1, p2, p3}, Lorg/a/a/a/p;->a(Lorg/a/a/a/w;II)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/a/a/a/a/ab;->i:I

    iget v2, p0, Lorg/a/a/a/a/ab;->h:I

    invoke-interface {p1}, Lorg/a/a/a/c;->b()I

    move-result v3

    invoke-interface {p1}, Lorg/a/a/a/c;->d()I

    move-result v4

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/a/a/a/a/ab;->b(Lorg/a/a/a/c;)V

    iget-object v0, p0, Lorg/a/a/a/a/ab;->f:Lorg/a/a/a/p;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p2, p3}, Lorg/a/a/a/p;->a(Lorg/a/a/a/w;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iput v1, p0, Lorg/a/a/a/a/ab;->i:I

    iput v2, p0, Lorg/a/a/a/a/ab;->h:I

    invoke-interface {p1, v3}, Lorg/a/a/a/c;->b(I)V

    invoke-interface {p1, v4}, Lorg/a/a/a/c;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iput v1, p0, Lorg/a/a/a/a/ab;->i:I

    iput v2, p0, Lorg/a/a/a/a/ab;->h:I

    invoke-interface {p1, v3}, Lorg/a/a/a/c;->b(I)V

    invoke-interface {p1, v4}, Lorg/a/a/a/c;->a(I)V

    throw v0
.end method

.method protected a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/c;ZZZ)Z
    .registers 17

    iget-object v0, p2, Lorg/a/a/a/a/aa;->a:Lorg/a/a/a/a/n;

    instance-of v0, v0, Lorg/a/a/a/a/bb;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Lorg/a/a/a/a/ax;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Lorg/a/a/a/a/ax;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p3, p2}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;)Z

    const/4 v4, 0x1

    :cond_2
    :goto_0
    return v4

    :cond_3
    new-instance v0, Lorg/a/a/a/a/aa;

    iget-object v1, p2, Lorg/a/a/a/a/aa;->a:Lorg/a/a/a/a/n;

    sget-object v2, Lorg/a/a/a/a/ax;->d:Lorg/a/a/a/a/y;

    invoke-direct {v0, p2, v1, v2}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;)V

    invoke-virtual {p3, v0}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;)Z

    const/4 v4, 0x1

    :goto_1
    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Lorg/a/a/a/a/ax;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0}, Lorg/a/a/a/a/ax;->b()I

    move-result v0

    if-ge v7, v0, :cond_2

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0, v7}, Lorg/a/a/a/a/ax;->b(I)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_4

    iget-object v0, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v0, v7}, Lorg/a/a/a/a/ax;->a(I)Lorg/a/a/a/a/ax;

    move-result-object v1

    new-instance v2, Lorg/a/a/a/a/aa;

    iget-object v0, p0, Lorg/a/a/a/a/ab;->d:Lorg/a/a/a/a/a;

    iget-object v0, v0, Lorg/a/a/a/a/a;->a:Ljava/util/List;

    iget-object v3, p2, Lorg/a/a/a/a/aa;->c:Lorg/a/a/a/a/ax;

    invoke-virtual {v3, v7}, Lorg/a/a/a/a/ax;->b(I)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/n;

    invoke-direct {v2, p2, v0, v1}, Lorg/a/a/a/a/aa;-><init>(Lorg/a/a/a/a/aa;Lorg/a/a/a/a/n;Lorg/a/a/a/a/ax;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/c;ZZZ)Z

    move-result v4

    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_5
    iget-object v0, p2, Lorg/a/a/a/a/aa;->a:Lorg/a/a/a/a/n;

    invoke-virtual {v0}, Lorg/a/a/a/a/n;->b()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p4, :cond_6

    invoke-virtual {p2}, Lorg/a/a/a/a/aa;->d()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p3, p2}, Lorg/a/a/a/a/c;->a(Lorg/a/a/a/a/b;)Z

    :cond_7
    iget-object v9, p2, Lorg/a/a/a/a/aa;->a:Lorg/a/a/a/a/n;

    const/4 v0, 0x0

    move v7, p4

    move v8, v0

    :goto_3
    invoke-virtual {v9}, Lorg/a/a/a/a/n;->a()I

    move-result v0

    if-ge v8, v0, :cond_9

    invoke-virtual {v9, v8}, Lorg/a/a/a/a/n;->a(I)Lorg/a/a/a/a/bl;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/bl;Lorg/a/a/a/a/c;ZZ)Lorg/a/a/a/a/aa;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, v7

    move v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/a/a/a/a/ab;->a(Lorg/a/a/a/c;Lorg/a/a/a/a/aa;Lorg/a/a/a/a/c;ZZZ)Z

    move-result v7

    :cond_8
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_3

    :cond_9
    move v4, v7

    goto/16 :goto_0

    :cond_a
    move v4, p4

    goto/16 :goto_1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ab;->h:I

    return v0
.end method

.method public b(Lorg/a/a/a/c;)V
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/a/a/a/c;->c(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/a/a/a/a/ab;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/a/ab;->i:I

    :goto_0
    invoke-interface {p1}, Lorg/a/a/a/c;->a()V

    return-void

    :cond_0
    iget v0, p0, Lorg/a/a/a/a/ab;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/a/a/a/a/ab;->i:I

    goto :goto_0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/a/a/a/a/ab;->i:I

    return v0
.end method
