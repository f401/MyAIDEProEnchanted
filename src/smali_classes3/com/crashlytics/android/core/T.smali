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
        "Ljava/util/concurrent/Callable<",
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
    .registers 9

    iget-object v0, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v0}, Lcom/crashlytics/android/core/W;->Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ca;->Zo()V

    iget-object v0, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v1, p0, Lcom/crashlytics/android/core/T;->j6:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->DW:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/core/T;->FH:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/T;->Hw:Lcom/crashlytics/android/core/ia$b;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ia$b;->j6()Labcd/mA;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v2, v0, Labcd/mA;->DW:Labcd/hA;

    iget-object v3, v0, Labcd/mA;->Hw:Labcd/eA;

    goto :goto_24

    :cond_22
    move-object v2, v1

    move-object v3, v2

    :goto_24
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2f

    iget-boolean v3, v3, Labcd/eA;->v5:Z

    if-eqz v3, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v3, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v3, 0x1

    :goto_30
    if-nez v3, :cond_36

    iget-boolean v3, p0, Lcom/crashlytics/android/core/T;->v5:Z

    if-eqz v3, :cond_41

    :cond_36
    iget-object v3, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget-object v6, p0, Lcom/crashlytics/android/core/T;->j6:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;J)V

    :cond_41
    iget-object v3, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/W;->j6(Labcd/hA;)V

    iget-object v3, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v3}, Lcom/crashlytics/android/core/W;->VH(Lcom/crashlytics/android/core/W;)V

    if-eqz v2, :cond_54

    iget-object v3, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    iget v2, v2, Labcd/hA;->VH:I

    invoke-virtual {v3, v2}, Lcom/crashlytics/android/core/W;->j6(I)V

    :cond_54
    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2}, Lcom/crashlytics/android/core/W;->Zo(Lcom/crashlytics/android/core/W;)Lcom/crashlytics/android/core/ca;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/W;->j6(Lcom/crashlytics/android/core/W;Labcd/mA;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_72

    :cond_71
    const/4 v4, 0x0

    :goto_72
    if-eqz v4, :cond_79

    iget-object v2, p0, Lcom/crashlytics/android/core/T;->Zo:Lcom/crashlytics/android/core/W;

    invoke-static {v2, v0}, Lcom/crashlytics/android/core/W;->DW(Lcom/crashlytics/android/core/W;Labcd/mA;)V

    :cond_79
    return-object v1
.end method
