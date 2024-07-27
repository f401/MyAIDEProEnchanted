.class Labcd/ew;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/fw;->j6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/fw;


# direct methods
.method constructor <init>(Labcd/fw;)V
    .registers 2

    iput-object p1, p0, Labcd/ew;->j6:Labcd/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Z)V
    .registers 4

    if-eqz p1, :cond_0

    const-string v0, "Networking"

    const-string v1, "Network became available - notifying networking thread..."

    invoke-static {v0, v1}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/ew;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labcd/ew;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
