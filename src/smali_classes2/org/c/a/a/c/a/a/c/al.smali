.class public Lorg/c/a/a/c/a/a/c/al;
.super Ljava/lang/Object;


# static fields
.field static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/c/a/a/c/a/a/c/al;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/c/a/a/c/a/a/c/al;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/c/a/a/c/a/a/c/o;Lorg/c/a/a/b/d/d/u;Lorg/c/a/a/b/d/d/u;)Lorg/c/a/a/b/d/d/r;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/a/b/c/d;

    invoke-virtual {v0}, Lorg/c/a/a/c/a/a/a/b/c/d;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/c/a/a/b/d/d/u;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/d/d/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/b/d/d/h;

    if-ne v2, v3, :cond_2

    check-cast v0, Lorg/c/a/a/b/d/d/h;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/d/h;->b()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/b/d/b/g;

    if-ne v2, v3, :cond_2

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v3, :cond_2

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/c/a/a/a/b/b/b;

    sget-boolean v3, Lorg/c/a/a/c/a/a/c/al;->a:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v3

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v1

    if-eq v3, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    invoke-virtual {v2}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v0

    move-object v2, v0

    :goto_0
    new-instance v0, Lorg/c/a/a/c/a/a/c/am;

    invoke-direct {v0, v2}, Lorg/c/a/a/c/a/a/c/am;-><init>(Lorg/c/a/a/c/a/a/a/c/a;)V

    invoke-virtual {v0, p2}, Lorg/c/a/a/c/a/a/c/am;->a(Lorg/c/a/a/b/d/d/u;)V

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/c/o;->a(Lorg/c/a/a/c/a/a/a/c/a;)V

    new-instance v0, Lorg/c/a/a/b/d/d/ac;

    invoke-direct {v0, v1, p2}, Lorg/c/a/a/b/d/d/ac;-><init>(Lorg/c/a/a/b/d/b/n;Lorg/c/a/a/b/d/d/b;)V

    return-object v0

    :cond_1
    const-class v2, Lorg/c/a/a/b/d/b/g;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/c/a/a/b/d/b/g;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->d()Lorg/c/a/a/b/d/b/n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/c/a/a/c/a/a/a/b/b/b;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->g()Lorg/c/a/a/b/d/b/n;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/a/b/b/b;

    invoke-virtual {v0}, Lorg/c/a/a/b/d/b/g;->j()Lorg/c/a/a/b/d/b/n;

    move-result-object v0

    invoke-virtual {v1}, Lorg/c/a/a/c/a/a/a/b/b/b;->g()Lorg/c/a/a/c/a/a/a/c/a;

    move-result-object v2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0
.end method
