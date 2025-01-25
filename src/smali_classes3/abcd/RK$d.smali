.class public Labcd/RK$d;
.super Labcd/RK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final Hw:Ljava/io/File;

.field private v5:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/high16 v1, 0x100000

    invoke-direct {p0, v0, v1}, Labcd/RK$d;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 3

    invoke-direct {p0, p2}, Labcd/RK;-><init>(I)V

    iput-object p1, p0, Labcd/RK$d;->Hw:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    if-nez v0, :cond_9

    invoke-super {p0}, Labcd/RK;->DW()J

    move-result-wide v0

    return-wide v0

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected Hw()Ljava/io/OutputStream;
    .registers 4

    const-string v0, ".buf"

    iget-object v1, p0, Labcd/RK$d;->Hw:Ljava/io/File;

    const-string v2, "jgit_"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public j6()V
    .registers 3

    invoke-super {p0}, Labcd/RK;->j6()V

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    if-eqz v0, :cond_1a

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_16

    :cond_13
    iput-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    goto :goto_1a

    :catchall_16
    move-exception v0

    iput-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public j6(Ljava/io/OutputStream;Labcd/LE;)V
    .registers 7

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    return-void

    :cond_8
    if-nez p2, :cond_c

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_c
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2000

    :try_start_15
    new-array v1, v1, [B

    :goto_17
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_2b

    if-gez v2, :cond_21

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_21
    const/4 v3, 0x0

    :try_start_22
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    div-int/lit16 v2, v2, 0x400

    invoke-interface {p2, v2}, Labcd/LE;->update(I)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2b

    goto :goto_17

    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_31

    :goto_30
    throw p1

    :goto_31
    goto :goto_30
.end method
