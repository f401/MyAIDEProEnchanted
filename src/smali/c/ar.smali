.class public final Lc/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e;
.implements Lc/bo;


# instance fields
.field public a:Lc/x;


# direct methods
.method public constructor <init>(Lc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/ar;->a:Lc/x;

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .locals 4

    :try_start_0
    new-instance v0, Lc/aq;

    iget-object v1, p0, Lc/ar;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aq;-><init>(Lc/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public final l()Lc/s;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lc/ar;->c()Lc/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lc/r;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lc/r;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
