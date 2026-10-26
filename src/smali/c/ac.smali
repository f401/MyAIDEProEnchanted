.class public final Lc/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e;
.implements Lc/bo;


# instance fields
.field public final a:I

.field public final b:Lc/x;


# direct methods
.method public constructor <init>(ILc/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/ac;->a:I

    iput-object p2, p0, Lc/ac;->b:Lc/x;

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .locals 3

    new-instance v0, Lc/ab;

    iget v1, p0, Lc/ac;->a:I

    iget-object v2, p0, Lc/ac;->b:Lc/x;

    invoke-virtual {v2}, Lc/x;->f()Lc/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/ab;-><init>(ILc/f;)V

    return-object v0
.end method

.method public final l()Lc/s;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lc/ac;->c()Lc/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
