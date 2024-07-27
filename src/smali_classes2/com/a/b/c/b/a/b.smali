.class public final Lcom/a/b/c/b/a/b;
.super Lcom/a/b/c/b/r;


# static fields
.field public static final a:Lcom/a/b/c/b/r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/c/b/a/b;

    invoke-direct {v0}, Lcom/a/b/c/b/a/b;-><init>()V

    sput-object v0, Lcom/a/b/c/b/a/b;->a:Lcom/a/b/c/b/r;

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
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/a/b/g/a;Lcom/a/b/c/b/l;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/a/b/c/b/a/b;->a(Lcom/a/b/c/b/l;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/a/b/c/b/a/b;->a(Lcom/a/b/g/a;S)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;Z)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    return-object v0
.end method

.method public b(Lcom/a/b/c/b/l;)Z
    .registers 3

    instance-of v0, p1, Lcom/a/b/c/b/aj;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/b/c/b/l;->l()Lcom/a/b/e/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/x;->d_()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
