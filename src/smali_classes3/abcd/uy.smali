.class final synthetic Labcd/uy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final j6:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/uy;

    invoke-direct {v0}, Labcd/uy;-><init>()V

    sput-object v0, Labcd/uy;->j6:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
