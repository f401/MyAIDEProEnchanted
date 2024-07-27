.class public Lorg/c/a/a/b/d/d/i;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/l;

.field protected b:Ljava/lang/String;

.field protected c:Lorg/c/a/a/b/d/b/n;

.field protected d:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/i;->a:Lorg/c/a/a/b/d/e/l;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/i;->c:Lorg/c/a/a/b/d/b/n;

    iput-object p4, p0, Lorg/c/a/a/b/d/d/i;->d:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/i;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/i;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/e/l;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/i;->a:Lorg/c/a/a/b/d/e/l;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/i;->c:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/i;->d:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
