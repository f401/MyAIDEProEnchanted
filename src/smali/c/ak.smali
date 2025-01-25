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
    .registers 3

    iput p2, p0, Lc/ak;->a:I

    iput-object p1, p0, Lc/ak;->b:Lc/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 4

    iget v0, p0, Lc/ak;->a:I

    if-eqz v0, :cond_11

    .line 2
    new-instance v0, Lc/bd;

    iget-object v1, p0, Lc/ak;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/bd;-><init>(Lc/f;Z)V

    return-object v0

    .line 1
    :cond_11
    new-instance v0, Lc/aj;

    iget-object v1, p0, Lc/ak;->b:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aj;-><init>(Lc/f;)V

    return-object v0
.end method

.method public final l()Lc/s;
    .registers 5

    iget v0, p0, Lc/ak;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lc/ak;->c()Lc/s;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    new-instance v2, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lc/ak;->c()Lc/s;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    new-instance v2, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
