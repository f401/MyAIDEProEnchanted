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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/ar;->a:Lc/x;

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 5

    :try_start_0
    new-instance v0, Lc/aq;

    iget-object v1, p0, Lc/ar;->a:Lc/x;

    invoke-virtual {v1}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aq;-><init>(Lc/f;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public final l()Lc/s;
    .registers 5

    const-string v0, "unable to get DER object"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lc/ar;->c()Lc/s;

    move-result-object v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v2

    new-instance v3, Lc/r;

    invoke-direct {v3, v0, v2, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    :catch_f
    move-exception v2

    new-instance v3, Lc/r;

    invoke-direct {v3, v0, v2, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method
