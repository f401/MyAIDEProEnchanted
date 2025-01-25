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
    .registers 3

    if-eqz p1, :cond_1e

    const-string p1, "Networking"

    const-string v0, "Network became available - notifying networking thread..."

    invoke-static {p1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Labcd/ew;->j6:Labcd/fw;

    invoke-static {p1}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_10
    iget-object v0, p0, Labcd/ew;->j6:Labcd/fw;

    invoke-static {v0}, Labcd/fw;->Hw(Labcd/fw;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method
