.class public Lcom/a4455jkjh/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a4455jkjh/e/a;

.field private b:Labcd/Ca;

.field private c:Labcd/na;


# direct methods
.method public constructor <init>(Labcd/Ca;Labcd/na;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a4455jkjh/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a4455jkjh/e/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/d;->a:Lcom/a4455jkjh/e/a;

    iput-object p1, p0, Lcom/a4455jkjh/b/d;->b:Labcd/Ca;

    iput-object p2, p0, Lcom/a4455jkjh/b/d;->c:Labcd/na;

    return-void
.end method


# virtual methods
.method public a(Labcd/Da;Ljava/io/Reader;Labcd/Wa;)V
    .registers 13

    iget-object v8, p0, Lcom/a4455jkjh/b/d;->a:Lcom/a4455jkjh/e/a;

    invoke-virtual {v8, p2}, Lcom/a4455jkjh/e/a;->a(Ljava/io/Reader;)V

    invoke-virtual {p3}, Labcd/Wa;->j6()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->f()Lorg/a/a/a/aa;

    move-result-object v1

    invoke-interface {v1}, Lorg/a/a/a/aa;->a()I

    move-result v2

    invoke-interface {v1}, Lorg/a/a/a/aa;->c()I

    move-result v3

    invoke-interface {v1}, Lorg/a/a/a/aa;->d()I

    move-result v4

    const/4 v1, -0x1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p3

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    return-void

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/16 v1, 0x28

    if-lt v2, v1, :cond_2

    const/16 v1, 0x5a

    if-gt v2, v1, :cond_2

    const/4 v1, 0x1

    move v7, v0

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->j()I

    move-result v5

    invoke-virtual {v8}, Lcom/a4455jkjh/e/a;->k()I

    move-result v6

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    move v0, v7

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x6

    move v7, v0

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x1

    move v7, v0

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x5

    move v7, v0

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x8

    move v7, v0

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x4

    move v7, v0

    goto :goto_2

    :pswitch_6
    const/4 v1, 0x3

    move v7, v0

    goto :goto_2

    :pswitch_7
    const/4 v1, 0x2

    move v7, v0

    goto :goto_2

    :pswitch_8
    const/4 v1, 0x3

    const/4 v0, 0x1

    move v7, v0

    goto :goto_2

    :pswitch_9
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :goto_3
    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v1, 0x7

    goto :goto_3

    :pswitch_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x7

    move v7, v0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
