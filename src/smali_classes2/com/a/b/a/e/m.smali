.class public final Lcom/a/b/a/e/m;
.super Lcom/a/b/g/j;

# interfaces
.implements Lcom/a/b/a/e/e;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/e/d;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/e/m;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/e/d;

    return-object v0
.end method

.method public a(ILcom/a/b/a/e/d;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/e/m;->a(ILjava/lang/Object;)V

    return-void
.end method
