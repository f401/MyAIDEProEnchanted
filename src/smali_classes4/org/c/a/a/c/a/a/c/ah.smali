.class public Lorg/c/a/a/c/a/a/c/ah;
.super Lorg/c/a/a/b/d/a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/c/a/a/b/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/c/a/a/c/a/a/c/ah;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/ac;)V
    .registers 5

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/ac;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/a/r;)V
    .registers 5

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    invoke-virtual {p1}, Lorg/c/a/a/b/d/a/r;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/c/a/a/c/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lorg/c/a/a/c/a/a/c/ah;->b:Z

    return v0
.end method
