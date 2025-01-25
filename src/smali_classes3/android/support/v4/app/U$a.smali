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
        "Landroid/support/v4/content/Loader$c<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/Loader$b<",
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
            "Landroid/support/v4/app/T$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field Hw:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
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

    if-eqz v0, :cond_2c

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->tp:Z

    if-eq v0, v1, :cond_2c

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->Zo()V

    :cond_2c
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    if-eqz v0, :cond_59

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_13

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iget-object v1, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    const-string v2, "onLoadFinished"

    iput-object v2, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    :try_start_14
    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_3a

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

    :cond_3a
    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/T$a;->j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_4d

    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p1, p1, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz p1, :cond_49

    iget-object p1, p1, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, p1, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_49
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/U$a;->Zo:Z

    goto :goto_59

    :catchall_4d
    move-exception p1

    iget-object p2, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p2, p2, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz p2, :cond_58

    iget-object p2, p2, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, p2, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_58
    throw p1

    :cond_59
    :goto_59
    return-void
.end method

.method FH()V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->EQ:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method Hw()V
    .registers 3

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
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

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->u7:Z

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v1, :cond_38

    iget-boolean v2, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-eqz v2, :cond_38

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->J0:Z

    invoke-virtual {v1, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->DW(Landroid/support/v4/content/Loader$b;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->aM()V

    :cond_38
    return-void
.end method

.method j6()V
    .registers 6

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/U$a;->Zo:Z

    iget-object v3, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_77

    iget-object v3, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v3, :cond_77

    iget-boolean v3, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-eqz v3, :cond_77

    if-eqz v0, :cond_77

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Resetting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_58

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iget-object v1, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    const-string v3, "onLoaderReset"

    iput-object v3, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    goto :goto_59

    :cond_58
    move-object v1, v4

    :goto_59
    :try_start_59
    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    iget-object v3, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-interface {v0, v3}, Landroid/support/v4/app/T$a;->j6(Landroid/support/v4/content/Loader;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6b

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v0, :cond_77

    iget-object v0, v0, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v0, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    goto :goto_77

    :catchall_6b
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v2, v2, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz v2, :cond_76

    iget-object v2, v2, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    iput-object v1, v2, Landroid/support/v4/app/x;->yS:Ljava/lang/String;

    :cond_76
    throw v0

    :cond_77
    :goto_77
    iput-object v4, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    iput-object v4, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/support/v4/app/U$a;->v5:Z

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_94

    iget-boolean v1, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-eqz v1, :cond_8f

    iput-boolean v2, p0, Landroid/support/v4/app/U$a;->J0:Z

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->DW(Landroid/support/v4/content/Loader$b;)V

    :cond_8f
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->Ws()V

    :cond_94
    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_9b

    invoke-virtual {v0}, Landroid/support/v4/app/U$a;->j6()V

    :cond_9b
    return-void
.end method

.method public j6(Landroid/support/v4/content/Loader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    const-string v0, "LoaderManager"

    if-eqz p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadCanceled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean p1, p0, Landroid/support/v4/app/U$a;->we:Z

    if-eqz p1, :cond_28

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    if-eqz p1, :cond_27

    const-string p1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :cond_28
    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p1, p1, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {p1, v1}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_3e

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    if-eqz p1, :cond_3d

    const-string p1, "  Ignoring load canceled -- not active"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    :cond_3e
    iget-object p1, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz p1, :cond_6e

    sget-boolean v1, Landroid/support/v4/app/U;->j6:Z

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Switching to pending loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    iget-object v1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v1, v1, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v1, v2, v0}, Labcd/y;->DW(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/U$a;)V

    :cond_6e
    return-void
.end method

.method public j6(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->we:Z

    if-eqz v0, :cond_28

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    if-eqz p1, :cond_27

    const-string p1, "  Ignoring load complete -- destroyed"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v2}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_3e

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    if-eqz p1, :cond_3d

    const-string p1, "  Ignoring load complete -- not active"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    :cond_3e
    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    if-eqz v0, :cond_6f

    sget-boolean p1, Landroid/support/v4/app/U;->j6:Z

    if-eqz p1, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Switching to pending loader: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    iget-object p2, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p2, p2, Landroid/support/v4/app/U;->DW:Labcd/y;

    iget v1, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {p2, v1, p1}, Labcd/y;->DW(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v4/app/U$a;->j6()V

    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/U;->j6(Landroid/support/v4/app/U$a;)V

    return-void

    :cond_6f
    iget-object v0, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    if-ne v0, p2, :cond_77

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-nez v0, :cond_83

    :cond_77
    iput-object p2, p0, Landroid/support/v4/app/U$a;->VH:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_83

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/U$a;->DW(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_83
    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p1, p1, Landroid/support/v4/app/U;->FH:Labcd/y;

    iget p2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {p1, p2}, Labcd/y;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/U$a;

    if-eqz p1, :cond_a2

    if-eq p1, p0, :cond_a2

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/support/v4/app/U$a;->Zo:Z

    invoke-virtual {p1}, Landroid/support/v4/app/U$a;->j6()V

    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p1, p1, Landroid/support/v4/app/U;->FH:Labcd/y;

    iget p2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {p1, p2}, Labcd/y;->v5(I)V

    :cond_a2
    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p2, p1, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    if-eqz p2, :cond_b7

    invoke-virtual {p1}, Landroid/support/v4/app/U;->gn()Z

    move-result p1

    if-nez p1, :cond_b7

    iget-object p1, p0, Landroid/support/v4/app/U$a;->Ws:Landroid/support/v4/app/U;

    iget-object p1, p1, Landroid/support/v4/app/U;->VH:Landroid/support/v4/app/q;

    iget-object p1, p1, Landroid/support/v4/app/q;->v5:Landroid/support/v4/app/x;

    invoke-virtual {p1}, Landroid/support/v4/app/x;->er()V

    :cond_b7
    return-void
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

    const-string v1, "  "

    if-eqz v0, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/support/v4/content/Loader;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_49
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->v5:Z

    if-nez v0, :cond_51

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->Zo:Z

    if-eqz v0, :cond_75

    :cond_51
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

    :cond_75
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

    if-eqz v0, :cond_e1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->J8:Landroid/support/v4/app/U$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/U$a;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e1
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

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->u7:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->tp:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Landroid/support/v4/app/U$a;->gn:Z

    return-void

    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->gn:Z

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iput-boolean v1, p0, Landroid/support/v4/app/U$a;->gn:Z

    sget-boolean v0, Landroid/support/v4/app/U;->j6:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "LoaderManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/support/v4/app/U$a;->FH:Landroid/support/v4/app/T$a;

    if-eqz v0, :cond_3f

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    iget-object v3, p0, Landroid/support/v4/app/U$a;->DW:Landroid/os/Bundle;

    invoke-interface {v0, v2, v3}, Landroid/support/v4/app/T$a;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    :cond_3f
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_77

    :cond_5e
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

    :cond_77
    :goto_77
    iget-boolean v0, p0, Landroid/support/v4/app/U$a;->J0:Z

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    iget v2, p0, Landroid/support/v4/app/U$a;->j6:I

    invoke-virtual {v0, v2, p0}, Landroid/support/v4/content/Loader;->j6(ILandroid/support/v4/content/Loader$c;)V

    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->j6(Landroid/support/v4/content/Loader$b;)V

    iput-boolean v1, p0, Landroid/support/v4/app/U$a;->J0:Z

    :cond_89
    iget-object v0, p0, Landroid/support/v4/app/U$a;->Hw:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->XL()V

    :cond_8e
    return-void
.end method
