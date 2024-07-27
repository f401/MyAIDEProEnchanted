.class public Lorg/c/a/a/b/d/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/aj;


# instance fields
.field protected a:Lorg/c/a/a/b/d/b/n;


# direct methods
.method public constructor <init>(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method


# virtual methods
.method public a()Lorg/c/a/a/b/d/b/n;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/d/a/m;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/d/a/m;->a(Lorg/c/a/a/b/d/a/p;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/b/n;)V
    .registers 2

    iput-object p1, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v2, p1, Lorg/c/a/a/b/d/a/p;

    if-eqz v2, :cond_1

    check-cast p1, Lorg/c/a/a/b/d/a/p;

    iget-object v2, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    iget-object v3, p1, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/b/d/a/p;->a:Lorg/c/a/a/b/d/b/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
