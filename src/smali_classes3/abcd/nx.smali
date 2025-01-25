.class final Labcd/nx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final j6:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/nx;->j6:Ljava/lang/Runnable;

    iput p2, p0, Labcd/nx;->DW:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Labcd/nx;->DW:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Labcd/nx;->j6:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
