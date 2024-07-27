.class public final Lcom/a/b/a/e/l;
.super Lcom/a/b/a/e/n;

# interfaces
.implements Lcom/a/b/a/e/d;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/a/e/n;-><init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/a/b/e/c/ag;
    .registers 3

    invoke-virtual {p0}, Lcom/a/b/a/e/l;->h()Lcom/a/b/a/e/b;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-interface {v0, v1}, Lcom/a/b/a/e/b;->a(Ljava/lang/String;)Lcom/a/b/a/e/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/a/b/a/a/d;->b()Lcom/a/b/e/c/ag;

    move-result-object v0

    goto :goto_0
.end method
