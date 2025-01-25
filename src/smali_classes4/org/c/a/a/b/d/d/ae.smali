.class public Lorg/c/a/a/b/d/d/ae;
.super Lorg/c/a/a/b/d/d/s;


# instance fields
.field protected a:Ljava/util/List;

.field protected b:Lorg/c/a/a/b/d/d/b;

.field protected c:Ljava/util/List;

.field protected d:Lorg/c/a/a/b/d/d/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ae;->a:Ljava/util/List;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/ae;->b:Lorg/c/a/a/b/d/d/b;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/ae;->c:Ljava/util/List;

    iput-object p4, p0, Lorg/c/a/a/b/d/d/ae;->d:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public constructor <init>(Lorg/c/a/a/b/d/d/b;Ljava/util/List;Lorg/c/a/a/b/d/d/b;)V
    .registers 5

    invoke-direct {p0}, Lorg/c/a/a/b/d/d/s;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/b/d/d/ae;->a:Ljava/util/List;

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ae;->b:Lorg/c/a/a/b/d/d/b;

    iput-object p2, p0, Lorg/c/a/a/b/d/d/ae;->c:Ljava/util/List;

    iput-object p3, p0, Lorg/c/a/a/b/d/d/ae;->d:Lorg/c/a/a/b/d/d/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ae;->b:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/d/t;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/d/t;->a(Lorg/c/a/a/b/d/d/ae;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ae;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Lorg/c/a/a/b/d/d/b;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/d/ae;->d:Lorg/c/a/a/b/d/d/b;

    return-void
.end method

.method public d()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ae;->b:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ae;->c:Ljava/util/List;

    return-object v0
.end method

.method public f()Lorg/c/a/a/b/d/d/b;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/d/ae;->d:Lorg/c/a/a/b/d/d/b;

    return-object v0
.end method
