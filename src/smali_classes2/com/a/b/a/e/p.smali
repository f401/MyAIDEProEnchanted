.class public final Lcom/a/b/a/e/p;
.super Lcom/a/b/g/j;

# interfaces
.implements Lcom/a/b/a/e/h;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/e/g;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/a/b/a/e/p;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/e/g;

    return-object v0
.end method

.method public a(ILcom/a/b/a/e/g;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/a/b/a/e/p;->a(ILjava/lang/Object;)V

    return-void
.end method
