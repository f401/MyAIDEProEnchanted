.class public abstract Lorg/c/a/a/b/d/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/a/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic h()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/c/a/a/b/d/a/aa;->i()Lorg/c/a/a/b/d/a/z;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/c/a/a/b/d/a/z;
    .locals 0

    return-object p0
.end method

.method public j_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l_()Lorg/c/a/a/d/c;
    .locals 1

    invoke-static {p0}, Lorg/c/a/a/d/b;->b(Lorg/c/a/a/d/a;)Lorg/c/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
