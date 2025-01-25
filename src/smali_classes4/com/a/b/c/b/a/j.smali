.class public final Lcom/a/b/c/b/a/j;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/j;

    invoke-direct {v0}, Lcom/a/b/c/b/a/j;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/j;->a:Lcom/a/b/c/b/r;

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

    invoke-static {p1}, Lcom/a/b/c/b/a/j;->d(Lcom/a/b/c/b/l;)Ljava/lang/String;

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

    check-cast v0, Lcom/a/b/c/b/am;

    invoke-virtual {v0}, Lcom/a/b/c/b/am;->e()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/j;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/j;->a(Lcom/a/b/g/a;SS)V

    return-void
.end method

.method public a(Lcom/a/b/c/b/am;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/a/b/c/b/am;->e()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/a/b/c/b/a/j;->e(I)Z

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

    invoke-static {p1}, Lcom/a/b/c/b/a/j;->e(Lcom/a/b/c/b/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    instance-of v3, p1, Lcom/a/b/c/b/am;

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    if-ne v3, v0, :cond_1e

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/j;->d(I)Z

    move-result v2

    if-nez v2, :cond_20

    :cond_1e
    move v0, v1

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    check-cast p1, Lcom/a/b/c/b/am;

    invoke-virtual {p1}, Lcom/a/b/c/b/am;->q()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, p1}, Lcom/a/b/c/b/a/j;->a(Lcom/a/b/c/b/am;)Z

    move-result v0

    goto :goto_1f
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/j;->d(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method
