.class public final Lc/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# instance fields
.field public final a:I

.field public b:Lc/x;


# direct methods
.method public synthetic constructor <init>(Lc/x;I)V
    .registers 3

    iput p2, p0, Lc/ai;->a:I

    iput-object p1, p0, Lc/ai;->b:Lc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 4

    iget v0, p0, Lc/ai;->a:I

    if-eqz v0, :cond_11

    .line 2
    new-instance v0, Lc/bc;

    iget-object v1, p0, Lc/ai;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v0

    .line 1
    :cond_11
    new-instance v0, Lc/ah;

    iget-object v1, p0, Lc/ai;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/ah;-><init>(Lc/f;)V

    return-object v0
.end method

.method public final l()Lc/s;
    .registers 3

    iget v0, p0, Lc/ai;->a:I

    if-eqz v0, :cond_14

    .line 2
    :try_start_4
    invoke-virtual {p0}, Lc/ai;->c()Lc/s;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lc/ai;->c()Lc/s;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
