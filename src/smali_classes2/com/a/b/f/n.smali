.class Lcom/a/b/f/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/f/al;


# instance fields
.field final a:Lcom/a/b/f/l;


# direct methods
.method constructor <init>(Lcom/a/b/f/l;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/f/n;->a:Lcom/a/b/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/f/n;)Lcom/a/b/f/l;
    .registers 2

    iget-object v0, p0, Lcom/a/b/f/n;->a:Lcom/a/b/f/l;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/b/f/aj;Lcom/a/b/f/aj;)V
    .registers 4

    new-instance v0, Lcom/a/b/f/o;

    invoke-direct {v0, p0}, Lcom/a/b/f/o;-><init>(Lcom/a/b/f/n;)V

    invoke-virtual {p1, v0}, Lcom/a/b/f/aj;->a(Lcom/a/b/f/ao;)V

    return-void
.end method
