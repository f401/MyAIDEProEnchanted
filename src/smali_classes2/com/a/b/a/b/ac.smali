.class Lcom/a/b/a/b/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/e/b/c;


# instance fields
.field final a:Lcom/a/b/a/b/ab;

.field private final b:Lcom/a/b/g/n;


# direct methods
.method constructor <init>(Lcom/a/b/a/b/ab;Lcom/a/b/g/n;)V
    .registers 3

    iput-object p1, p0, Lcom/a/b/a/b/ac;->a:Lcom/a/b/a/b/ab;

    iput-object p2, p0, Lcom/a/b/a/b/ac;->b:Lcom/a/b/g/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/a/b/ac;->a:Lcom/a/b/a/b/ab;

    invoke-static {v0, p1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/a/b/ac;->b:Lcom/a/b/g/n;

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/a/b/g/n;->c(I)V

    :cond_0
    return-void
.end method
