.class Lcom/a/b/c/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/c/b/k;


# instance fields
.field final a:Lcom/a/b/c/c/n;

.field private final b:Lcom/a/b/c/c/t;


# direct methods
.method constructor <init>(Lcom/a/b/c/c/n;Lcom/a/b/c/c/t;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/c/c/o;->a:Lcom/a/b/c/c/n;

    iput-object p2, p0, Lcom/a/b/c/c/o;->b:Lcom/a/b/c/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/c/a;)I
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/c/o;->b:Lcom/a/b/c/c/t;

    invoke-virtual {v0, p1}, Lcom/a/b/c/c/t;->b(Lcom/a/b/e/c/a;)Lcom/a/b/c/c/af;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/c/c/af;->g()I

    move-result v0

    goto :goto_0
.end method
