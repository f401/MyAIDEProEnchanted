.class public Lcom/tencent/mm/androlib/res/util/ExtFile;
.super Ljava/io/File;


# instance fields
.field private mDirectory:Lcom/tencent/mm/directory/Directory;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getDirectory()Lcom/tencent/mm/directory/Directory;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/directory/DirectoryException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/util/ExtFile;->mDirectory:Lcom/tencent/mm/directory/Directory;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/tencent/mm/androlib/res/util/ExtFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/tencent/mm/directory/FileDirectory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/directory/FileDirectory;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/util/ExtFile;->mDirectory:Lcom/tencent/mm/directory/Directory;

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/util/ExtFile;->mDirectory:Lcom/tencent/mm/directory/Directory;

    return-object v0

    :cond_14
    new-instance v0, Lcom/tencent/mm/directory/ZipRODirectory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/directory/ZipRODirectory;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/util/ExtFile;->mDirectory:Lcom/tencent/mm/directory/Directory;

    goto :goto_11
.end method
