.class public final Lcom/a/b/c/b/s;
.super Lcom/a/b/g/j;


# static fields
.field public static final a:Lcom/a/b/c/b/s;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/a/b/c/b/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/c/b/s;-><init>(I)V

    sput-object v0, Lcom/a/b/c/b/s;->a:Lcom/a/b/c/b/s;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/a/b/c/b/m;)Lcom/a/b/c/b/s;
    .registers 6

    invoke-virtual {p0}, Lcom/a/b/c/b/m;->d_()I

    move-result v3

    new-instance v4, Lcom/a/b/c/b/v;

    invoke-direct {v4, v3}, Lcom/a/b/c/b/v;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_b
    if-lt v2, v3, :cond_12

    invoke-virtual {v4}, Lcom/a/b/c/b/v;->a()Lcom/a/b/c/b/s;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {p0, v2}, Lcom/a/b/c/b/m;->a(I)Lcom/a/b/c/b/l;

    move-result-object v1

    instance-of v0, v1, Lcom/a/b/c/b/w;

    if-eqz v0, :cond_2c

    move-object v0, v1

    check-cast v0, Lcom/a/b/c/b/w;

    invoke-virtual {v0}, Lcom/a/b/c/b/w;->c()Lcom/a/b/e/b/z;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/c/b/l;->i()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/z;)V

    :cond_28
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_2c
    instance-of v0, v1, Lcom/a/b/c/b/x;

    if-eqz v0, :cond_28

    move-object v0, v1

    check-cast v0, Lcom/a/b/c/b/x;

    invoke-virtual {v0}, Lcom/a/b/c/b/x;->c()Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v1}, Lcom/a/b/c/b/l;->i()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/a/b/c/b/v;->a(ILcom/a/b/e/b/u;)V

    goto :goto_28
.end method


# virtual methods
.method public a(I)Lcom/a/b/c/b/u;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/s;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    return-object v0
.end method

.method public a(ILcom/a/b/c/b/u;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/c/b/s;->a(ILjava/lang/Object;)V

    return-void
.end method
