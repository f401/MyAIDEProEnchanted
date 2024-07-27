.class public Lcom/a4455jkjh/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/a4455jkjh/a/a;

.field private final b:Labcd/Ca;

.field private final c:Labcd/na;


# direct methods
.method public constructor <init>(Labcd/Ca;Labcd/na;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a4455jkjh/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a4455jkjh/a/a;-><init>(Lorg/a/a/a/c;)V

    iput-object v0, p0, Lcom/a4455jkjh/b/a;->a:Lcom/a4455jkjh/a/a;

    iput-object p2, p0, Lcom/a4455jkjh/b/a;->c:Labcd/na;

    iput-object p1, p0, Lcom/a4455jkjh/b/a;->b:Labcd/Ca;

    return-void
.end method


# virtual methods
.method public a(Labcd/Da;Ljava/io/Reader;Labcd/Wa;)V
    .registers 16

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/a4455jkjh/b/a;->a:Lcom/a4455jkjh/a/a;

    invoke-static {p2}, Lorg/a/a/a/d;->a(Ljava/io/Reader;)Lorg/a/a/a/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/a4455jkjh/a/a;->a(Lorg/a/a/a/o;)V

    invoke-virtual {p3}, Labcd/Wa;->j6()V

    :goto_0
    invoke-virtual {v2}, Lcom/a4455jkjh/a/a;->d()Lorg/a/a/a/aa;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/a/aa;->a()I

    move-result v5

    invoke-interface {v0}, Lorg/a/a/a/aa;->c()I

    move-result v3

    invoke-interface {v0}, Lorg/a/a/a/aa;->d()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    move-object v0, p3

    move v2, v1

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    return-void

    :cond_0
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x7

    :goto_1
    invoke-virtual {v2}, Lcom/a4455jkjh/a/a;->m()Lorg/a/a/a/a/m;

    move-result-object v0

    check-cast v0, Lorg/a/a/a/a/ab;

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->b()I

    move-result v10

    invoke-virtual {v0}, Lorg/a/a/a/a/ab;->c()I

    move-result v11

    move-object v5, p3

    move v7, v1

    move v8, v3

    move v9, v4

    invoke-virtual/range {v5 .. v11}, Labcd/Wa;->j6(IIIIII)V

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x5

    goto :goto_1

    :pswitch_4
    const/16 v6, 0x8

    goto :goto_1

    :pswitch_5
    const/4 v6, 0x4

    goto :goto_1

    :pswitch_6
    const/4 v6, 0x3

    goto :goto_1

    :pswitch_7
    const/4 v6, 0x2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
