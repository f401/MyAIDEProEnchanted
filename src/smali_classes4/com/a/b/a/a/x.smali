.class public final Lcom/a/b/a/a/x;
.super Lcom/a/b/g/j;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/a/b/g/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/a/b/a/a/y;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/a/b/a/a/x;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/a/y;

    return-object v0
.end method

.method public a(ILcom/a/b/e/c/ae;Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ad;I)V
    .registers 7

    new-instance v0, Lcom/a/b/a/a/y;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/a/b/a/a/y;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ad;I)V

    invoke-virtual {p0, p1, v0}, Lcom/a/b/a/a/x;->a(ILjava/lang/Object;)V

    return-void
.end method
