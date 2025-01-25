.class Lio/fabric/sdk/android/services/common/o;
.super Lio/fabric/sdk/android/services/common/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/p;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Lio/fabric/sdk/android/services/common/p;

.field final j6:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/p;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/o;->DW:Lio/fabric/sdk/android/services/common/p;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/o;->j6:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/o;->j6:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
