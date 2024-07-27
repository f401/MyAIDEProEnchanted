.class public final Lcom/a/b/c/b/a/y;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/y;

    invoke-direct {v0}, Lcom/a/b/c/b/a/y;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/y;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/c/b/a/y;->b(Lcom/a/b/e/b/x;)Ljava/lang/String;

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
    .registers 8

    const/4 v1, 0x0

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/y;

    invoke-virtual {v0, v1}, Lcom/a/b/c/b/y;->b(I)I

    move-result v2

    int-to-short v2, v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/a/b/c/b/y;->b(I)I

    move-result v0

    int-to-short v3, v0

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v4, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    int-to-short v0, v0

    :goto_0
    invoke-virtual {v4}, Lcom/a/b/e/b/x;->e()I

    move-result v1

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/y;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    invoke-static {p1, v1, v2, v0, v3}, Lcom/a/b/c/b/a/y;->a(Lcom/a/b/g/a;SSSS)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lcom/a/b/c/b/y;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/c/b/y;

    invoke-virtual {p1, v0}, Lcom/a/b/c/b/y;->b(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/a/b/c/b/y;->b(I)I

    move-result v3

    invoke-static {v2}, Lcom/a/b/c/b/a/y;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/a/b/c/b/a/y;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    instance-of v2, v2, Lcom/a/b/e/c/z;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/a/b/c/b/y;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    instance-of v2, v2, Lcom/a/b/e/c/ab;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/b/y;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/a/b/e/b/x;->e()I

    move-result v4

    invoke-static {v4}, Lcom/a/b/c/b/a/y;->d(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/a/b/c/b/a/y;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/c/b/a/y;->f(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/a/b/c/b/a/y;->c(Lcom/a/b/e/b/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
