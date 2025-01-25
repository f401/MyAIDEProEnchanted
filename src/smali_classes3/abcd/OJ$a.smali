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
    .registers 7

    iput-object p1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Labcd/OJ$a;->j6:Labcd/RJ;

    iput-object p3, p0, Labcd/OJ$a;->DW:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, ".idx"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    const-string v0, "pack-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_34
    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_44

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {p2, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_44
    invoke-static {p1}, Labcd/OJ;->j6(Labcd/OJ;)Labcd/UE;

    move-result-object p3

    invoke-virtual {p3}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object p3

    instance-of p3, p3, Labcd/XG;

    if-eqz p3, :cond_78

    invoke-static {p1}, Labcd/OJ;->j6(Labcd/OJ;)Labcd/UE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object p1

    check-cast p1, Labcd/XG;

    invoke-virtual {p1}, Labcd/XG;->gn()Ljava/io/File;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "walk-"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".walkidx"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    :cond_78
    return-void
.end method


# virtual methods
.method DW(Labcd/LE;)V
    .registers 10

    iget-object v0, p0, Labcd/OJ$a;->v5:Labcd/bH;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-nez v0, :cond_14

    const-string v0, "jgit-walk-"

    const-string v1, ".idx"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    goto :goto_24

    :cond_14
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_1a
    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ$a;->v5:Labcd/bH;
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    :cond_24
    :goto_24
    iget-object v0, p0, Labcd/OJ$a;->j6:Labcd/RJ;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pack/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/OJ$a;->FH:Ljava/lang/String;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, v0, Labcd/RJ$a;->DW:J

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-gez v7, :cond_60

    const/4 v3, 0x0

    goto :goto_64

    :cond_60
    const-wide/16 v5, 0x400

    div-long/2addr v2, v5

    long-to-int v3, v2

    :goto_64
    invoke-interface {p1, v1, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    :try_start_67
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6e} :catch_b8
    .catchall {:try_start_67 .. :try_end_6e} :catchall_b6

    const/16 v2, 0x800

    :try_start_70
    new-array v2, v2, [B

    :goto_72
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_8a

    iget-object v3, v0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_81

    goto :goto_8a

    :cond_81
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    div-int/lit16 v3, v3, 0x400

    invoke-interface {p1, v3}, Labcd/LE;->update(I)V
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_b1

    goto :goto_72

    :cond_8a
    :goto_8a
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_b8
    .catchall {:try_start_8a .. :try_end_8d} :catchall_b6

    iget-object v0, v0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-interface {p1}, Labcd/LE;->j6()V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_a1

    iget-object p1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    return-void

    :cond_a1
    :try_start_a1
    iget-object p1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {p1}, Labcd/bH;->j6(Ljava/io/File;)Labcd/bH;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ$a;->v5:Labcd/bH;
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a9} :catch_aa

    return-void

    :catch_aa
    move-exception p1

    iget-object v0, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V

    throw p1

    :catchall_b1
    move-exception p1

    :try_start_b2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b6} :catch_b8
    .catchall {:try_start_b2 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p1

    goto :goto_bf

    :catch_b8
    move-exception p1

    :try_start_b9
    iget-object v1, p0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v1}, Labcd/zK;->j6(Ljava/io/File;)V

    throw p1
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_b6

    :goto_bf
    iget-object v0, v0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_c6

    :goto_c5
    throw p1

    :goto_c6
    goto :goto_c5
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

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object v0, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {v0}, Labcd/OJ;->v5(Labcd/OJ;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    iget-object p1, p0, Labcd/OJ$a;->Zo:Labcd/OJ;

    invoke-static {p1}, Labcd/OJ;->DW(Labcd/OJ;)Labcd/EE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/EE;->FH()V

    return-void
.end method
