.class public Labcd/Az;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vz;


# instance fields
.field private final DW:Ljava/io/File;

.field private final FH:Ljava/lang/String;

.field private final Hw:Ljava/io/File;

.field private Zo:Ljava/io/File;

.field private final j6:Landroid/content/Context;

.field private v5:Lio/fabric/sdk/android/services/common/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Az;->j6:Landroid/content/Context;

    iput-object p2, p0, Labcd/Az;->DW:Ljava/io/File;

    iput-object p4, p0, Labcd/Az;->FH:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Labcd/Az;->Hw:Ljava/io/File;

    new-instance p2, Lio/fabric/sdk/android/services/common/z;

    invoke-direct {p2, p1}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-direct {p0}, Labcd/Az;->v5()V

    return-void
.end method

.method private j6(Ljava/io/File;Ljava/io/File;)V
    .registers 8

    const-string v0, "Failed to close output stream"

    const-string v1, "Failed to close file input stream"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_29

    :try_start_a
    invoke-virtual {p0, p2}, Labcd/Az;->j6(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_21

    const/16 v2, 0x400

    :try_start_10
    new-array v2, v2, [B

    invoke-static {v3, p2, v2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_1f
    move-exception v2

    goto :goto_25

    :catchall_21
    move-exception p2

    move-object v4, v2

    move-object v2, p2

    move-object p2, v4

    :goto_25
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_2c

    :catchall_29
    move-exception p2

    move-object v3, p2

    move-object p2, v2

    :goto_2c
    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method private v5()V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/Az;->DW:Ljava/io/File;

    iget-object v2, p0, Labcd/Az;->FH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_16
    return-void
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public FH()Z
    .registers 2

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    return v0
.end method

.method public Hw()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    iget-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public j6()I
    .registers 2

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    return v0
.end method

.method public j6(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public j6(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, p1, :cond_1b

    goto :goto_1e

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->close()V

    iget-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Labcd/Az;->j6(Ljava/io/File;Ljava/io/File;)V

    new-instance p1, Lio/fabric/sdk/android/services/common/z;

    iget-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    invoke-direct {p1, v0}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Labcd/Az;->j6:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "deleting sent analytics file %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_29
    return-void
.end method

.method public j6([B)V
    .registers 3

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/z;->j6([B)V

    return-void
.end method

.method public j6(II)Z
    .registers 4

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/services/common/z;->j6(II)Z

    move-result p1

    return p1
.end method
