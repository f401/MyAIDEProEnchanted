.class final enum Lcom/google/common/util/concurrent/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/util/concurrent/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

.field public static final enum INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/common/util/concurrent/DirectExecutor;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/DirectExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->INSTANCE:Lcom/google/common/util/concurrent/DirectExecutor;

    .line 24
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/util/concurrent/DirectExecutor;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->$VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/DirectExecutor;
    .registers 2

    .line 24
    const-class v0, Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/DirectExecutor;

    return-object v0
.end method

.method public static values()[Lcom/google/common/util/concurrent/DirectExecutor;
    .registers 1

    .line 24
    sget-object v0, Lcom/google/common/util/concurrent/DirectExecutor;->$VALUES:[Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/DirectExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/DirectExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
