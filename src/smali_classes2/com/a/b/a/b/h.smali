.class public final Lcom/a/b/a/b/h;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/a/b/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/a/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/h;-><init>(I)V

    sput-object v0, Lcom/a/b/a/b/h;->a:Lcom/a/b/a/b/h;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method private static a(Lcom/a/b/a/b/i;[Lcom/a/b/a/b/i;I)Z
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/i;->d()Lcom/a/b/e/c/ae;

    move-result-object v2

    move v1, v0

    :goto_0
    if-lt v1, p2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/a/b/a/b/i;->d()Lcom/a/b/e/c/ae;

    move-result-object v3

    if-eq v3, v2, :cond_0

    sget-object v4, Lcom/a/b/e/c/ae;->a:Lcom/a/b/e/c/ae;

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/b/h;->d_()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public a(I)Lcom/a/b/a/b/i;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/b/h;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/i;

    return-object v0
.end method

.method public a(IIIILcom/a/b/e/c/ae;)V
    .registers 7

    new-instance v0, Lcom/a/b/a/b/i;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/a/b/a/b/i;-><init>(IIILcom/a/b/e/c/ae;)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/b/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/a/b/a/b/i;)V
    .registers 5

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/b/h;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a_()Lcom/a/b/e/d/e;
    .registers 5

    invoke-virtual {p0}, Lcom/a/b/a/b/h;->d_()I

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/a/b/e/d/b;

    invoke-direct {v0, v2}, Lcom/a/b/e/d/b;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->c_()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/h;->a(I)Lcom/a/b/a/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/a/b/i;->d()Lcom/a/b/e/c/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/a/b/e/d/b;->a(ILcom/a/b/e/d/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b(I)Lcom/a/b/a/b/h;
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/h;->d_()I

    move-result v4

    new-array v5, v4, [Lcom/a/b/a/b/i;

    move v3, v2

    move v1, v2

    :goto_0
    if-lt v3, v4, :cond_0

    if-nez v1, :cond_1

    sget-object v0, Lcom/a/b/a/b/h;->a:Lcom/a/b/a/b/h;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/a/b/a/b/h;->a(I)Lcom/a/b/a/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/a/b/i;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v0, v5, v1}, Lcom/a/b/a/b/h;->a(Lcom/a/b/a/b/i;[Lcom/a/b/a/b/i;I)Z

    move-result v6

    if-eqz v6, :cond_3

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/b/a/b/h;

    invoke-direct {v0, v1}, Lcom/a/b/a/b/h;-><init>(I)V

    :goto_3
    if-lt v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/a/b/a/b/h;->c_()V

    goto :goto_1

    :cond_2
    aget-object v3, v5, v2

    invoke-virtual {v0, v2, v3}, Lcom/a/b/a/b/h;->a(ILcom/a/b/a/b/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public c(I)Lcom/a/b/g/n;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "noException < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/a/b/a/b/h;->d_()I

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    move v3, v1

    :goto_2
    new-instance v1, Lcom/a/b/g/n;

    add-int/2addr v3, v4

    invoke-direct {v1, v3}, Lcom/a/b/g/n;-><init>(I)V

    :goto_3
    if-lt v2, v4, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Lcom/a/b/g/n;->c(I)V

    :cond_4
    invoke-virtual {v1}, Lcom/a/b/g/n;->c_()V

    move-object v0, v1

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/a/b/a/b/h;->a(I)Lcom/a/b/a/b/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/a/b/i;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method
