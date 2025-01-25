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

    :goto_d
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

    if-ne v5, v0, :cond_2a

    move-object v0, p3

    move v2, v1

    move v5, v3

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Labcd/Wa;->j6(IIIIII)V

    return-void

    :cond_2a
    packed-switch v5, :pswitch_data_54

    :pswitch_2d  #0x14, 0x26
    const/4 v6, 0x7

    :goto_2e
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

    goto :goto_d

    :pswitch_44  #0x17, 0x18, 0x19, 0x24
    const/4 v6, 0x6

    goto :goto_2e

    :pswitch_46  #0xd, 0xe, 0xf, 0x12, 0x13, 0x15, 0x16, 0x22, 0x23
    const/4 v6, 0x1

    goto :goto_2e

    :pswitch_48  #0x10, 0x11, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21
    const/4 v6, 0x5

    goto :goto_2e

    :pswitch_4a  #0x25
    const/16 v6, 0x8

    goto :goto_2e

    :pswitch_4d  #0x27, 0x28, 0x29
    const/4 v6, 0x4

    goto :goto_2e

    :pswitch_4f  #0x1, 0x4, 0x5, 0x6
    const/4 v6, 0x3

    goto :goto_2e

    :pswitch_51  #0x2, 0x3, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    const/4 v6, 0x2

    goto :goto_2e

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_51  #00000002
        :pswitch_51  #00000003
        :pswitch_4f  #00000004
        :pswitch_4f  #00000005
        :pswitch_4f  #00000006
        :pswitch_51  #00000007
        :pswitch_51  #00000008
        :pswitch_51  #00000009
        :pswitch_51  #0000000a
        :pswitch_51  #0000000b
        :pswitch_51  #0000000c
        :pswitch_46  #0000000d
        :pswitch_46  #0000000e
        :pswitch_46  #0000000f
        :pswitch_48  #00000010
        :pswitch_48  #00000011
        :pswitch_46  #00000012
        :pswitch_46  #00000013
        :pswitch_2d  #00000014
        :pswitch_46  #00000015
        :pswitch_46  #00000016
        :pswitch_44  #00000017
        :pswitch_44  #00000018
        :pswitch_44  #00000019
        :pswitch_48  #0000001a
        :pswitch_48  #0000001b
        :pswitch_48  #0000001c
        :pswitch_48  #0000001d
        :pswitch_48  #0000001e
        :pswitch_48  #0000001f
        :pswitch_48  #00000020
        :pswitch_48  #00000021
        :pswitch_46  #00000022
        :pswitch_46  #00000023
        :pswitch_44  #00000024
        :pswitch_4a  #00000025
        :pswitch_2d  #00000026
        :pswitch_4d  #00000027
        :pswitch_4d  #00000028
        :pswitch_4d  #00000029
    .end packed-switch
.end method
