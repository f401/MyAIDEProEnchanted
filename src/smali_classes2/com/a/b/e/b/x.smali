.class public final Lcom/a/b/e/b/x;
.super Lcom/a/b/g/j;

# interfaces
.implements Lcom/a/b/e/d/e;


# static fields
.field public static final a:Lcom/a/b/e/b/x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/e/b/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/e/b/x;-><init>(I)V

    sput-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;
    .registers 3

    new-instance v0, Lcom/a/b/e/b/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    return-object v0
.end method

.method public static a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;
    .registers 4

    new-instance v0, Lcom/a/b/e/b/x;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/b/x;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/e/b/x;ILjava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/util/BitSet;)Lcom/a/b/e/b/x;
    .registers 11

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/a/b/e/b/y;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/y;-><init>(Lcom/a/b/e/b/x;Ljava/util/BitSet;IZLcom/a/b/e/b/y;)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_1

    invoke-static {v0}, Lcom/a/b/e/b/y;->a(Lcom/a/b/e/b/y;)Lcom/a/b/e/b/x;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lcom/a/b/e/b/y;->a(Lcom/a/b/e/b/y;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(Ljava/util/BitSet;)Lcom/a/b/e/b/x;
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int v1, v0, v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v1}, Lcom/a/b/e/b/x;-><init>(I)V

    move v1, v2

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-lt v3, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1
.end method

.method public a(I)Lcom/a/b/e/d/c;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/e/d/c;)Lcom/a/b/e/d/e;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILcom/a/b/e/b/u;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)Lcom/a/b/e/b/u;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    return-object v0
.end method

.method public b(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    new-instance v3, Lcom/a/b/e/b/x;

    add-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Lcom/a/b/e/b/x;-><init>(I)V

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    invoke-virtual {v3, v1, p1}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/a/b/e/b/x;->c_()V

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c(I)I
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d(I)Lcom/a/b/e/b/x;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/a/b/e/b/x;

    invoke-direct {v1, v3}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->c_()V

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/u;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/a/b/e/b/u;->c(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method public e()I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/a/b/e/b/x;->a(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/d/c;->j()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public f()Lcom/a/b/e/b/x;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_1

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v2}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public g()Lcom/a/b/e/b/x;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_1

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v2}, Lcom/a/b/e/b/x;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/b/e/b/x;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/a/b/e/b/x;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/b/e/b/x;->a(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
