.class public final Lcom/a/b/c/b/aa;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/b/ab;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/a/b/c/a;IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/c/b/ab;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/a/b/c/b/ab;-><init>(Lcom/a/b/c/a;III)V

    iput-object v0, p0, Lcom/a/b/c/b/aa;->a:Lcom/a/b/c/b/ab;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/a/b/c/b/aa;->a:Lcom/a/b/c/b/ab;

    iget-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/l;

    invoke-virtual {v3, v0}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/l;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/a/b/c/b/ab;
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/a/b/c/b/aa;->b()V

    iget-object v0, p0, Lcom/a/b/c/b/aa;->a:Lcom/a/b/c/b/ab;

    return-object v0
.end method

.method public a(ILcom/a/b/c/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/a/b/c/b/aa;->a:Lcom/a/b/c/b/ab;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/c/b/ab;->a(ILcom/a/b/c/b/h;)V

    return-void
.end method

.method public a(Lcom/a/b/c/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/aa;->a:Lcom/a/b/c/b/ab;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/ab;->a(Lcom/a/b/c/b/l;)V

    return-void
.end method

.method public b(Lcom/a/b/c/b/l;)V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/b/aa;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
