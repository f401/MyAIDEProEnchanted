.class public Lbin/mt/file/content/MTDataFilesProvider;
.super Landroid/provider/DocumentsProvider;


# static fields
.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/io/File;

.field public d:Ljava/io/File;

.field public e:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "root_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "mime_types"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "flags"

    aput-object v5, v1, v2

    const-string v6, "icon"

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const-string v6, "title"

    const/4 v8, 0x4

    aput-object v6, v1, v8

    const-string v6, "summary"

    const/4 v9, 0x5

    aput-object v6, v1, v9

    const/4 v6, 0x6

    const-string v10, "document_id"

    aput-object v10, v1, v6

    sput-object v1, Lbin/mt/file/content/MTDataFilesProvider;->f:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v10, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    const-string v1, "last_modified"

    aput-object v1, v0, v7

    aput-object v5, v0, v8

    const-string v1, "_size"

    aput-object v1, v0, v9

    const-string v1, "mt_extras"

    aput-object v1, v0, v6

    sput-object v0, Lbin/mt/file/content/MTDataFilesProvider;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_35

    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    iget v0, v0, Landroid/system/StructStat;->st_mode:I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_10} :catch_1a

    const v1, 0xf000

    and-int/2addr v0, v1

    const v1, 0xa000

    if-ne v0, v1, :cond_1e

    goto :goto_35

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_35

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v1, :cond_35

    aget-object v4, v0, v3

    invoke-static {v4}, Lbin/mt/file/content/MTDataFilesProvider;->a(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_32

    return v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_35
    :goto_35
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "vnd.android.document/directory"

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2a

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2a

    return-object p0

    :cond_2a
    const-string p0, "application/octet-stream"

    return-object p0
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/provider/DocumentsProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lbin/mt/file/content/MTDataFilesProvider;->c:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Android/data/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->d:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Android/obb/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->e:Ljava/io/File;

    return-void
.end method

.method public final b(Ljava/lang/String;Z)Ljava/io/File;
    .registers 9

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " not found"

    if-eqz v0, :cond_91

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_29

    return-object v4

    :cond_29
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_35

    const-string v2, ""

    goto :goto_40

    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v5

    :goto_40
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->c:Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6f

    :cond_50
    const-string v3, "android_data"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->d:Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_6f

    :cond_60
    const-string v3, "android_obb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lbin/mt/file/content/MTDataFilesProvider;->e:Ljava/io/File;

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    if-eqz v4, :cond_87

    if-eqz p2, :cond_86

    :try_start_73
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_7b

    goto :goto_86

    :catch_7b
    move-exception p2

    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_86
    :goto_86
    return-object v4

    :cond_87
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_91
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    const-string v0, "message"

    const-string v1, "result"

    invoke-super {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_b

    return-object p2

    :cond_b
    const-string p2, "mt:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_15

    const/4 p1, 0x0

    return-object p1

    :cond_15
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :try_start_1b
    const-string v3, "uri"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-lt v4, v5, :cond_35

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_39

    :cond_35
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_39
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x620f2f0b

    const/4 v7, 0x2

    if-eq v4, v5, :cond_64

    const v5, 0xcc82212

    if-eq v4, v5, :cond_5a

    const v5, 0x6621b52e

    if-eq v4, v5, :cond_50

    goto :goto_6e

    :cond_50
    const-string v4, "mt:setLastModified"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v4, 0x0

    goto :goto_6f

    :cond_5a
    const-string v4, "mt:createSymlink"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v4, 0x2

    goto :goto_6f

    :cond_64
    const-string v4, "mt:setPermissions"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v4, 0x1

    goto :goto_6f

    :cond_6e
    :goto_6e
    const/4 v4, -0x1

    :goto_6f
    if-eqz v4, :cond_be

    if-eq v4, v6, :cond_9c

    if-eq v4, v7, :cond_7f

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "Unsupported method: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_ba

    :cond_7f
    invoke-virtual {p0, v3, v2}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_86

    goto :goto_c4

    :cond_86
    const-string v3, "path"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8c} :catch_d6

    :try_start_8c
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_96
    .catch Landroid/system/ErrnoException; {:try_start_8c .. :try_end_96} :catch_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_96} :catch_d6

    goto :goto_e1

    :catch_97
    move-exception p1

    :goto_98
    :try_start_98
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b6

    :cond_9c
    invoke-virtual {p0, v3, v6}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_a3

    goto :goto_c4

    :cond_a3
    const-string v3, "permissions"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p3
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a9} :catch_d6

    :try_start_a9
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {p2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_b3
    .catch Landroid/system/ErrnoException; {:try_start_a9 .. :try_end_b3} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b3} :catch_d6

    goto :goto_e1

    :catch_b4
    move-exception p1

    goto :goto_98

    :goto_b6
    :try_start_b6
    invoke-virtual {p1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_ba
    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e1

    :cond_be
    invoke-virtual {p0, v3, v6}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_c8

    :goto_c4
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_e1

    :cond_c8
    const-string v3, "time"

    invoke-virtual {p3, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_d5} :catch_d6

    goto :goto_e1

    :catch_d6
    move-exception p1

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e1
    return-object p2
.end method

.method public final createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "/"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_74

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x2

    :goto_f
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v4, v1

    move-object v3, v5

    goto :goto_f

    :cond_36
    :try_start_36
    const-string v1, "vnd.android.document/directory"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result p2

    goto :goto_47

    :cond_43
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p2

    :goto_47
    if-eqz p2, :cond_74

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_57
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_68

    :cond_5c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :goto_68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_6f} :catch_70

    return-object p1

    :catch_70
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_74
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create document in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with name "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_91

    :goto_90
    throw p1

    :goto_91
    goto :goto_90
.end method

.method public final d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V
    .registers 16

    const-string v0, "|"

    const/4 v1, 0x1

    if-nez p3, :cond_9

    invoke-virtual {p0, p2, v1}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p3

    :cond_9
    const-string v2, "flags"

    const-string v3, "last_modified"

    const-string v4, "mime_type"

    const-string v5, "_size"

    const-string v6, "_display_name"

    const-string v7, "document_id"

    const/4 v8, 0x0

    if-nez p3, :cond_43

    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    iget-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v7, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v6, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string p2, "vnd.android.document/directory"

    invoke-virtual {p1, v4, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void

    :cond_43
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_5a

    const/16 v9, 0x8

    goto :goto_5b

    :cond_52
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_5a

    const/4 v9, 0x2

    goto :goto_5b

    :cond_5a
    const/4 v9, 0x0

    :goto_5b
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_69

    or-int/lit8 v9, v9, 0x4

    or-int/lit8 v9, v9, 0x40

    :cond_69
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lbin/mt/file/content/MTDataFilesProvider;->c:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7c

    const-string v1, "data"

    goto :goto_a0

    :cond_7c
    iget-object v11, p0, Lbin/mt/file/content/MTDataFilesProvider;->d:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8b

    const-string v1, "android_data"

    goto :goto_a0

    :cond_8b
    iget-object v11, p0, Lbin/mt/file/content/MTDataFilesProvider;->e:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    const-string v1, "android_obb"

    goto :goto_a0

    :cond_9a
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    const/4 v8, 0x1

    :goto_a0
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p1, v6, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {p3}, Lbin/mt/file/content/MTDataFilesProvider;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string p2, "mt_path"

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    if-eqz v8, :cond_11a

    :try_start_d9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p3

    iget v1, p3, Landroid/system/StructStat;->st_mode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/system/StructStat;->st_uid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/system/StructStat;->st_gid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/system/StructStat;->st_mode:I

    const v1, 0xf000

    and-int/2addr p3, v1

    const v1, 0xa000

    if-ne p3, v1, :cond_10c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10c
    const-string p3, "mt_extras"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_115} :catch_116

    goto :goto_11a

    :catch_116
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11a
    :goto_11a
    return-void
.end method

.method public final deleteDocument(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lbin/mt/file/content/MTDataFilesProvider;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Failed to delete document "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_a

    const-string p1, "vnd.android.document/directory"

    goto :goto_e

    :cond_a
    invoke-static {p1}, Lbin/mt/file/content/MTDataFilesProvider;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method public final isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p3, p2}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p2

    if-eqz v0, :cond_55

    if-eqz p2, :cond_55

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_55

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_55

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_54

    :cond_3e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_54
    return-object p1

    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Filed to move document "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_10

    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p2, Ljava/io/FileNotFoundException;

    const-string p3, " not found"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_13
    if-eqz p2, :cond_16

    goto :goto_18

    :cond_16
    sget-object p2, Lbin/mt/file/content/MTDataFilesProvider;->g:[Ljava/lang/String;

    :goto_18
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_55

    const-string p2, "/data"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lbin/mt/file/content/MTDataFilesProvider;->c:Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lbin/mt/file/content/MTDataFilesProvider;->d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    iget-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->d:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_41

    const-string p2, "/android_data"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lbin/mt/file/content/MTDataFilesProvider;->d:Ljava/io/File;

    invoke-virtual {p0, v0, p2, p3}, Lbin/mt/file/content/MTDataFilesProvider;->d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    :cond_41
    iget-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->e:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_7c

    const-string p2, "/android_obb"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lbin/mt/file/content/MTDataFilesProvider;->e:Ljava/io/File;

    invoke-virtual {p0, v0, p1, p2}, Lbin/mt/file/content/MTDataFilesProvider;->d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_7c

    :cond_55
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_7c

    array-length v1, p2

    :goto_5c
    if-ge v2, v1, :cond_7c

    aget-object v3, p2, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4, v3}, Lbin/mt/file/content/MTDataFilesProvider;->d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_7c
    :goto_7c
    return-object v0
.end method

.method public final queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    sget-object p2, Lbin/mt/file/content/MTDataFilesProvider;->g:[Ljava/lang/String;

    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lbin/mt/file/content/MTDataFilesProvider;->d(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public final queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    sget-object p1, Lbin/mt/file/content/MTDataFilesProvider;->f:[Ljava/lang/String;

    :goto_1d
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    const-string v3, "root_id"

    iget-object v4, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v3, "document_id"

    iget-object v4, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v3, "summary"

    iget-object v4, p0, Lbin/mt/file/content/MTDataFilesProvider;->b:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "flags"

    invoke-virtual {p1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v3, "title"

    invoke-virtual {p1, v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    const-string v1, "mime_types"

    const-string v3, "*/*"

    invoke-virtual {p1, v1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p1, v1, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v2
.end method

.method public final removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lbin/mt/file/content/MTDataFilesProvider;->deleteDocument(Ljava/lang/String;)V

    return-void
.end method

.method public final renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lbin/mt/file/content/MTDataFilesProvider;->b(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/16 v1, 0x2f

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to rename document "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
