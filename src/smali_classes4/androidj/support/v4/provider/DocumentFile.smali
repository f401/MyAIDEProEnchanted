.class public abstract Landroidj/support/v4/provider/DocumentFile;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "DocumentFile"


# instance fields
.field private final mParent:Landroidj/support/v4/provider/DocumentFile;


# direct methods
.method constructor <init>(Landroidj/support/v4/provider/DocumentFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/provider/DocumentFile;->mParent:Landroidj/support/v4/provider/DocumentFile;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Landroidj/support/v4/provider/DocumentFile;
    .registers 3

    new-instance v0, Landroidj/support/v4/provider/RawDocumentFile;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidj/support/v4/provider/RawDocumentFile;-><init>(Landroidj/support/v4/provider/DocumentFile;Ljava/io/File;)V

    return-object v0
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidj/support/v4/provider/DocumentFile;
    .registers 5

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_d

    new-instance v0, Landroidj/support/v4/provider/SingleDocumentFile;

    invoke-direct {v0, v1, p0, p1}, Landroidj/support/v4/provider/SingleDocumentFile;-><init>(Landroidj/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_c
    return-object v0

    :cond_d
    move-object v0, v1

    goto :goto_c
.end method

.method public static fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidj/support/v4/provider/DocumentFile;
    .registers 5

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_11

    new-instance v0, Landroidj/support/v4/provider/TreeDocumentFile;

    invoke-static {p1}, Landroidj/support/v4/provider/DocumentsContractApi21;->prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroidj/support/v4/provider/TreeDocumentFile;-><init>(Landroidj/support/v4/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    :goto_10
    return-object v0

    :cond_11
    move-object v0, v1

    goto :goto_10
.end method

.method public static isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidj/support/v4/provider/DocumentsContractApi19;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public abstract canRead()Z
.end method

.method public abstract canWrite()Z
.end method

.method public abstract createDirectory(Ljava/lang/String;)Landroidj/support/v4/provider/DocumentFile;
.end method

.method public abstract createFile(Ljava/lang/String;Ljava/lang/String;)Landroidj/support/v4/provider/DocumentFile;
.end method

.method public abstract delete()Z
.end method

.method public abstract exists()Z
.end method

.method public findFile(Ljava/lang/String;)Landroidj/support/v4/provider/DocumentFile;
    .registers 7

    invoke-virtual {p0}, Landroidj/support/v4/provider/DocumentFile;->listFiles()[Landroidj/support/v4/provider/DocumentFile;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroidj/support/v4/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_15
    return-object v0

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getParentFile()Landroidj/support/v4/provider/DocumentFile;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/provider/DocumentFile;->mParent:Landroidj/support/v4/provider/DocumentFile;

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract isFile()Z
.end method

.method public abstract isVirtual()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract listFiles()[Landroidj/support/v4/provider/DocumentFile;
.end method

.method public abstract renameTo(Ljava/lang/String;)Z
.end method
