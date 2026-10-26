.class public final Lc/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/w;


# instance fields
.field public final a:I

.field public b:Lc/x;


# direct methods
.method public synthetic constructor <init>(Lc/x;I)V
    .locals 0

    iput p2, p0, Lc/ak;->a:I

    iput-object p1, p0, Lc/ak;->b:Lc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .locals 3

    iget v0, p0, Lc/ak;->a:I

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lc/bd;

    iget-object v1, p0, Lc/ak;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/bd;-><init>(Lc/f;Z)V

    :goto_0
    return-object v0

    .line 1
    :cond_0
    new-instance v0, Lc/aj;

    iget-object v1, p0, Lc/ak;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aj;-><init>(Lc/f;)V

    goto :goto_0
.end method

.method public final l()Lc/s;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lc/ak;->a:I

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc/ak;->c()Lc/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc/ak;->c()Lc/s;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
