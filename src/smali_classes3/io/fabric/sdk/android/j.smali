.class Lio/fabric/sdk/android/j;
.super Labcd/ez;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lez<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final QX:Lio/fabric/sdk/android/Kit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/Kit<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/Kit<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/ez;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    return-void
.end method

.method private j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lio/fabric/sdk/android/services/common/D;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KitInitialization"

    invoke-direct {p1, v0, v1}, Lio/fabric/sdk/android/services/common/D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/D;->j6()V

    return-object p1
.end method


# virtual methods
.method protected DW(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Kit;->onCancelled(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Initialization was cancelled"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lio/fabric/sdk/android/i;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/i;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    iget-object p1, p1, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/h;

    invoke-interface {p1, v0}, Lio/fabric/sdk/android/h;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method protected FH(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Kit;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/h;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/h;->j6(Ljava/lang/Object;)V

    return-void
.end method

.method protected VH()V
    .registers 7

    invoke-super {p0}, Labcd/Xy;->VH()V

    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/j;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_a
    iget-object v2, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z

    move-result v2
    :try_end_10
    .catch Labcd/mz; {:try_start_a .. :try_end_10} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_18
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/D;->DW()V

    if-nez v2, :cond_2a

    goto :goto_27

    :catchall_16
    move-exception v2

    goto :goto_2d

    :catch_18
    move-exception v2

    :try_start_19
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Failure onPreExecute()"

    invoke-interface {v3, v4, v5, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_16

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/D;->DW()V

    :goto_27
    invoke-virtual {p0, v1}, Labcd/Xy;->DW(Z)Z

    :cond_2a
    return-void

    :catch_2b
    move-exception v2

    :try_start_2c
    throw v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_16

    :goto_2d
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/D;->DW()V

    invoke-virtual {p0, v1}, Labcd/Xy;->DW(Z)Z

    throw v2
.end method

.method protected bridge synthetic j6([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/j;->j6([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs j6([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    const-string p1, "doInBackground"

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/j;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;

    move-result-object p1

    invoke-virtual {p0}, Labcd/Xy;->Zo()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/D;->DW()V

    return-object v0
.end method

.method public v5()Labcd/cz;
    .registers 2

    sget-object v0, Labcd/cz;->FH:Labcd/cz;

    return-object v0
.end method
