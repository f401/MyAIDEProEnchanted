.class public final Lcom/a/b/c/b/a/r;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/r;

    invoke-direct {v0}, Lcom/a/b/c/b/a/r;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/r;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 6

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/i;

    invoke-virtual {v0}, Lcom/a/b/c/b/i;->d()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/r;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/r;->a(Lcom/a/b/g/a;SI)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->g()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/a/b/c/b/i;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    move v0, v1

    goto :goto_7

    :pswitch_15  #0x1
    invoke-virtual {v3, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    :cond_19
    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/r;->d(I)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    goto :goto_7

    :pswitch_25  #0x2
    invoke-virtual {v3, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v4

    invoke-virtual {v3, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    if-eq v4, v3, :cond_19

    move v0, v1

    goto :goto_7

    :cond_39
    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    instance-of v3, v0, Lcom/a/b/e/c/ae;

    if-nez v3, :cond_4d

    instance-of v3, v0, Lcom/a/b/e/c/n;

    if-nez v3, :cond_4d

    instance-of v0, v0, Lcom/a/b/e/c/ad;

    if-nez v0, :cond_4d

    move v0, v1

    goto :goto_7

    :cond_4d
    move v0, v2

    goto :goto_7

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_25  #00000002
    .end packed-switch
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/c/b/a/r;->d(I)Z

    move-result v3

    if-ne v1, v5, :cond_21

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    :cond_20
    :goto_20
    return-object v2

    :cond_21
    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    if-ne v1, v0, :cond_20

    invoke-virtual {v2, v4, v3}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v2, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_20
.end method
