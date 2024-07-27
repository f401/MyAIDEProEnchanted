.class Lio/fabric/sdk/android/j;
.super Labcd/ez;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lez",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final QX:Lio/fabric/sdk/android/Kit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/Kit",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/Kit",
            "<TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Labcd/ez;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    return-void
.end method

.method private j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lio/fabric/sdk/android/services/common/D;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KitInitialization"

    invoke-direct {v1, v0, v2}, Lio/fabric/sdk/android/services/common/D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/D;->j6()V

    return-object v1
.end method


# virtual methods
.method protected DW(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Kit;->onCancelled(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Initialization was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lio/fabric/sdk/android/i;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/i;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    iget-object v0, v0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/h;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/h;->j6(Ljava/lang/Exception;)V

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

    const/4 v5, 0x1

    invoke-super {p0}, Labcd/Xy;->VH()V

    const-string v0, "onPreExecute"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/j;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->onPreExecute()Z
    :try_end_0
    .catch Labcd/mz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/D;->DW()V

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v5}, Labcd/Xy;->DW(Z)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failure onPreExecute()"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/D;->DW()V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/D;->DW()V

    invoke-virtual {p0, v5}, Labcd/Xy;->DW(Z)Z

    throw v0
.end method

.method protected bridge synthetic j6([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/j;->j6([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs j6([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResult;"
        }
    .end annotation

    const-string v0, "doInBackground"

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/j;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/D;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Xy;->Zo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/j;->QX:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/D;->DW()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v5()Labcd/cz;
    .registers 2

    sget-object v0, Labcd/cz;->FH:Labcd/cz;

    return-object v0
.end method
