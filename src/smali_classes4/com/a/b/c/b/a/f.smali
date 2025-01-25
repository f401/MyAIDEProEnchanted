.class public final Lcom/a/b/c/b/a/f;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/f;

    invoke-direct {v0}, Lcom/a/b/c/b/a/f;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/f;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/a/b/c/b/a/f;->d(Lcom/a/b/c/b/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 5

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/am;

    invoke-virtual {v0}, Lcom/a/b/c/b/am;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/f;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/f;->a(Lcom/a/b/g/a;SS)V

    return-void
.end method

.method public a(Lcom/a/b/c/b/am;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/c/b/am;->e()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/a/b/c/b/a/f;->e(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/a/b/c/b/a/f;->e(Lcom/a/b/c/b/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 3

    instance-of v0, p1, Lcom/a/b/c/b/am;

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    check-cast p1, Lcom/a/b/c/b/am;

    invoke-virtual {p1}, Lcom/a/b/c/b/am;->q()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/a/f;->a(Lcom/a/b/c/b/am;)Z

    move-result v0

    goto :goto_f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_f
.end method
