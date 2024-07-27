.class public final Lcom/a/b/a/b/t;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/a/b/t;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/a/b/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/t;-><init>(I)V

    sput-object v0, Lcom/a/b/a/b/t;->a:Lcom/a/b/a/b/t;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/a/b/t;Lcom/a/b/a/b/t;)Lcom/a/b/a/b/t;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/a/b/a/b/t;->a:Lcom/a/b/a/b/t;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/a/b/t;->d_()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/a/b/t;->d_()I

    move-result v4

    new-instance v0, Lcom/a/b/a/b/t;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Lcom/a/b/a/b/t;-><init>(I)V

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_1

    :goto_2
    if-lt v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/b/t;->c_()V

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/a/b/a/b/t;->a(I)Lcom/a/b/a/b/u;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/a/b/a/b/t;->a(ILcom/a/b/a/b/u;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Lcom/a/b/a/b/t;->a(I)Lcom/a/b/a/b/u;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/a/b/a/b/t;->a(ILcom/a/b/a/b/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static b(Lcom/a/b/a/b/t;Lcom/a/b/a/b/t;)Lcom/a/b/a/b/t;
    .registers 7

    invoke-virtual {p0}, Lcom/a/b/a/b/t;->d_()I

    move-result v2

    new-instance v3, Lcom/a/b/a/b/t;

    invoke-direct {v3, v2}, Lcom/a/b/a/b/t;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Lcom/a/b/a/b/t;->c_()V

    return-object v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/t;->a(I)Lcom/a/b/a/b/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/b/a/b/t;->a(Lcom/a/b/a/b/u;)Lcom/a/b/a/b/u;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/a/b/a/b/u;->b(Lcom/a/b/a/b/u;)Lcom/a/b/e/c/ad;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/a/b/a/b/u;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/a/b/u;

    move-result-object v0

    :cond_1
    invoke-virtual {v3, v1, v0}, Lcom/a/b/a/b/t;->a(ILcom/a/b/a/b/u;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/b/u;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/t;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/u;

    return-object v0
.end method

.method public a(II)Lcom/a/b/a/b/u;
    .registers 7

    invoke-virtual {p0}, Lcom/a/b/a/b/t;->d_()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/t;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/u;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/a/b/a/b/u;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lcom/a/b/a/b/u;)Lcom/a/b/a/b/u;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/a/b/t;->d_()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/t;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/u;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/u;->a(Lcom/a/b/a/b/u;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(IIILcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;I)V
    .registers 15

    new-instance v0, Lcom/a/b/a/b/u;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/a/b/a/b/u;-><init>(IILcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;I)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/t;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/a/b/a/b/u;)V
    .registers 5

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/b/t;->a(ILjava/lang/Object;)V

    return-void
.end method
