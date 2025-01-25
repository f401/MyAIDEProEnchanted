.class public Lcom/termux/filepicker/TermuxDocumentsProvider;
.super Landroid/provider/DocumentsProvider;
.source "TermuxDocumentsProvider.java"


# static fields
.field private static final ALL_MIME_TYPES:Ljava/lang/String; = "*/*"

.field private static final BASE_DIR:Ljava/io/File;

.field private static final DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 39
    sget-object v0, Lcom/termux/app/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    sput-object v0, Lcom/termux/filepicker/TermuxDocumentsProvider;->BASE_DIR:Ljava/io/File;

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "root_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mime_types"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "flags"

    aput-object v4, v0, v1

    const-string v5, "icon"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string v5, "title"

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const-string v5, "summary"

    const/4 v8, 0x5

    aput-object v5, v0, v8

    const/4 v5, 0x6

    const-string v9, "document_id"

    aput-object v9, v0, v5

    const/4 v10, 0x7

    const-string v11, "available_bytes"

    aput-object v11, v0, v10

    sput-object v0, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    .line 57
    new-array v0, v5, [Ljava/lang/String;

    aput-object v9, v0, v2

    const-string v2, "mime_type"

    aput-object v2, v0, v3

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const-string v1, "last_modified"

    aput-object v1, v0, v6

    aput-object v4, v0, v7

    const-string v1, "_size"

    aput-object v1, v0, v8

    sput-object v0, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Landroid/provider/DocumentsProvider;-><init>()V

    return-void
.end method

.method private static getDocIdForFile(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 180
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFileForDocId(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 193
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    const-string p0, "vnd.android.document/directory"

    return-object p0

    .line 196
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 197
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_26

    .line 199
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_26

    return-object p0

    .line 203
    :cond_26
    const-string p0, "application/octet-stream"

    return-object p0
.end method

.method private includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p2, :cond_7

    .line 217
    invoke-static {p3}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    .line 219
    :cond_7
    invoke-static {p2}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    .line 223
    :goto_b
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 224
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x8

    goto :goto_29

    .line 225
    :cond_20
    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x6

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 229
    :goto_29
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {p3}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const-string v3, "image/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    or-int/lit8 v0, v0, 0x1

    .line 233
    :cond_3b
    invoke-virtual {p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p1

    .line 234
    const-string v3, "document_id"

    invoke-virtual {p1, v3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 235
    const-string p2, "_display_name"

    invoke-virtual {p1, p2, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 236
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "_size"

    invoke-virtual {p1, v1, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 237
    const-string p2, "mime_type"

    invoke-virtual {p1, p2, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 238
    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "last_modified"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 239
    const-string p2, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 240
    const p2, 0x1080093

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "icon"

    invoke-virtual {p1, p3, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method


# virtual methods
.method public deleteDocument(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 125
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete document with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 132
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 105
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p2

    .line 106
    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 112
    const/high16 p2, 0x10000000

    invoke-static {p1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 113
    new-instance p2, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object p2
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 92
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    sget-object p2, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_5
    new-instance p3, Landroid/database/MatrixCursor;

    invoke-direct {p3, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_14
    if-ge v0, p2, :cond_2b

    aget-object v1, p1, v0

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 96
    const/4 v2, 0x0

    invoke-direct {p0, p3, v2, v1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    return-object p3
.end method

.method public queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 85
    if-eqz p2, :cond_3

    goto :goto_5

    :cond_3
    sget-object p2, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 86
    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/termux/filepicker/TermuxDocumentsProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method public queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 68
    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_ROOT_PROJECTION:[Ljava/lang/String;

    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "application_name"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    .line 72
    sget-object v2, Lcom/termux/filepicker/TermuxDocumentsProvider;->BASE_DIR:Ljava/io/File;

    const-string v3, "root_id"

    invoke-static {v2}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 73
    const-string v3, "document_id"

    invoke-static {v2}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getDocIdForFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 74
    const-string v3, "summary"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 75
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "flags"

    invoke-virtual {v1, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 76
    const-string v3, "title"

    invoke-virtual {v1, v3, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 77
    const-string p1, "mime_types"

    const-string v3, "*/*"

    invoke-virtual {v1, p1, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v2, "available_bytes"

    invoke-virtual {v1, v2, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 79
    const p1, 0x1080093

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "icon"

    invoke-virtual {v1, v2, p1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-object v0
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 137
    if-eqz p3, :cond_3

    goto :goto_5

    :cond_3
    sget-object p3, Lcom/termux/filepicker/TermuxDocumentsProvider;->DEFAULT_DOCUMENT_PROJECTION:[Ljava/lang/String;

    :goto_5
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getFileForDocId(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 144
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    .line 145
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_16
    :goto_16
    invoke-virtual {p3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7f

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result p1

    const/16 v1, 0x32

    if-ge p1, v1, :cond_7f

    .line 149
    invoke-virtual {p3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 154
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxDocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4d} :catch_4e

    goto :goto_50

    :catch_4e
    move-exception v1

    const/4 v1, 0x1

    .line 158
    :goto_50
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v1, :cond_16

    if-nez v2, :cond_16

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 161
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_16

    .line 163
    :cond_6c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 164
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/termux/filepicker/TermuxDocumentsProvider;->includeFile(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_16

    :cond_7f
    return-object v0
.end method
