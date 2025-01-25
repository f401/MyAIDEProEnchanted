.class Labcd/Uy;
.super Labcd/Xy$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Xy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LXy$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final DW:Labcd/Xy;


# direct methods
.method constructor <init>(Labcd/Xy;)V
    .registers 2

    iput-object p1, p0, Labcd/Uy;->DW:Labcd/Xy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Labcd/Xy$e;-><init>(Labcd/Ty;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Uy;->DW:Labcd/Xy;

    invoke-static {v0}, Labcd/Xy;->j6(Labcd/Xy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Labcd/Uy;->DW:Labcd/Xy;

    iget-object v1, p0, Labcd/Xy$e;->j6:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Labcd/Xy;->j6([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Xy;->j6(Labcd/Xy;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
