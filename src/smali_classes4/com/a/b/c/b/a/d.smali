.class public final Lcom/a/b/c/b/a/d;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/d;

    invoke-direct {v0}, Lcom/a/b/c/b/a/d;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/d;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 5

    invoke-virtual {p2}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/a/b/c/b/a/d;->a(Lcom/a/b/c/b/l;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/a/b/c/b/a/d;->a(Lcom/a/b/g/a;S)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v2

    instance-of v3, p1, Lcom/a/b/c/b/aj;

    if-eqz v3, :cond_1f

    invoke-virtual {v2}, Lcom/a/b/e/b/x;->d_()I

    move-result v3

    if-ne v3, v0, :cond_1f

    invoke-virtual {v2, v1}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    invoke-static {v2}, Lcom/a/b/c/b/a/d;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
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

    invoke-static {v0}, Lcom/a/b/c/b/a/d;->d(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method
