.class Labcd/OJ$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/OJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Ljava/lang/String;

.field Hw:Ljava/io/File;

.field final Zo:Labcd/OJ;

.field final j6:Labcd/RJ;

.field v5:Labcd/bH;


# direct methods
.method constructor <init>(Labcd/OJ;Labcd/RJ;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    iput-object p1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/OJ$a;->j6:Labcd/RJ;

    iput-object p3, p0, Labcd/OJ$a;->DW:Ljava/lang/String;

    iget-object v0, p0, Labcd/OJ$a;->DW:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".idx"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    iget-object v0, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    const-string v1, "pack-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Labcd/OJ;->j6(Labcd/OJ;)Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    instance-of v0, v0, Labcd/XG;

    if-eqz v0, :cond_1

    invoke-static {p1}, Labcd/OJ;->j6(Labcd/OJ;)Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    check-cast v0, Labcd/XG;

    invoke-virtual {v0}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "walk-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".walkidx"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    :cond_1
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method DW(Labcd/LE;)V
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/OJ$a;->v5:Labcd/bH;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-nez v1, :cond_3

    const-string v1, "jgit-walk-"

    const-string v2, ".idx"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    :cond_1
    :goto_1
    iget-object v1, p0, Labcd/OJ$a;->j6:Labcd/RJ;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pack/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..idx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v1, Labcd/RJ$a;->DW:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    :goto_2
    invoke-interface {p1, v2, v0}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x800

    :try_start_1
    new-array v0, v0, [B

    :goto_3
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-gez v3, :cond_5

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-interface {p1}, Labcd/LE;->j6()V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_3
    iget-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v1}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object v1

    iput-object v1, p0, Labcd/OJ$a;->v5:Labcd/bH;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    div-int/lit16 v3, v3, 0x400

    invoke-interface {p1, v3}, Labcd/LE;->update(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v2, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v2}, Labcd/zK;->j6(Ljava/io/File;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, v1, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_6
    :try_start_7
    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ$a;->v5:Labcd/bH;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v1}, Labcd/zK;->j6(Ljava/io/File;)V

    throw v0
.end method

.method j6(Labcd/LE;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pack/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/OJ$a;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ$a;->j6:Labcd/RJ;

    invoke-virtual {v1, v0}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v1}, Labcd/OJ;->DW(Labcd/OJ;)Labcd/EE;

    move-result-object v1

    iget-object v0, v0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/AI;->j6(Z)V

    iget-object v1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v1}, Labcd/OJ;->FH(Labcd/OJ;)Labcd/wE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/AI;->j6(Labcd/wE;)V

    iget-object v1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v1}, Labcd/OJ;->Hw(Labcd/OJ;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/AI;->j6(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Labcd/AI;->j6(Labcd/LE;)Labcd/kH;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v1}, Labcd/OJ;->v5(Labcd/OJ;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v0}, Labcd/OJ;->DW(Labcd/OJ;)Labcd/EE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/EE;->FH()V

    return-void
.end method
