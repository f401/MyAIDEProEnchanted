.class public final Lcom/a/b/a/a/g;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/d/e;


# direct methods
.method public constructor <init>(Lcom/a/b/e/d/e;)V
    .registers 4

    const-string v0, "Exceptions"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/a/b/e/d/e;->b_()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "exceptions.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/g;->a:Lcom/a/b/e/d/e;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/g;->a:Lcom/a/b/e/d/e;

    invoke-interface {v0}, Lcom/a/b/e/d/e;->d_()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public b()Lcom/a/b/e/d/e;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/g;->a:Lcom/a/b/e/d/e;

    return-object v0
.end method
