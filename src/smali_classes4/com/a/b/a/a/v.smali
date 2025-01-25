.class public abstract Lcom/a/b/a/a/v;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/a/b/t;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/a/b/t;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p2}, Lcom/a/b/a/b/t;->b_()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "localVariables.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "localVariables == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p2, p0, Lcom/a/b/a/a/v;->a:Lcom/a/b/a/b/t;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/v;->a:Lcom/a/b/a/b/t;

    invoke-virtual {v0}, Lcom/a/b/a/b/t;->d_()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final b()Lcom/a/b/a/b/t;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/v;->a:Lcom/a/b/a/b/t;

    return-object v0
.end method
