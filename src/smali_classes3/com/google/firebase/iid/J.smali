.class final synthetic Lcom/google/firebase/iid/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final j6:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/iid/J;

    invoke-direct {v0}, Lcom/google/firebase/iid/J;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/J;->j6:Ljava/util/concurrent/Executor;

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

    invoke-static {p1}, Lcom/google/firebase/iid/H;->DW(Ljava/lang/Runnable;)V

    return-void
.end method
