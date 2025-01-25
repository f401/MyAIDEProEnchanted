.class final Labcd/by;
.super Ljava/lang/Object;

# interfaces
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
        "Lny<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Sx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LSx<",
            "TTResult;TTContinuationResult;>;"
        }
    .end annotation
.end field

.field private final FH:Labcd/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqy<",
            "TTContinuationResult;>;"
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
            "LSx<",
            "TTResult;TTContinuationResult;>;",
            "Lqy<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/by;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/by;->DW:Labcd/Sx;

    iput-object p3, p0, Labcd/by;->FH:Labcd/qy;

    return-void
.end method

.method static synthetic DW(Labcd/by;)Labcd/Sx;
    .registers 1

    iget-object p0, p0, Labcd/by;->DW:Labcd/Sx;

    return-object p0
.end method

.method static synthetic j6(Labcd/by;)Labcd/qy;
    .registers 1

    iget-object p0, p0, Labcd/by;->FH:Labcd/qy;

    return-object p0
.end method


# virtual methods
.method public final j6(Labcd/Yx;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LYx<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/by;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/cy;

    invoke-direct {v1, p0, p1}, Labcd/cy;-><init>(Labcd/by;Labcd/Yx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
