.class public final Lcom/a/b/c/b/a/p;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/p;

    invoke-direct {v0}, Lcom/a/b/c/b/a/p;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/p;->a:Lcom/a/b/c/b/r;

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

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 7

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/p;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v2, v0}, Lcom/a/b/c/b/a/p;->a(II)S

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/p;->a(Lcom/a/b/g/a;SS)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    instance-of v3, p1, Lcom/a/b/c/b/aj;

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3d

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3d

    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    goto :goto_3c
.end method

.method public c(Lcom/a/b/c/b/l;)Ljava/util/BitSet;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v4}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/util/BitSet;->set(IZ)V

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {v0}, Lcom/a/b/c/b/a/p;->d(I)Z

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method
