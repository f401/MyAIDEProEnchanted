.class public Labcd/v;
.super Labcd/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final FH:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/u;-><init>(I)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/v;->FH:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Labcd/v;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-super {p0, p1}, Labcd/u;->j6(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method
