.class public abstract Lcom/a/b/e/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/g/w;
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/b/e/c/a;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/b/e/c/a;->b(Lcom/a/b/e/c/a;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract b(Lcom/a/b/e/c/a;)I
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/a/b/e/c/a;

    invoke-virtual {p0, p1}, Lcom/a/b/e/c/a;->a(Lcom/a/b/e/c/a;)I

    move-result v0

    return v0
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/String;
.end method
