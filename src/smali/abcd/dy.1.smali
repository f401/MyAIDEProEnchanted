.class final Labcd/dy;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Tx;
.implements Labcd/Vx;
.implements Labcd/Wx;
.implements Labcd/ny;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Labcd/Tx;",
        "Labcd/Vx;",
        "LWx",
        "<TTContinuationResult;>;",
        "Lny",
        "<TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Sx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSx",
            "<TTResult;",
            "LYx",
            "<TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final FH:Labcd/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqy",
            "<TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/Sx;Labcd/qy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "LSx",
            "<TTResult;",
            "LYx",
            "<TTContinuationResult;>;>;",
            "Lqy",
            "<TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/dy;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/dy;->DW:Labcd/Sx;

    iput-object p3, p0, Labcd/dy;->FH:Labcd/qy;

    return-void
.end method

.method static synthetic DW(Labcd/dy;)Labcd/qy;
    .registers 2

    iget-object v0, p0, Labcd/dy;->FH:Labcd/qy;

    return-object v0
.end method

.method static synthetic j6(Labcd/dy;)Labcd/Sx;
    .registers 2

    iget-object v0, p0, Labcd/dy;->DW:Labcd/Sx;

    return-object v0
.end method


# virtual methods
.method public final j6()V
    .registers 2

    iget-object v0, p0, Labcd/dy;->FH:Labcd/qy;

    invoke-virtual {v0}, Labcd/qy;->Zo()Z

    return-void
.end method

.method public final j6(Labcd/Yx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx",
            "<TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/dy;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/ey;

    invoke-direct {v1, p0, p1}, Labcd/ey;-><init>(Labcd/dy;Labcd/Yx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Labcd/dy;->FH:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/dy;->FH:Labcd/qy;

    invoke-virtual {v0, p1}, Labcd/qy;->j6(Ljava/lang/Object;)V

    return-void
.end method
