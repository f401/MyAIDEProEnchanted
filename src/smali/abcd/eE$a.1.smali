.class Labcd/eE$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/eE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private volatile FH:Z

.field private Hw:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private VH:I

.field private Zo:I

.field private final j6:Ljava/lang/String;

.field private v5:Z


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    iput p2, p0, Labcd/eE$a;->DW:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/eE$a;->FH:Z

    return-void
.end method

.method private j6()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/eE$a;->FH:Z

    invoke-static {}, Labcd/eE;->DW()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Labcd/eE$a;->Hw:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method j6(JLjava/util/concurrent/TimeUnit;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/eE$a;->FH:Z

    invoke-static {}, Labcd/eE;->DW()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Labcd/eE$a;->Hw:Ljava/util/concurrent/Future;

    return-void
.end method

.method j6(Labcd/eE;)V
    .registers 6

    iget-boolean v0, p0, Labcd/eE$a;->v5:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/eE$a;->DW:I

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    iget v1, p0, Labcd/eE$a;->Zo:I

    invoke-virtual {p1, v0, v1}, Labcd/eE;->DW(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/eE$a;->Hw:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Labcd/eE$a;->Zo:I

    mul-int/lit8 v2, v1, 0x64

    div-int/2addr v2, v0

    iget-object v3, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v0, v2}, Labcd/eE;->j6(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method j6(Labcd/eE;I)V
    .registers 8

    const/4 v4, 0x1

    iget v0, p0, Labcd/eE$a;->Zo:I

    add-int/2addr v0, p2

    iput v0, p0, Labcd/eE$a;->Zo:I

    iget v0, p0, Labcd/eE$a;->DW:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Labcd/eE$a;->FH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    iget v1, p0, Labcd/eE$a;->Zo:I

    invoke-virtual {p1, v0, v1}, Labcd/eE;->FH(Ljava/lang/String;I)V

    iput-boolean v4, p0, Labcd/eE$a;->v5:Z

    invoke-direct {p0}, Labcd/eE$a;->j6()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Labcd/eE$a;->Zo:I

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    iget-boolean v1, p0, Labcd/eE$a;->FH:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    iget v2, p0, Labcd/eE$a;->Zo:I

    iget v3, p0, Labcd/eE$a;->DW:I

    invoke-virtual {p1, v1, v2, v3, v0}, Labcd/eE;->DW(Ljava/lang/String;III)V

    iput-boolean v4, p0, Labcd/eE$a;->v5:Z

    invoke-direct {p0}, Labcd/eE$a;->j6()V

    iput v0, p0, Labcd/eE$a;->VH:I

    goto :goto_0

    :cond_2
    iget v1, p0, Labcd/eE$a;->VH:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Labcd/eE$a;->j6:Ljava/lang/String;

    iget v2, p0, Labcd/eE$a;->Zo:I

    iget v3, p0, Labcd/eE$a;->DW:I

    invoke-virtual {p1, v1, v2, v3, v0}, Labcd/eE;->DW(Ljava/lang/String;III)V

    iput-boolean v4, p0, Labcd/eE$a;->v5:Z

    iput v0, p0, Labcd/eE$a;->VH:I

    goto :goto_0
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/eE$a;->FH:Z

    return-void
.end method
