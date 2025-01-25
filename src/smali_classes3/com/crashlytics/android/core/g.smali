.class Lcom/crashlytics/android/core/g;
.super Ljava/io/FileOutputStream;


# static fields
.field public static final j6:Ljava/io/FilenameFilter;


# instance fields
.field private final DW:Ljava/lang/String;

.field private FH:Ljava/io/File;

.field private Hw:Ljava/io/File;

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/crashlytics/android/core/f;

    invoke-direct {v0}, Lcom/crashlytics/android/core/f;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/g;->j6:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cls_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/g;->v5:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/core/g;->DW:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/g;->FH:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/crashlytics/android/core/g;->v5:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_70

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/crashlytics/android/core/g;->v5:Z

    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/crashlytics/android/core/g;->DW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/core/g;->FH:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/crashlytics/android/core/g;->FH:Ljava/io/File;

    iput-object v0, p0, Lcom/crashlytics/android/core/g;->Hw:Ljava/io/File;
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_70

    monitor-exit p0

    return-void

    :cond_37
    const-string v1, ""

    :try_start_39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/crashlytics/android/core/g;->FH:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_70

    if-nez v2, :cond_4c

    const-string v1, " (source does not exist)"

    goto :goto_4c

    :cond_4a
    const-string v1, " (target already exists)"

    :cond_4c
    :goto_4c
    :try_start_4c
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not rename temp file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/crashlytics/android/core/g;->FH:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_70

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()V
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/core/g;->v5:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/core/g;->v5:Z

    invoke-super {p0}, Ljava/io/FileOutputStream;->flush()V

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
