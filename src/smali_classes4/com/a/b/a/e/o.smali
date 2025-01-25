.class public final Lcom/a/b/a/e/o;
.super Lcom/a/b/a/e/n;

# interfaces
.implements Lcom/a/b/a/e/g;


# instance fields
.field private final a:Lcom/a/b/e/d/a;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/a/e/n;-><init>(Lcom/a/b/e/c/ae;ILcom/a/b/e/c/aa;Lcom/a/b/a/e/b;)V

    invoke-virtual {p0}, Lcom/a/b/a/e/o;->f()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-static {p2}, Lcom/a/b/e/b/a;->f(I)Z

    move-result v2

    invoke-virtual {p3}, Lcom/a/b/e/c/aa;->e()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/a/b/e/d/a;->a(Ljava/lang/String;Lcom/a/b/e/d/c;ZZ)Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/e/o;->a:Lcom/a/b/e/d/a;

    return-void
.end method


# virtual methods
.method public j()Lcom/a/b/e/d/a;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/e/o;->a:Lcom/a/b/e/d/a;

    return-object v0
.end method
