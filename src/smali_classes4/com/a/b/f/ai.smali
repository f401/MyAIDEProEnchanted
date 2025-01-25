.class public final Lcom/a/b/f/ai;
.super Ljava/lang/Object;


# direct methods
.method static a(I)Lcom/a/b/g/o;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Lcom/a/b/g/b;

    invoke-direct {v0, p0}, Lcom/a/b/g/b;-><init>(I)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/a/b/g/r;

    invoke-direct {v0}, Lcom/a/b/g/r;-><init>()V

    goto :goto_9
.end method

.method public static b(I)Lcom/a/b/g/o;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Lcom/a/b/g/b;

    invoke-direct {v0, p0}, Lcom/a/b/g/b;-><init>(I)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/a/b/g/r;

    invoke-direct {v0}, Lcom/a/b/g/r;-><init>()V

    goto :goto_9
.end method

.method static c(I)Lcom/a/b/g/o;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Lcom/a/b/g/b;

    invoke-direct {v0, p0}, Lcom/a/b/g/b;-><init>(I)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/a/b/g/r;

    invoke-direct {v0}, Lcom/a/b/g/r;-><init>()V

    goto :goto_9
.end method
