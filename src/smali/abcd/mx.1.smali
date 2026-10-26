.class public Labcd/mx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final DW:I

.field private final FH:Ljava/util/concurrent/ThreadFactory;

.field private final j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/mx;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Labcd/mx;->FH:Ljava/util/concurrent/ThreadFactory;

    const-string v0, "Name must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object p1, p0, Labcd/mx;->j6:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Labcd/mx;->DW:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Labcd/mx;->FH:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Labcd/nx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Labcd/nx;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Labcd/mx;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
