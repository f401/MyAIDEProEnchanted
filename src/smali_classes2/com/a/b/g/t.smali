.class public Lcom/a/b/g/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/a/b/g/t;->a:Z

    return-void
.end method


# virtual methods
.method public final b_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    return v0
.end method

.method public c_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Lcom/a/b/g/t;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/a/b/g/u;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Lcom/a/b/g/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
