.class public Lorg/c/a/a/b/d/d/ag;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Lorg/c/a/a/b/d/e/i;

.field protected b:Ljava/lang/String;

.field protected c:Lorg/c/a/a/b/d/b/n;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/e/i;Ljava/lang/String;Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ag;->a:Lorg/c/a/a/b/d/e/i;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/ag;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/b/n;)V
    .locals 0

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/ag;)V

    return-void
.end method

.method public b()Lorg/c/a/a/b/d/e/i;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ag;->a:Lorg/c/a/a/b/d/e/i;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lorg/c/a/a/b/d/b/n;
    .locals 1

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ag;->c:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method
