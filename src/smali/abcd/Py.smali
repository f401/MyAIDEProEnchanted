.class public abstract Labcd/Py;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Ry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LRy",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final j6:Labcd/Ry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRy",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/Ry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LRy",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Py;->j6:Labcd/Ry;

    return-void
.end method

.method private DW(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Labcd/Py;->j6(Landroid/content/Context;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected abstract j6(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final j6(Landroid/content/Context;Labcd/Sy;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "LSy",
            "<TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Labcd/Py;->j6(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Py;->j6:Labcd/Ry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Py;->j6:Labcd/Ry;

    invoke-interface {v0, p1, p2}, Labcd/Ry;->j6(Landroid/content/Context;Labcd/Sy;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Labcd/Py;->DW(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {p2, p1}, Labcd/Sy;->j6(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract j6(Landroid/content/Context;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation
.end method
