.class public Lorg/c/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/c/a/a/c/b/a/d;

.field protected b:Lorg/c/a/a/c/a/a/a;

.field protected c:Lorg/c/a/a/c/c/a/a;

.field protected d:Lorg/c/a/a/c/d/a;

.field protected e:Lorg/c/a/a/c/e/a/a;

.field protected f:Lorg/c/a/a/c/f/a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/c/a/a/c/b/a/d;

    invoke-direct {v0}, Lorg/c/a/a/c/b/a/d;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/c/b/a/d;

    new-instance v0, Lorg/c/a/a/c/a/a/a;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/a/c/a/a/a;

    new-instance v0, Lorg/c/a/a/c/c/a/a;

    invoke-direct {v0}, Lorg/c/a/a/c/c/a/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/a/c/c/a/a;

    new-instance v0, Lorg/c/a/a/c/d/a;

    invoke-direct {v0}, Lorg/c/a/a/c/d/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->d:Lorg/c/a/a/c/d/a;

    new-instance v0, Lorg/c/a/a/c/e/a/a;

    invoke-direct {v0}, Lorg/c/a/a/c/e/a/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->e:Lorg/c/a/a/c/e/a/a;

    new-instance v0, Lorg/c/a/a/c/f/a;

    invoke-direct {v0}, Lorg/c/a/a/c/f/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/a;->f:Lorg/c/a/a/c/f/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/a/a/a;Lorg/c/a/a/a/b/a;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lorg/c/a/a/b/e/a;

    invoke-direct {v0}, Lorg/c/a/a/b/e/a;-><init>()V

    const-string v1, "mainInternalTypeName"

    invoke-virtual {v0, v1, p3}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "loader"

    invoke-virtual {v0, v1, p1}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "printer"

    invoke-virtual {v0, v1, p2}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/c/a/a/a;->a(Lorg/c/a/a/b/e/a;)V

    return-void
.end method

.method protected a(Lorg/c/a/a/b/e/a;)V
    .registers 3

    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/c/b/a/d;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/b/a/d;->a(Lorg/c/a/a/b/e/a;)V

    iget-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/a/c/a/a/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/a/a/a;->a(Lorg/c/a/a/b/e/a;)V

    iget-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/a/c/c/a/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/c/a/a;->a(Lorg/c/a/a/b/e/a;)V

    iget-object v0, p0, Lorg/c/a/a/a;->d:Lorg/c/a/a/c/d/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/d/a;->a(Lorg/c/a/a/b/e/a;)V

    iget-object v0, p0, Lorg/c/a/a/a;->e:Lorg/c/a/a/c/e/a/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/e/a/a;->a(Lorg/c/a/a/b/e/a;)V

    iget-object v0, p0, Lorg/c/a/a/a;->f:Lorg/c/a/a/c/f/a;

    invoke-virtual {v0, p1}, Lorg/c/a/a/c/f/a;->a(Lorg/c/a/a/b/e/a;)V

    return-void
.end method
