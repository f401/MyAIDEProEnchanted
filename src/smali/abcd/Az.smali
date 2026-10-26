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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Az;->j6:Landroid/content/Context;

    iput-object p2, p0, Labcd/Az;->DW:Ljava/io/File;

    iput-object p4, p0, Labcd/Az;->FH:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    new-instance v1, Lio/fabric/sdk/android/services/common/z;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-direct {p0}, Labcd/Az;->v5()V

    return-void
.end method

.method private j6(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Labcd/Az;->j6(Ljava/io/File;)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    invoke-static {v2, v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v0, "Failed to close file input stream"

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string v0, "Failed to close output stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void

    :catchall_0
    move-exception v0

    :goto_0
    move-object v3, v1

    :goto_1
    const-string v1, "Failed to close file input stream"

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    const-string v1, "Failed to close output stream"

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method private v5()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/Az;->DW:Ljava/io/File;

    iget-object v2, p0, Labcd/Az;->FH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
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
    .locals 1

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->DW()Z

    move-result v0

    return v0
.end method

.method public Hw()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public j6()I
    .locals 1

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->Hw()I

    move-result v0

    return v0
.end method

.method public j6(Ljava/io/File;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public j6(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/z;->close()V

    iget-object v0, p0, Labcd/Az;->Hw:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Labcd/Az;->Zo:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Labcd/Az;->j6(Ljava/io/File;Ljava/io/File;)V

    new-instance v0, Lio/fabric/sdk/android/services/common/z;

    iget-object v1, p0, Labcd/Az;->Hw:Ljava/io/File;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/z;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Labcd/Az;->j6:Landroid/content/Context;

    const-string v3, "deleting sent analytics file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6([B)V
    .locals 1

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/services/common/z;->j6([B)V

    return-void
.end method

.method public j6(II)Z
    .locals 1

    iget-object v0, p0, Labcd/Az;->v5:Lio/fabric/sdk/android/services/common/z;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/services/common/z;->j6(II)Z

    move-result v0

    return v0
.end method
