.class Lcom/a/b/f/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/ao;


# instance fields
.field final a:Lcom/a/b/f/n;


# direct methods
.method constructor <init>(Lcom/a/b/f/n;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/o;->a:Lcom/a/b/f/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/ac;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/a/b/f/z;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/a/b/f/z;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/f/o;->a:Lcom/a/b/f/n;

    invoke-static {v0}, Lcom/a/b/f/n;->a(Lcom/a/b/f/n;)Lcom/a/b/f/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/a/b/f/l;->a(Lcom/a/b/f/l;Lcom/a/b/f/an;)V

    return-void
.end method
