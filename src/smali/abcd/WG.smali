.class public Labcd/WG;
.super Ljava/lang/Object;


# static fields
.field static final j6:Ljava/io/FilenameFilter;


# instance fields
.field private final DW:Ljava/io/File;

.field private final FH:Ljava/io/File;

.field private Hw:Z

.field private VH:Z

.field private Zo:Z

.field private gn:Labcd/LG;

.field private final u7:Labcd/pK;

.field private v5:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/UG;

    invoke-direct {v0}, Labcd/UG;-><init>()V

    sput-object v0, Labcd/WG;->j6:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Labcd/pK;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/WG;->DW:Ljava/io/File;

    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-static {v0}, Labcd/WG;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    iput-object p2, p0, Labcd/WG;->u7:Labcd/pK;

    return-void
.end method

.method static synthetic DW(Labcd/WG;)Ljava/io/FileOutputStream;
    .registers 2

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method private VH()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/WG;->u7:Labcd/pK;

    invoke-virtual {v1}, Labcd/pK;->Hw()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private gn()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/WG;->u7:Labcd/pK;

    invoke-virtual {v1}, Labcd/pK;->Hw()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v1, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v3, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static j6(Ljava/io/File;)Ljava/io/File;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method static synthetic j6(Labcd/WG;Ljava/io/FileOutputStream;)V
    .registers 2

    iput-object p1, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    return-void
.end method

.method static synthetic j6(Labcd/WG;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/WG;->VH:Z

    return v0
.end method

.method private tp()V
    .registers 2

    iget-boolean v0, p0, Labcd/WG;->Zo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/WG;->gn:Labcd/LG;

    :cond_0
    return-void
.end method

.method private u7()V
    .registers 6

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Labcd/WG;->v5()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->lockOnNotHeld:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/WG;->DW:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW()Labcd/LG;
    .registers 2

    iget-object v0, p0, Labcd/WG;->gn:Labcd/LG;

    return-object v0
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/WG;->Zo:Z

    return-void
.end method

.method public FH()Ljava/io/OutputStream;
    .registers 3

    invoke-direct {p0}, Labcd/WG;->u7()V

    iget-boolean v0, p0, Labcd/WG;->VH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    new-instance v1, Labcd/VG;

    invoke-direct {v1, p0, v0}, Labcd/VG;-><init>(Labcd/WG;Ljava/io/OutputStream;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    goto :goto_0
.end method

.method public FH(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/WG;->DW(Z)V

    return-void
.end method

.method public Hw()Z
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v1}, Labcd/zK;->DW(Ljava/io/File;Z)V

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Labcd/WG;->Hw:Z

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-boolean v0, p0, Labcd/WG;->Hw:Z

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw v0
.end method

.method public Zo()V
    .registers 5

    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v1

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x19

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(Labcd/yE;)V
    .registers 5

    const/16 v0, 0x29

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Labcd/YD;->FH([BI)V

    const/16 v1, 0x28

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Labcd/WG;->j6([B)V

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/WG;->VH:Z

    return-void
.end method

.method public j6([B)V
    .registers 5

    invoke-direct {p0}, Labcd/WG;->u7()V

    :try_start_0
    iget-boolean v0, p0, Labcd/WG;->VH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    :goto_1
    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw v0
.end method

.method public j6()Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    if-nez v2, :cond_4

    invoke-direct {p0}, Labcd/WG;->tp()V

    iget-object v2, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v3, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Labcd/WG;->VH()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0}, Labcd/WG;->gn()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Labcd/WG;->v5()V

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Labcd/WG;->v5()V

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->lockOnNotClosed:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/WG;->DW:Ljava/io/File;

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockFile["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", haveLck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Labcd/WG;->Hw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()V
    .registers 3

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    :cond_0
    iget-boolean v0, p0, Labcd/WG;->Hw:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/WG;->Hw:Z

    :try_start_1
    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Labcd/zK;->j6(Ljava/io/File;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
