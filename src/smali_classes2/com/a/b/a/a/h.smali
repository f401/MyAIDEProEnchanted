.class public final Lcom/a/b/a/a/h;
.super Lcom/a/b/a/a/u;


# instance fields
.field private final a:Lcom/a/b/a/a/x;


# direct methods
.method public constructor <init>(Lcom/a/b/a/a/x;)V
    .registers 4

    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lcom/a/b/a/a/u;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/a/b/a/a/x;->b_()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "innerClasses.isMutable()"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "innerClasses == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/a/b/a/a/h;->a:Lcom/a/b/a/a/x;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/h;->a:Lcom/a/b/a/a/x;

    invoke-virtual {v0}, Lcom/a/b/a/a/x;->d_()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public b()Lcom/a/b/a/a/x;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/a/h;->a:Lcom/a/b/a/a/x;

    return-object v0
.end method
