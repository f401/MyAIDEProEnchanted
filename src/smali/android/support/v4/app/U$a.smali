.class final Landroid/support/v4/app/U$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/content/Loader$c;
.implements Landroid/support/v4/content/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/U;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$c",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/Loader$b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Landroid/os/Bundle;

.field EQ:Z

.field FH:Landroid/support/v4/app/T$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/T$a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field J0:Z

.field J8:Landroid/support/v4/app/U$a;

.field VH:Ljava/lang/Object;

.field final Ws:Landroid/support/v4/app/U;

.field Zo:Z

.field gn:Z

.field final j6:I

.field tp:Z

.field u7:Z

.field v5:Z

.field we:Z


# virtual methods
.method DW()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->tp:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->Zo()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v1, v1, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v1, :cond_4

    iget-object v1, v1, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iget-object v0, v1, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    :try_start_0
    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  onLoadFinished in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/T$a;->j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v2, v2, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v2, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method FH()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method Hw()V
    .registers 3

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->tp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    return-void
.end method

.method Zo()V
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v2, p0, Landroid/support/v4/app/U$a;->gn:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroid/support/v4/app/U$a;->J0:Z

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->DW(Landroid/support/v4/content/Loader$b;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->aM()V

    :cond_1
    return-void
.end method

.method j6()V
    .registers 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Destroying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    iput-boolean v4, p0, Landroid/support/v4/app/U$a;->Zo:Z

    iget-object v1, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_6

    iget-object v1, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iget-object v0, v1, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    move-object v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    iget-object v3, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v3}, Landroid/support/v4/app/T$a;->j6(Landroid/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_2
    iput-object v2, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    iput-object v2, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    iput-boolean v4, p0, Landroid/support/v4/app/U$a;->v5:Z

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Landroid/support/v4/app/U$a;->J0:Z

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->DW(Landroid/support/v4/content/Loader$b;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->Ws()V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/U$a;->j6()V

    :cond_5
    return-void

    :cond_6
    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v2, v2, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v2, :cond_7

    iget-object v2, v2, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v2, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_7
    throw v0
.end method

.method public j6(Landroid/support/v4/content/Loader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_1

    sget-boolean v1, Landroid/support/v4/app/U;->j6:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Switching to pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "LoaderManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v3, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v1, v1, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v1, v2, v3}, Labcd/y;->DW(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->j6()V

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/U$a;)V

    goto :goto_0
.end method

.method public j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_5

    sget-boolean v1, Landroid/support/v4/app/U;->j6:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Switching to pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "LoaderManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object v3, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v1, v1, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v1, v2, v3}, Labcd/y;->DW(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->j6()V

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/U$a;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    if-ne v0, p2, :cond_6

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-nez v0, :cond_7

    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->FH:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/U$a;->Zo:Z

    invoke-virtual {v0}, Landroid/support/v4/app/U$a;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->FH:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1}, Labcd/y;->v5(I)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v1, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/U;->gn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->er()V

    goto/16 :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->DW:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->tp:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->J0:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/U$a;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Labcd/o;->j6(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v5()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->tp:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Landroid/support/v4/app/U$a;->gn:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v4/app/U$a;->gn:Z

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    iget-object v2, p0, Landroid/support/v4/app/U$a;->DW:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/T$a;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->j6(ILandroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$b;)V

    iput-boolean v3, p0, Landroid/support/v4/app/U$a;->J0:Z

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->XL()V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
