.class public final Lcom/a/b/c/b/q;
.super Lcom/a/b/c/b/an;


# instance fields
.field private a:[Lcom/a/b/c/b/aj;


# direct methods
.method public constructor <init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/a/b/c/b/an;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    invoke-virtual {p2}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registers.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    return-void
.end method

.method private static a(Lcom/a/b/e/b/u;I)Lcom/a/b/c/b/aj;
    .registers 4

    sget-object v0, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    invoke-virtual {p0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/a/b/c/b/l;->a(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/c/b/aj;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    if-eqz v0, :cond_6

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/a/b/c/b/q;->l()Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    new-array v0, v4, [Lcom/a/b/c/b/aj;

    iput-object v0, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    move v0, v1

    move v2, v1

    :goto_14
    if-ge v2, v4, :cond_5

    invoke-virtual {v3, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    iget-object v5, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    invoke-static {v1, v0}, Lcom/a/b/c/b/q;->a(Lcom/a/b/e/b/u;I)Lcom/a/b/c/b/aj;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_14
.end method


# virtual methods
.method public a()I
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/b/c/b/q;->c()V

    iget-object v3, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_9
    if-lt v0, v4, :cond_c

    return v2

    :cond_c
    aget-object v1, v3, v0

    invoke-virtual {v1}, Lcom/a/b/c/b/aj;->a()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9
.end method

.method public a(Lcom/a/b/e/b/x;)Lcom/a/b/c/b/l;
    .registers 4

    new-instance v0, Lcom/a/b/c/b/q;

    invoke-virtual {p0}, Lcom/a/b/c/b/q;->k()Lcom/a/b/e/b/ad;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/a/b/c/b/q;-><init>(Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;)V

    return-object v0
.end method

.method protected a(Z)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/c/b/q;->l()Lcom/a/b/e/b/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/x;->d_()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_12
    if-lt v2, v4, :cond_19

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-virtual {v3, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/b/c/b/q;->a(Lcom/a/b/e/b/u;I)Lcom/a/b/c/b/aj;

    move-result-object v6

    if-eqz v2, :cond_28

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    invoke-virtual {v6, p1}, Lcom/a/b/c/b/aj;->a(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->k()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12
.end method

.method public a(Lcom/a/b/g/a;)V
    .registers 6

    invoke-direct {p0}, Lcom/a/b/c/b/q;->c()V

    iget-object v1, p0, Lcom/a/b/c/b/q;->a:[Lcom/a/b/c/b/aj;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v2, :cond_a

    return-void

    :cond_a
    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Lcom/a/b/c/b/aj;->a(Lcom/a/b/g/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
