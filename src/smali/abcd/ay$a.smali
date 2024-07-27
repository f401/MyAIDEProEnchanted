.class final Labcd/ay$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ay$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final j6:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Labcd/ry;)V
    .registers 2

    invoke-direct {p0}, Labcd/ay$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 2

    iget-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final j6(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final j6(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final j6(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5

    iget-object v0, p0, Labcd/ay$a;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
