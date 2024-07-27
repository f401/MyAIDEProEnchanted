.class public Labcd/NC;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:Z

.field private FH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Labcd/MC;

.field private Zo:Labcd/KC;

.field private gn:Labcd/XJ;

.field private j6:Labcd/UE;

.field private tp:Labcd/_J;

.field private u7:Labcd/yE;

.field private v5:Labcd/yE;

.field private we:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;Labcd/KC;Labcd/yE;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v5, Labcd/WJ;

    invoke-direct {v5, p1}, Labcd/WJ;-><init>(Labcd/UE;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;Labcd/_J;)V

    return-void
.end method

.method public constructor <init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;)V
    .registers 11

    new-instance v5, Labcd/WJ;

    invoke-direct {v5, p1}, Labcd/WJ;-><init>(Labcd/UE;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/NC;-><init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;Labcd/_J;)V

    return-void
.end method

.method public constructor <init>(Labcd/UE;Labcd/yE;Labcd/KC;Labcd/yE;Labcd/_J;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/NC;->EQ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    iput-object p1, p0, Labcd/NC;->j6:Labcd/UE;

    iput-object p3, p0, Labcd/NC;->Zo:Labcd/KC;

    iput-object p2, p0, Labcd/NC;->u7:Labcd/yE;

    iput-object p4, p0, Labcd/NC;->v5:Labcd/yE;

    iput-object p5, p0, Labcd/NC;->tp:Labcd/_J;

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private VH()Z
    .registers 8

    iget-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Labcd/NC;->u7:Labcd/yE;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Labcd/NC;->Hw()V

    :goto_0
    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Labcd/NC;->EQ:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Labcd/NC;->Zo()V

    :cond_0
    iget-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v0}, Labcd/MC;->DW()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const-string v1, ""

    :try_start_1
    iget-object v2, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move-object v2, v0

    :goto_1
    if-gez v3, :cond_8

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Labcd/NC;->j6(Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v0}, Labcd/MC;->j6()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Labcd/NC;->v5()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Labcd/IE;->FH()V

    throw v0

    :cond_4
    :try_start_3
    new-instance v1, Labcd/VC;

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Labcd/VC;-><init>([Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    new-instance v0, Labcd/_C;

    invoke-direct {v0}, Labcd/_C;-><init>()V

    throw v0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v3, v0}, Labcd/KC;->DW(Ljava/lang/String;)Labcd/QC;

    move-result-object v0

    sget-object v3, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v0}, Labcd/QC;->Zo()I

    move-result v5

    invoke-virtual {v3, v5}, Labcd/rE;->j6(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-static {v3, v2, v0, v4}, Labcd/NC;->j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, -0x1

    move-object v1, v0

    goto/16 :goto_1

    :cond_a
    invoke-static {v0, v1}, Labcd/NC;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v6}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Labcd/NC;->j6(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_b
    move-object v0, v1

    goto :goto_4
.end method

.method private Zo()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Labcd/NC;->j6(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    new-instance v0, Labcd/VC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotDeleteFile:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/VC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Labcd/NC;->j6(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    new-instance v1, Labcd/VC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotDeleteFile:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/VC;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Labcd/QC;)V
    .registers 4

    if-eqz p1, :cond_0

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p1}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v0, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_0
    return-void
.end method

.method public static j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v0

    invoke-virtual {p3, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "._"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/bK;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bK;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v1

    sget-object v5, Labcd/jE$a;->DW:Labcd/jE$a;

    if-ne v1, v5, :cond_5

    new-instance v1, Labcd/SK;

    invoke-direct {v1, v2}, Labcd/SK;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    :try_start_0
    invoke-virtual {v3, v1}, Labcd/FE;->j6(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v1

    invoke-virtual {v0}, Labcd/bK;->DW()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Labcd/pK;->v5()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Labcd/rE;->Hw:Labcd/rE;

    invoke-virtual {p2}, Labcd/QC;->Zo()I

    move-result v5

    invoke-virtual {v2, v5}, Labcd/rE;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4, v7}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    :cond_0
    :goto_1
    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    invoke-virtual {v4, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Labcd/QC;->j6(J)V

    invoke-virtual {v0}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v0

    sget-object v1, Labcd/jE$a;->j6:Labcd/jE$a;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Labcd/QC;->DW(J)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v1, v4}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v6}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->couldNotWriteFile:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3}, Labcd/FE;->DW()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Labcd/QC;->j6(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_5
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private j6(Labcd/YJ;Labcd/yE;)V
    .registers 4

    if-nez p2, :cond_0

    new-instance v0, Labcd/VJ;

    invoke-direct {v0}, Labcd/VJ;-><init>()V

    invoke-virtual {p1, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Labcd/YJ;->j6(Labcd/YD;)I

    goto :goto_0
.end method

.method private j6(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V
    .registers 8

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    new-instance v0, Labcd/QC;

    invoke-virtual {p2}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Labcd/QC;->j6(Labcd/QC;)V

    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Labcd/QC;

    invoke-virtual {p3}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_1
    if-eqz p4, :cond_2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Labcd/QC;

    invoke-virtual {p4}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p4}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_2
    return-void
.end method

.method private j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V
    .registers 6

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/QC;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Labcd/QC;->j6(Labcd/YD;)V

    invoke-virtual {v0, p3}, Labcd/QC;->j6(Labcd/rE;)V

    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_0
    return-void
.end method

.method private j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Labcd/XJ;

    iget-object v0, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v4, v0}, Labcd/XJ;-><init>(Labcd/UE;)V

    new-instance v0, Labcd/RC;

    iget-object v1, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-direct {v0, v1}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    new-instance v0, Labcd/WJ;

    iget-object v1, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/TJ;)I

    invoke-virtual {v4, v3}, Labcd/YJ;->j6(Z)V

    invoke-static {p1}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/YJ;->j6(Labcd/jK;)V

    :cond_0
    invoke-virtual {v4}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const-class v0, Labcd/RC;

    invoke-virtual {v4, v2, v0}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/RC;

    const-class v1, Labcd/_J;

    invoke-virtual {v4, v3, v1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/_J;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    return-object v0
.end method

.method public FH()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Hw()V
    .registers 7

    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/XJ;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v0, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v0

    iput-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->u7:Labcd/yE;

    invoke-direct {p0, v0, v1}, Labcd/NC;->j6(Labcd/YJ;Labcd/yE;)V

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->v5:Labcd/yE;

    invoke-direct {p0, v0, v1}, Labcd/NC;->j6(Labcd/YJ;Labcd/yE;)V

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    new-instance v1, Labcd/LC;

    iget-object v2, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-direct {v1, v2}, Labcd/LC;-><init>(Labcd/MC;)V

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->tp:Labcd/_J;

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v1, 0x0

    const-class v2, Labcd/UJ;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v1, 0x1

    const-class v3, Labcd/UJ;

    invoke-virtual {v0, v1, v3}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v1, 0x2

    const-class v4, Labcd/LC;

    invoke-virtual {v0, v1, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/LC;

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v4, 0x3

    const-class v5, Labcd/_J;

    invoke-virtual {v1, v4, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/_J;

    invoke-virtual {p0, v2, v3, v0, v1}, Labcd/NC;->j6(Labcd/TJ;Labcd/TJ;Labcd/LC;Labcd/_J;)V

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_0
.end method

.method j6(Labcd/TJ;Labcd/TJ;Labcd/LC;Labcd/_J;)V
    .registers 16

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v8

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/XJ;->QX()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v8, v0, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    if-nez p3, :cond_5

    const/4 v0, 0x0

    move-object v7, v0

    :goto_1
    if-nez p2, :cond_6

    const/4 v0, 0x0

    move-object v6, v0

    :goto_2
    if-nez p1, :cond_7

    const/4 v0, 0x0

    move-object v5, v0

    :goto_3
    if-nez p3, :cond_8

    const/4 v0, 0x0

    move-object v4, v0

    :goto_4
    if-nez p2, :cond_9

    const/4 v0, 0x0

    move-object v3, v0

    :goto_5
    if-nez p1, :cond_a

    const/4 v0, 0x0

    move-object v2, v0

    :goto_6
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xd00

    :cond_2
    :goto_7
    if-eqz p3, :cond_3

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xd0

    :goto_8
    or-int/2addr v1, v0

    :cond_3
    if-eqz p2, :cond_2e

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xd

    :goto_9
    or-int/2addr v0, v1

    :goto_a
    and-int/lit16 v1, v0, 0x222

    if-eqz v1, :cond_17

    and-int/lit8 v9, v0, 0xf

    const/16 v10, 0xd

    if-eq v9, v10, :cond_4

    and-int/lit16 v9, v0, 0xf0

    const/16 v10, 0xd0

    if-eq v9, v10, :cond_4

    and-int/lit16 v9, v0, 0xf00

    const/16 v10, 0xd00

    if-ne v9, v10, :cond_17

    :cond_4
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    move-object v2, v0

    goto :goto_6

    :cond_b
    const/16 v1, 0xf00

    goto :goto_7

    :cond_c
    const/16 v0, 0xf0

    goto :goto_8

    :cond_d
    const/16 v0, 0xf

    goto :goto_9

    :sswitch_1
    invoke-direct {p0, v5, v2, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    if-eqz p4, :cond_e

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, v5, v2, v6, v3}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v8}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0, v8}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0, v8}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-direct {p0, v8, v0, v1}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :sswitch_8
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_b

    :sswitch_9
    invoke-direct {p0, v8}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_17
    if-eqz v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_18

    if-eqz p4, :cond_18

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    :cond_18
    if-nez p3, :cond_1d

    if-eqz p4, :cond_1a

    sget-object v0, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz v6, :cond_19

    invoke-virtual {p4}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-direct {p0, v6, v3, v0, v1}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_1a
    if-nez p1, :cond_1b

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_1b
    if-nez p2, :cond_1c

    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    if-nez p1, :cond_23

    if-eqz p2, :cond_1e

    invoke-direct {p0, v6, v3, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1e
    if-nez p2, :cond_22

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v1}, Labcd/XJ;->QX()Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v0, :cond_21

    if-eqz p4, :cond_1f

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_1f
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_20
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_21
    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto/16 :goto_0

    :cond_23
    if-nez p2, :cond_28

    invoke-virtual {v0}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    sget-object v3, Labcd/rE;->v5:Labcd/rE;

    if-ne v1, v3, :cond_24

    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    invoke-direct {p0, v5, v2, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz p4, :cond_25

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_25
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_26
    invoke-direct {p0, v8}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_28
    invoke-direct {p0, v5, v2, v6, v3}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, v5, v2, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, v6, v3, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_29
    invoke-direct {p0, v5, v2, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-direct {p0, v6, v3, v7, v4}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v1

    if-nez v1, :cond_2d

    if-eqz v0, :cond_2a

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v0}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_2a
    if-eqz v0, :cond_2c

    if-eqz p4, :cond_2b

    const/4 v1, 0x1

    invoke-virtual {p4, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2b
    invoke-direct {p0, v8, v0, p1, p2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_0

    :cond_2c
    invoke-virtual {p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-direct {p0, v8, v6, v0}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_0

    :cond_2d
    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto/16 :goto_0

    :cond_2e
    move v0, v1

    goto/16 :goto_a

    nop

    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_9
        0xfd -> :sswitch_8
        0xd0f -> :sswitch_7
        0xddf -> :sswitch_6
        0xdf0 -> :sswitch_8
        0xdfd -> :sswitch_5
        0xdff -> :sswitch_0
        0xf0d -> :sswitch_4
        0xfd0 -> :sswitch_3
        0xfdd -> :sswitch_0
        0xfdf -> :sswitch_2
        0xffd -> :sswitch_1
    .end sparse-switch
.end method

.method j6(Labcd/UJ;Labcd/LC;Labcd/_J;)V
    .registers 7

    if-eqz p1, :cond_8

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Labcd/_J;->U2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p1, p2}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-virtual {v0}, Labcd/QC;->VH()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p1}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_0

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/XJ;->QX()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v1}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/NC;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {p2}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/NC;->EQ:Z

    return-void
.end method

.method public j6()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Labcd/NC;->VH()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v1, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->tp()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->tp()V

    throw v0
.end method

.method public v5()V
    .registers 6

    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->j6()Labcd/MC;

    move-result-object v0

    iput-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    new-instance v0, Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/XJ;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->v5:Labcd/yE;

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/YD;)I

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    new-instance v1, Labcd/LC;

    iget-object v2, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-direct {v1, v2}, Labcd/LC;-><init>(Labcd/MC;)V

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->tp:Labcd/_J;

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v1, 0x0

    const-class v2, Labcd/UJ;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    check-cast v0, Labcd/UJ;

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v2, 0x1

    const-class v3, Labcd/LC;

    invoke-virtual {v1, v2, v3}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    check-cast v1, Labcd/LC;

    iget-object v2, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v3, 0x2

    const-class v4, Labcd/_J;

    invoke-virtual {v2, v3, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    check-cast v2, Labcd/_J;

    invoke-virtual {p0, v0, v1, v2}, Labcd/NC;->j6(Labcd/UJ;Labcd/LC;Labcd/_J;)V

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_0
.end method
