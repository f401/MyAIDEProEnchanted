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
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/mx;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    iput-object p2, p0, Labcd/mx;->FH:Ljava/util/concurrent/ThreadFactory;

    const-string p2, "Name must not be null"

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iput-object p1, p0, Labcd/mx;->j6:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Labcd/mx;->DW:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    iget-object v0, p0, Labcd/mx;->FH:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Labcd/nx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Labcd/nx;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Labcd/mx;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
