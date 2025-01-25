.class public final Lcom/a/b/c/b/ac;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/c/b/ac;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/c/b/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/c/b/ac;-><init>(I)V

    sput-object v0, Lcom/a/b/c/b/ac;->a:Lcom/a/b/c/b/ac;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/c/b/m;I)Lcom/a/b/c/b/ac;
    .registers 13

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_64

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c  #0x1
    sget-object v0, Lcom/a/b/c/b/ac;->a:Lcom/a/b/c/b/ac;

    :goto_e
    return-object v0

    :pswitch_f  #0x2, 0x3
    sget-object v5, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->d_()I

    move-result v7

    new-array v8, v7, [Lcom/a/b/c/b/ad;

    move-object v0, v5

    move v3, v4

    move v2, v4

    move v6, v4

    :goto_1b
    if-lt v6, v7, :cond_28

    new-instance v0, Lcom/a/b/c/b/ac;

    invoke-direct {v0, v2}, Lcom/a/b/c/b/ac;-><init>(I)V

    :goto_22
    if-lt v4, v2, :cond_5b

    invoke-virtual {v0}, Lcom/a/b/c/b/ac;->c_()V

    goto :goto_e

    :cond_28
    invoke-virtual {p0, v6}, Lcom/a/b/c/b/m;->a(I)Lcom/a/b/c/b/l;

    move-result-object v9

    instance-of v1, v9, Lcom/a/b/c/b/h;

    if-eqz v1, :cond_36

    const/4 v1, 0x1

    move v3, v1

    :cond_32
    :goto_32
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1b

    :cond_36
    invoke-virtual {v9}, Lcom/a/b/c/b/l;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/a/b/e/b/ad;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/ad;->a(Lcom/a/b/e/b/ad;)Z

    move-result v10

    if-nez v10, :cond_32

    const/4 v10, 0x3

    if-ne p1, v10, :cond_4b

    if-eqz v3, :cond_32

    :cond_4b
    new-instance v0, Lcom/a/b/c/b/ad;

    invoke-virtual {v9}, Lcom/a/b/c/b/l;->i()I

    move-result v3

    invoke-direct {v0, v3, v1}, Lcom/a/b/c/b/ad;-><init>(ILcom/a/b/e/b/ad;)V

    aput-object v0, v8, v2

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move v3, v4

    goto :goto_32

    :cond_5b
    aget-object v1, v8, v4

    invoke-virtual {v0, v4, v1}, Lcom/a/b/c/b/ac;->a(ILcom/a/b/c/b/ad;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_f  #00000002
        :pswitch_f  #00000003
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/a/b/c/b/ad;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/ac;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    return-object v0
.end method

.method public a(ILcom/a/b/c/b/ad;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/b/ac;->a(ILjava/lang/Object;)V

    return-void
.end method
