.class public final Lcom/a/b/c/b/a/e;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/e;

    invoke-direct {v0}, Lcom/a/b/c/b/a/e;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/e;->a:Lcom/a/b/c/b/r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/c/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 6

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v2, v0}, Lcom/a/b/c/b/a/e;->b(II)I

    move-result v0

    invoke-static {p2, v0}, Lcom/a/b/c/b/a/e;->a(Lcom/a/b/c/b/l;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/a/b/c/b/a/e;->a(Lcom/a/b/g/a;S)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lcom/a/b/c/b/aj;

    if-nez v0, :cond_8

    move v0, v2

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    move v0, v2

    goto :goto_7

    :pswitch_15  #0x2
    invoke-virtual {v4, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v4, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    :cond_1d
    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v3

    goto :goto_7

    :pswitch_33  #0x3
    invoke-virtual {v4, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    invoke-virtual {v4, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    if-eq v5, v4, :cond_1d

    move v0, v2

    goto :goto_7

    :cond_4c
    move v0, v2

    goto :goto_7

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_15  #00000002
        :pswitch_33  #00000003
    .end packed-switch
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 10

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v7}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-virtual {v0, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    packed-switch v4, :pswitch_data_5c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_29  #0x2
    invoke-static {v2}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/util/BitSet;->set(IZ)V

    invoke-static {v3}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v0

    invoke-virtual {v1, v6, v0}, Ljava/util/BitSet;->set(IZ)V

    :goto_37
    return-object v1

    :pswitch_38  #0x3
    if-eq v2, v3, :cond_50

    invoke-virtual {v1, v5, v5}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v6, v5}, Ljava/util/BitSet;->set(IZ)V

    :goto_40
    invoke-virtual {v0, v7}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v0

    invoke-virtual {v1, v7, v0}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_37

    :cond_50
    invoke-static {v3}, Lcom/a/b/c/b/a/e;->b(I)Z

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v1, v6, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_40

    nop

    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_29  #00000002
        :pswitch_38  #00000003
    .end packed-switch
.end method
