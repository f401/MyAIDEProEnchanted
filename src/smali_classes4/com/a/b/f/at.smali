.class Lcom/a/b/f/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/al;


# instance fields
.field final a:Lcom/a/b/f/as;


# direct methods
.method constructor <init>(Lcom/a/b/f/as;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/at;->a:Lcom/a/b/f/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V
    .registers 5

    new-instance v0, Lcom/a/b/f/au;

    iget-object v1, p0, Lcom/a/b/f/at;->a:Lcom/a/b/f/as;

    invoke-direct {v0, v1, p1}, Lcom/a/b/f/au;-><init>(Lcom/a/b/f/as;Lcom/a/b/f/aj;)V

    invoke-virtual {v0}, Lcom/a/b/f/au;->a()V

    return-void
.end method
