.class public abstract Lcom/a/b/a/a/w;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/e/a/d;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/a/b/e/a/d;I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {p2}, Lcom/a/b/e/a/d;->b_()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "parameterAnnotations.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parameterAnnotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p2, p0, Lcom/a/b/a/a/w;->a:Lcom/a/b/e/a/d;

    iput p3, p0, Lcom/a/b/a/a/w;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/a/w;->b:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public final b()Lcom/a/b/e/a/d;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/w;->a:Lcom/a/b/e/a/d;

    return-object v0
.end method
