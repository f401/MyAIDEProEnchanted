.class public final Lcom/a/b/a/b/r;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/a/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/a/b/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/r;-><init>(I)V

    sput-object v0, Lcom/a/b/a/b/r;->a:Lcom/a/b/a/b/r;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/a/b/r;Lcom/a/b/a/b/r;)Lcom/a/b/a/b/r;
    .registers 8

    const/4 v1, 0x0

    sget-object v0, Lcom/a/b/a/b/r;->a:Lcom/a/b/a/b/r;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/a/b/r;->d_()I

    move-result v3

    invoke-virtual {p1}, Lcom/a/b/a/b/r;->d_()I

    move-result v4

    new-instance v0, Lcom/a/b/a/b/r;

    add-int v2, v3, v4

    invoke-direct {v0, v2}, Lcom/a/b/a/b/r;-><init>(I)V

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_1

    :goto_2
    if-lt v1, v4, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/a/b/a/b/r;->a(I)Lcom/a/b/a/b/s;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/a/b/a/b/r;->a(ILcom/a/b/a/b/s;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int v2, v3, v1

    invoke-virtual {p1, v1}, Lcom/a/b/a/b/r;->a(I)Lcom/a/b/a/b/s;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/a/b/a/b/r;->a(ILcom/a/b/a/b/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/b/s;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/r;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/s;

    return-object v0
.end method

.method public a(III)V
    .registers 5

    new-instance v0, Lcom/a/b/a/b/s;

    invoke-direct {v0, p2, p3}, Lcom/a/b/a/b/s;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/r;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/a/b/a/b/s;)V
    .registers 5

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/b/r;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)I
    .registers 8

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/a/b/a/b/r;->d_()I

    move-result v5

    const/4 v1, 0x0

    move v3, v1

    move v2, v4

    move v0, v4

    :goto_0
    if-lt v3, v5, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/a/b/a/b/r;->a(I)Lcom/a/b/a/b/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/a/b/s;->a()I

    move-result v1

    if-gt v1, p1, :cond_2

    if-le v1, v2, :cond_2

    invoke-virtual {v4}, Lcom/a/b/a/b/s;->b()I

    move-result v0

    if-eq v1, p1, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
