.class public final Lcom/a/b/c/b/a/q;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/q;

    invoke-direct {v0}, Lcom/a/b/c/b/a/q;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/q;->a:Lcom/a/b/c/b/r;

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

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/a/b/c/b/l;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/a/b/c/b/a/q;->d(Lcom/a/b/c/b/l;)Ljava/lang/String;

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

    invoke-static {p2, v1}, Lcom/a/b/c/b/a/q;->a(Lcom/a/b/c/b/l;I)S

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/a/b/c/b/a/q;->a(Lcom/a/b/g/a;SI)V

    return-void
.end method

.method public a(Lcom/a/b/c/b/am;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/a/b/c/b/a/q;->e(Lcom/a/b/c/b/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 3

    instance-of v0, p1, Lcom/a/b/c/b/am;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
