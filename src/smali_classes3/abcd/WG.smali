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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-static {p1}, Labcd/WG;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Labcd/WG;->FH:Ljava/io/File;

    iput-object p2, p0, Labcd/WG;->u7:Labcd/pK;

    return-void
.end method

.method static synthetic DW(Labcd/WG;)Ljava/io/FileOutputStream;
    .registers 1

    iget-object p0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method private VH()Z
    .registers 5

    iget-object v0, p0, Labcd/WG;->u7:Labcd/pK;

    invoke-virtual {v0}, Labcd/pK;->Hw()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    const/16 v2, 0xa

    if-lt v1, v2, :cond_16

    return v0

    :cond_16
    iget-object v2, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const-wide/16 v2, 0x64

    :try_start_22
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_28
    move-exception v1

    return v0
.end method

.method private gn()Z
    .registers 5

    iget-object v0, p0, Labcd/WG;->u7:Labcd/pK;

    invoke-virtual {v0}, Labcd/pK;->Hw()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v1, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    const/16 v2, 0xa

    if-lt v1, v2, :cond_18

    return v0

    :cond_18
    iget-object v2, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v3, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    const-wide/16 v2, 0x64

    :try_start_26
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_2c
    move-exception v1

    return v0
.end method

.method static j6(Ljava/io/File;)Ljava/io/File;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".lock"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic j6(Labcd/WG;Ljava/io/FileOutputStream;)V
    .registers 2

    iput-object p1, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    return-void
.end method

.method static synthetic j6(Labcd/WG;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/WG;->VH:Z

    return p0
.end method

.method private tp()V
    .registers 2

    iget-boolean v0, p0, Labcd/WG;->Zo:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    iput-object v0, p0, Labcd/WG;->gn:Labcd/LG;

    :cond_c
    return-void
.end method

.method private u7()V
    .registers 6

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    return-void

    :cond_5
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

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_14

    :cond_12
    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    :goto_14
    new-instance v1, Labcd/VG;

    invoke-direct {v1, p0, v0}, Labcd/VG;-><init>(Labcd/WG;Ljava/io/OutputStream;)V

    return-object v1
.end method

.method public FH(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Labcd/WG;->DW(Z)V

    return-void
.end method

.method public Hw()Z
    .registers 3

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/zK;->DW(Ljava/io/File;Z)V

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_23

    iput-boolean v1, p0, Labcd/WG;->Hw:Z

    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_23

    :catch_1e
    move-exception v0

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw v0

    :cond_23
    :goto_23
    iget-boolean v0, p0, Labcd/WG;->Hw:Z

    return v0
.end method

.method public Zo()V
    .registers 5

    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {v1}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/LG;->j6(Labcd/LG;)Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const-wide/16 v1, 0x19

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Labcd/WG;->FH:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    goto :goto_6
.end method

.method public j6(Labcd/yE;)V
    .registers 4

    const/16 v0, 0x29

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Labcd/YD;->FH([BI)V

    const/16 p1, 0x28

    const/16 v1, 0xa

    aput-byte v1, v0, p1

    invoke-virtual {p0, v0}, Labcd/WG;->j6([B)V

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/WG;->VH:Z

    return-void
.end method

.method public j6([B)V
    .registers 4

    invoke-direct {p0}, Labcd/WG;->u7()V

    :try_start_3
    iget-boolean v0, p0, Labcd/WG;->VH:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_1c

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    goto :goto_25

    :cond_1c
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_11

    :cond_20
    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    :goto_25
    iget-object p1, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2d} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2d} :catch_33
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p1

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw p1

    :catch_33
    move-exception p1

    invoke-virtual {p0}, Labcd/WG;->v5()V

    throw p1

    :catch_38
    move-exception p1

    invoke-virtual {p0}, Labcd/WG;->v5()V

    goto :goto_3e

    :goto_3d
    throw p1

    :goto_3e
    goto :goto_3d
.end method

.method public j6()Z
    .registers 6

    iget-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2d

    invoke-direct {p0}, Labcd/WG;->tp()V

    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    iget-object v3, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    iget-object v0, p0, Labcd/WG;->DW:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Labcd/WG;->VH()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_22
    invoke-direct {p0}, Labcd/WG;->gn()Z

    move-result v0

    if-eqz v0, :cond_29

    return v2

    :cond_29
    invoke-virtual {p0}, Labcd/WG;->v5()V

    return v1

    :cond_2d
    invoke-virtual {p0}, Labcd/WG;->v5()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->lockOnNotClosed:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/WG;->DW:Ljava/io/File;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    if-eqz v0, :cond_c

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/WG;->v5:Ljava/io/FileOutputStream;

    :cond_c
    iget-boolean v0, p0, Labcd/WG;->Hw:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/WG;->Hw:Z

    :try_start_13
    iget-object v0, p0, Labcd/WG;->FH:Ljava/io/File;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Labcd/zK;->j6(Ljava/io/File;I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    move-exception v0

    :cond_1b
    :goto_1b
    return-void
.end method
