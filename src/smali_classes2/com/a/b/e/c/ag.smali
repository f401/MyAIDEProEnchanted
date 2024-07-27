.class public abstract Lcom/a/b/e/c/ag;
.super Lcom/a/b/e/c/a;

# interfaces
.implements Lcom/a/b/e/d/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/e/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/a/b/e/d/d;
    .registers 1

    return-object p0
.end method

.method public final c()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/ag;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->c()I

    move-result v0

    return v0
.end method

.method public final e()I
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/e/c/ag;->a()Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/c;->e()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
