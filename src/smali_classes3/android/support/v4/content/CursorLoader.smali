.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field Mr:[Ljava/lang/String;

.field final QX:Landroid/support/v4/content/Loader$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">.a;"
        }
    .end annotation
.end field

.field U2:Ljava/lang/String;

.field XL:Landroid/net/Uri;

.field a8:Landroid/database/Cursor;

.field aM:[Ljava/lang/String;

.field j3:Ljava/lang/String;

.field lg:Landroid/support/v4/os/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/support/v4/content/Loader$a;

    invoke-direct {p1, p0}, Landroid/support/v4/content/Loader$a;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->QX:Landroid/support/v4/content/Loader$a;

    return-void
.end method


# virtual methods
.method public DW(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void
.end method

.method public bridge synthetic DW(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->j6(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic FH(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->DW(Landroid/database/Cursor;)V

    return-void
.end method

.method protected J0()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->j6(Landroid/database/Cursor;)V

    :cond_7
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->j3()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    if-nez v0, :cond_14

    :cond_11
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->Hw()V

    :cond_14
    return-void
.end method

.method protected J8()V
    .registers 1

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->j6()Z

    return-void
.end method

.method public Mr()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->Mr()V

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->lg:Landroid/support/v4/os/a;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/support/v4/os/a;->j6()V

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public j6(Landroid/database/Cursor;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->VH()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->gn()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->DW(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_26

    if-eq v0, p1, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_26
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->j6(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mUri="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->XL:Landroid/net/Uri;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mProjection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->aM:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelection="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->j3:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSelectionArgs="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->Mr:[Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mSortOrder="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->U2:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCursor="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mContentChanged="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/support/v4/content/Loader;->gn:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public lg()Landroid/database/Cursor;
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->a8()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Landroid/support/v4/os/a;

    invoke-direct {v0}, Landroid/support/v4/os/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->lg:Landroid/support/v4/os/a;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_4f

    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->v5()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->XL:Landroid/net/Uri;

    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->aM:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->j3:Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v4/content/CursorLoader;->Mr:[Ljava/lang/String;

    iget-object v7, p0, Landroid/support/v4/content/CursorLoader;->U2:Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v4/content/CursorLoader;->lg:Landroid/support/v4/os/a;

    invoke-static/range {v2 .. v8}, Landroid/support/v4/content/a;->j6(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/a;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_40

    if-eqz v1, :cond_38

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->QX:Landroid/support/v4/content/Loader$a;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_32} :catch_33
    .catchall {:try_start_2a .. :try_end_32} :catchall_40

    goto :goto_38

    :catch_33
    move-exception v2

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_40

    :cond_38
    :goto_38
    monitor-enter p0

    :try_start_39
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->lg:Landroid/support/v4/os/a;

    monitor-exit p0

    return-object v1

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3d

    throw v0

    :catchall_40
    move-exception v1

    monitor-enter p0

    :try_start_42
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->lg:Landroid/support/v4/os/a;

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    throw v1

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :try_start_49
    new-instance v0, Landroid/support/v4/os/c;

    invoke-direct {v0}, Landroid/support/v4/os/c;-><init>()V

    throw v0

    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public bridge synthetic lg()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->lg()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected we()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/content/Loader;->we()V

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->J8()V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->a8:Landroid/database/Cursor;

    return-void
.end method
