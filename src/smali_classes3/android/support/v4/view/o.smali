.class public abstract Landroid/support/v4/view/o;
.super Ljava/lang/Object;


# instance fields
.field private DW:Landroid/database/DataSetObserver;

.field private final j6:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/o;->j6:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public DW(I)F
    .registers 2

    const/high16 p1, 0x3f800000  # 1.0f

    return p1
.end method

.method public DW()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/support/v4/view/o;->DW:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    iget-object v0, p0, Landroid/support/v4/view/o;->j6:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method DW(Landroid/database/DataSetObserver;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/support/v4/view/o;->DW:Landroid/database/DataSetObserver;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public DW(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public DW(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public DW(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/view/o;->DW(Landroid/view/View;)V

    return-void
.end method

.method public DW(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/o;->DW(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public FH()Landroid/os/Parcelable;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public FH(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/o;->j6:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract j6()I
.end method

.method public j6(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, -0x1

    return p1
.end method

.method public j6(I)Ljava/lang/CharSequence;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/view/View;I)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method instantiateItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/o;->j6(Landroid/view/View;I)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public j6(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/view/o;->j6:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3

    return-void
.end method

.method public j6(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public j6(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method destroyItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v4/view/o;->j6(Landroid/view/View;)V

    return-void
.end method

.method public j6(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/o;->j6(Landroid/view/View;ILjava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract j6(Landroid/view/View;Ljava/lang/Object;)Z
.end method
