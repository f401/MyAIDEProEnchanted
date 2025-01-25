.class Lcom/a/b/e/b/v;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/a/b/e/b/w;
    .registers 3

    new-instance v0, Lcom/a/b/e/b/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/b/e/b/w;-><init>(Lcom/a/b/e/b/w;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/b/v;->a()Lcom/a/b/e/b/w;

    move-result-object v0

    return-object v0
.end method
