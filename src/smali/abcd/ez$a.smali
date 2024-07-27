.class Labcd/ez$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/ez;

.field private final j6:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Labcd/ez;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ez$a;->j6:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Labcd/ez$a;->DW:Labcd/ez;

    return-void
.end method

.method static synthetic j6(Labcd/ez$a;)Labcd/ez;
    .registers 2

    iget-object v0, p0, Labcd/ez$a;->DW:Labcd/ez;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Labcd/ez$a;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Labcd/dz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Labcd/dz;-><init>(Labcd/ez$a;Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
