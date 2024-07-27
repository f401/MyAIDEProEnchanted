.class final Lcom/a/b/a/d/g;
.super Lcom/a/b/a/d/h;


# instance fields
.field private final a:Lcom/a/b/a/e/m;


# direct methods
.method public constructor <init>(Lcom/a/b/a/d/e;Lcom/a/b/e/c/ae;ILcom/a/b/a/d/b;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/a/d/h;-><init>(Lcom/a/b/a/d/e;Lcom/a/b/e/c/ae;ILcom/a/b/a/d/b;)V

    new-instance v0, Lcom/a/b/a/e/m;

    invoke-virtual {p0}, Lcom/a/b/a/d/g;->f()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/m;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/d/g;->a:Lcom/a/b/a/e/m;

    return-void
.end method


# virtual methods
.method protected a(IILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)Lcom/a/b/a/e/f;
    .registers 7

    new-instance v0, Lcom/a/b/a/e/l;

    invoke-virtual {p0}, Lcom/a/b/a/d/g;->g()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/a/b/a/e/l;-><init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V

    iget-object v1, p0, Lcom/a/b/a/d/g;->a:Lcom/a/b/a/e/m;

    invoke-virtual {v1, p1, v0}, Lcom/a/b/a/e/m;->a(ILcom/a/b/a/e/d;)V

    return-object v0
.end method

.method public a()Lcom/a/b/a/e/m;
    .registers 2

    invoke-virtual {p0}, Lcom/a/b/a/d/g;->e()V

    iget-object v0, p0, Lcom/a/b/a/d/g;->a:Lcom/a/b/a/e/m;

    return-object v0
.end method

.method protected a(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/a/b/e/b/a;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "field"

    return-object v0
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
