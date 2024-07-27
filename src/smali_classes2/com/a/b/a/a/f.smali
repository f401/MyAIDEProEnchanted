.class public final Lcom/a/b/a/a/f;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/c/ae;

.field private final b:Lcom/a/b/e/c/aa;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V
    .registers 5

    const-string v0, "EnclosingMethod"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/f;->a:Lcom/a/b/e/c/ae;

    iput-object p2, p0, Lcom/a/b/a/a/f;->b:Lcom/a/b/e/c/aa;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public b()Lcom/a/b/e/c/ae;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/f;->a:Lcom/a/b/e/c/ae;

    return-object v0
.end method

.method public c()Lcom/a/b/e/c/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/f;->b:Lcom/a/b/e/c/aa;

    return-object v0
.end method
