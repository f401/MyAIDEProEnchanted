.class final Lcom/google/firebase/components/r;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/By;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/lang/Object;


# instance fields
.field private volatile DW:Ljava/lang/Object;

.field private volatile FH:Labcd/By;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBy<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/components/r;->j6:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/d<",
            "TT;>;",
            "Lcom/google/firebase/components/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/components/r;->j6:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/components/r;->DW:Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/firebase/components/s;->j6(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)Labcd/By;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/components/r;->FH:Labcd/By;

    return-void
.end method

.method static synthetic j6(Lcom/google/firebase/components/d;Lcom/google/firebase/components/c;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0, p1}, Lcom/google/firebase/components/d;->j6(Lcom/google/firebase/components/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/r;->DW:Ljava/lang/Object;

    sget-object v1, Lcom/google/firebase/components/r;->j6:Ljava/lang/Object;

    if-ne v0, v1, :cond_1b

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/firebase/components/r;->DW:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/firebase/components/r;->FH:Labcd/By;

    invoke-interface {v0}, Labcd/By;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/r;->DW:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/components/r;->FH:Labcd/By;

    :cond_16
    monitor-exit p0

    goto :goto_1b

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :goto_1b
    return-object v0
.end method
