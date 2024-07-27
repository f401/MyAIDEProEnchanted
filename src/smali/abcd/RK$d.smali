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

    if-nez v0, :cond_0

    invoke-super {p0}, Labcd/RK;->DW()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method protected Hw()Ljava/io/OutputStream;
    .registers 4

    const-string v0, "jgit_"

    const-string v1, ".buf"

    iget-object v2, p0, Labcd/RK$d;->Hw:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public j6()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Labcd/RK;->j6()V

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Labcd/RK$d;->v5:Ljava/io/File;

    throw v0
.end method

.method public j6(Ljava/io/OutputStream;Labcd/LE;)V
    .registers 7

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Labcd/RK$d;->v5:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    div-int/lit16 v2, v2, 0x400

    invoke-interface {p2, v2}, Labcd/LE;->update(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method
