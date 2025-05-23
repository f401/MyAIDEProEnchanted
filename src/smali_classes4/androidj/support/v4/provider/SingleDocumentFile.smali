.class Landroidj/support/v4/provider/SingleDocumentFile;
.super Landroidj/support/v4/provider/DocumentFile;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroidj/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    invoke-direct {p0, p1}, Landroidj/support/v4/provider/DocumentFile;-><init>(Landroidj/support/v4/provider/DocumentFile;)V

    iput-object p2, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public canRead()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->canRead(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public canWrite()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->canWrite(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/String;)Landroidj/support/v4/provider/DocumentFile;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Landroidj/support/v4/provider/DocumentFile;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public delete()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->delete(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->exists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isDirectory()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->isFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->lastModified(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidj/support/v4/provider/SingleDocumentFile;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidj/support/v4/provider/DocumentsContractApi19;->length(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public listFiles()[Landroidj/support/v4/provider/DocumentFile;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public renameTo(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
