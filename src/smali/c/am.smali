.class public final Lc/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/e;
.implements Lc/bo;


# instance fields
.field public a:Z

.field public b:I

.field public d:Lc/x;


# direct methods
.method public constructor <init>(ZILc/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/am;->a:Z

    iput p2, p0, Lc/am;->b:I

    iput-object p3, p0, Lc/am;->d:Lc/x;

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 4

    iget-object v0, p0, Lc/am;->d:Lc/x;

    iget-boolean v1, p0, Lc/am;->a:Z

    iget v2, p0, Lc/am;->b:I

    invoke-virtual {v0, v1, v2}, Lc/x;->e(ZI)Lc/s;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lc/s;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lc/am;->c()Lc/s;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/r;-><init>(Ljava/lang/String;)V

    throw v1
.end method
