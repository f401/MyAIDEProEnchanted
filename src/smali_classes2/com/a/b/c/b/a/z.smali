.class public final Lcom/a/b/c/b/a/z;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/z;

    invoke-direct {v0}, Lcom/a/b/c/b/a/z;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/z;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/v;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/a/b/c/b/a/z;->a(Lcom/a/b/e/c/v;)Ljava/lang/String;

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

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/a/b/c/b/i;

    invoke-virtual {v0}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/u;

    invoke-virtual {v0}, Lcom/a/b/e/c/u;->k()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/u;->g()I

    move-result v0

    invoke-static {p2, v0}, Lcom/a/b/c/b/a/z;->a(Lcom/a/b/c/b/l;I)S

    move-result v0

    invoke-static {p1, v0, v2, v3}, Lcom/a/b/c/b/a/z;->a(Lcom/a/b/g/a;SJ)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 5

    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/v;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/a/b/c/b/a/z;->a(Lcom/a/b/e/c/v;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v1

    instance-of v2, p1, Lcom/a/b/c/b/i;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v0}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/u;->g()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/c/b/a/z;->d(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/a/b/c/b/i;

    invoke-virtual {p1}, Lcom/a/b/c/b/i;->c()Lcom/a/b/e/c/a;

    move-result-object v0

    instance-of v0, v0, Lcom/a/b/e/c/u;

    goto :goto_0
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

    invoke-static {v0}, Lcom/a/b/c/b/a/z;->d(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/BitSet;->set(IZ)V

    return-object v1
.end method
