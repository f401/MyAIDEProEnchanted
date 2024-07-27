.class public Lorg/c/a/a/c/d/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/b/f;


# instance fields
.field protected a:Lorg/c/a/a/d/c;

.field protected b:Lorg/c/a/a/d/c;

.field protected c:Lorg/c/a/a/c/d/a/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/c;->a:Lorg/c/a/a/d/c;

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/c/d/c/c;->c:Lorg/c/a/a/c/d/a/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/d/c;
    .registers 6

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->a:Lorg/c/a/a/d/c;

    new-instance v1, Lorg/c/a/a/c/d/a/a;

    iget-object v2, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/c/a/a/c/d/c/c;->c:Lorg/c/a/a/c/d/a/a;

    invoke-direct {v1, v2, v3, v4}, Lorg/c/a/a/c/d/a/a;-><init>(Lorg/c/a/a/d/c;Lorg/c/a/a/b/b/c;Lorg/c/a/a/c/d/a/a;)V

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->a:Lorg/c/a/a/d/c;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/b/a;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/b;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/c;)V
    .registers 6

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->a:Lorg/c/a/a/d/c;

    new-instance v1, Lorg/c/a/a/c/d/a/a;

    iget-object v2, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    iget-object v3, p0, Lorg/c/a/a/c/d/c/c;->c:Lorg/c/a/a/c/d/a/a;

    invoke-direct {v1, v2, p1, v3}, Lorg/c/a/a/c/d/a/a;-><init>(Lorg/c/a/a/d/c;Lorg/c/a/a/b/b/c;Lorg/c/a/a/c/d/a/a;)V

    iput-object v1, p0, Lorg/c/a/a/c/d/c/c;->c:Lorg/c/a/a/c/d/a/a;

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/c/a/a/d/c;

    invoke-direct {v0}, Lorg/c/a/a/d/c;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/d;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/g;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/h;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/b/i;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/c/d/c/c;->b:Lorg/c/a/a/d/c;

    invoke-virtual {v0, p1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    return-void
.end method
