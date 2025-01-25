.class public final Lc/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public a:Lc/j;

.field public b:Lc/s;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/j;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc/j;-><init>([BZ)V

    iput-object v0, p0, Lc/bq;->a:Lc/j;

    invoke-virtual {p0}, Lc/bq;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/s;

    iput-object p1, p0, Lc/bq;->b:Lc/s;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lc/bq;->a:Lc/j;

    invoke-virtual {v0}, Lc/j;->j()Lc/s;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed DER construction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lc/bq;->b:Lc/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lc/bq;->b:Lc/s;

    invoke-virtual {p0}, Lc/bq;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/s;

    iput-object v1, p0, Lc/bq;->b:Lc/s;

    return-object v0
.end method
