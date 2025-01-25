.class Labcd/pG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/qG;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Labcd/dG;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/qG;

.field j6:Labcd/dG;


# direct methods
.method constructor <init>(Labcd/qG;Labcd/dG;)V
    .registers 3

    iput-object p1, p0, Labcd/pG;->DW:Labcd/qG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/pG;->j6:Labcd/dG;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Labcd/pG;->j6:Labcd/dG;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Labcd/dG;
    .registers 3

    :try_start_0
    iget-object v0, p0, Labcd/pG;->j6:Labcd/dG;

    iget-object v1, p0, Labcd/pG;->DW:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v1

    iput-object v1, p0, Labcd/pG;->j6:Labcd/dG;
    :try_end_a
    .catch Labcd/fD; {:try_start_0 .. :try_end_a} :catch_19
    .catch Labcd/ZC; {:try_start_0 .. :try_end_a} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_12
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_19
    move-exception v0

    new-instance v1, Labcd/qD;

    invoke-direct {v1, v0}, Labcd/qD;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/pG;->next()Labcd/dG;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
