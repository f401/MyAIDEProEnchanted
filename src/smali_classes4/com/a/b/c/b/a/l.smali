.class public final Lcom/a/b/c/b/a/l;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/l;

    invoke-direct {v0}, Lcom/a/b/c/b/a/l;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/l;->a:Lcom/a/b/c/b/r;

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

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
    .registers 7

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/i;

    invoke-virtual {v0}, Lcom/a/b/c/b/i;->d()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {v2, v1}, Lcom/a/b/c/b/a/l;->b(II)I

    move-result v1

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/l;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    int-to-short v0, v0

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/l;->a(Lcom/a/b/g/a;SS)V

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    instance-of v3, p1, Lcom/a/b/c/b/i;

    if-eqz v3, :cond_2d

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/c/b/a/l;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/l;->b(I)Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->d()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/l;->f(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v2

    instance-of v3, v2, Lcom/a/b/e/c/ae;

    if-nez v3, :cond_46

    instance-of v2, v2, Lcom/a/b/e/c/n;

    if-eqz v2, :cond_2d

    :cond_46
    move v0, v1

    goto :goto_2d
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/l;->b(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/l;->b(I)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method
