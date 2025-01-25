.class public abstract Lcom/a/b/c/c/ae;
.super Lcom/a/b/c/c/af;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;)V
    .registers 4

    invoke-direct {p0}, Lcom/a/b/c/c/af;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/a/b/c/c/ae;->a:Lcom/a/b/e/c/ae;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/b/c/c/t;)V
    .registers 4

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/ae;->a:Lcom/a/b/e/c/ae;

    invoke-virtual {v0, v1}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/c/c/bd;

    return-void
.end method

.method public final e()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/ae;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method
