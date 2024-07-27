.class Lcom/crashlytics/android/core/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/ia$b;Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Ljava/lang/Thread;

.field final FH:Ljava/lang/Throwable;

.field final Hw:Lcom/crashlytics/android/core/ia$b;

.field final Zo:Lcom/crashlytics/android/core/W;

.field final j6:Ljava/util/Date;

.field final v5:Z


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/crashlytics/android/core/ia$b;Z)V
    .registers 7

    iput-object p1, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iput-object p2, p0, Lcom/crashlytics/android/core/T;->j6:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/core/T;->DW:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/core/T;->FH:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/crashlytics/android/core/T;->Hw:Lcom/crashlytics/android/core/ia$b;

    iput-boolean p6, p0, Lcom/crashlytics/android/core/T;->v5:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/core/T;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2}, Lcom/crashlytics/android/core/W;->Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/core/ca;->Zo()V

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v3, p0, Lcom/crashlytics/android/core/T;->j6:Ljava/util/Date;

    iget-object v5, p0, Lcom/crashlytics/android/core/T;->DW:Ljava/lang/Thread;

    iget-object v6, p0, Lcom/crashlytics/android/core/T;->FH:Ljava/lang/Throwable;

    invoke-static {v2, v3, v5, v6}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Hw:Lcom/crashlytics/android/core/ia$b;

    invoke-interface {v2}, Lcom/crashlytics/android/core/ia$b;->j6()Labcd/mA;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v2, v6, Labcd/mA;->DW:Labcd/hA;

    iget-object v5, v6, Labcd/mA;->Hw:Labcd/eA;

    move-object v3, v2

    :goto_0
    if-eqz v5, :cond_0

    iget-boolean v2, v5, Labcd/eA;->v5:Z

    if-eqz v2, :cond_6

    :cond_0
    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/crashlytics/android/core/T;->v5:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v5, p0, Lcom/crashlytics/android/core/T;->j6:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;J)V

    :cond_2
    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/W;->j6(Labcd/hA;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2}, Lcom/crashlytics/android/core/W;->VH(Lcom/crashlytics/android/core/W;)V

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget v3, v3, Labcd/hA;->VH:I

    invoke-virtual {v2, v3}, Lcom/crashlytics/android/core/W;->j6(I)V

    :cond_3
    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2}, Lcom/crashlytics/android/core/W;->Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2, v6}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Labcd/mA;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0, v6}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;Labcd/mA;)V

    :cond_4
    return-object v4

    :cond_5
    move-object v3, v4

    move-object v5, v4

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_2
.end method
