.class public Labcd/NC;
.super Ljava/lang/Object;


# instance fields
.field private DW:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
            "Ljava/util/ArrayList<",
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
    .registers 9

    iget-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->EQ()Labcd/xE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v0

    :try_start_f
    iget-object v1, p0, Labcd/NC;->u7:Labcd/yE;

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Labcd/NC;->Hw()V

    goto :goto_1a

    :cond_17
    invoke-virtual {p0}, Labcd/NC;->v5()V

    :goto_1a
    iget-object v1, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-boolean v1, p0, Labcd/NC;->EQ:Z

    if-nez v1, :cond_2a

    invoke-direct {p0}, Labcd/NC;->Zo()V

    goto :goto_3e

    :cond_2a
    new-instance v1, Labcd/VC;

    iget-object v2, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Labcd/VC;-><init>([Ljava/lang/String;)V

    throw v1

    :cond_3e
    :goto_3e
    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1}, Labcd/MC;->DW()V

    iget-object v1, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_f7

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const-string v4, ""

    :goto_4e
    if-gez v1, :cond_b2

    if-eqz v3, :cond_55

    :try_start_52
    invoke-direct {p0, v3}, Labcd/NC;->j6(Ljava/io/File;)V

    :cond_55
    iget-object v1, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_81

    iget-object v1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v1}, Labcd/MC;->j6()Z

    move-result v1
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_f7

    if-eqz v1, :cond_7b

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_79

    return v2

    :cond_79
    const/4 v0, 0x0

    return v0

    :cond_7b
    :try_start_7b
    new-instance v1, Labcd/_C;

    invoke-direct {v1}, Labcd/_C;-><init>()V

    throw v1

    :cond_81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    iget-object v5, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v5, v3}, Labcd/KC;->DW(Ljava/lang/String;)Labcd/QC;

    move-result-object v3

    sget-object v5, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v3}, Labcd/QC;->Zo()I

    move-result v6

    invoke-virtual {v5, v6}, Labcd/rE;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    goto :goto_5f

    :cond_ac
    iget-object v5, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-static {v5, v4, v3, v0}, Labcd/NC;->j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V

    goto :goto_5f

    :cond_b2
    iget-object v3, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v6}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_dd

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_f2

    iget-object v6, p0, Labcd/NC;->we:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f2

    :cond_dd
    invoke-static {v3, v4}, Labcd/NC;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f1

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v7}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Labcd/NC;->j6(Ljava/io/File;)V
    :try_end_f1
    .catchall {:try_start_7b .. :try_end_f1} :catchall_f7

    :cond_f1
    move-object v4, v3

    :cond_f2
    :goto_f2
    add-int/lit8 v1, v1, -0x1

    move-object v3, v5

    goto/16 :goto_4e

    :catchall_f7
    move-exception v1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    goto :goto_fd

    :goto_fc
    throw v1

    :goto_fd
    goto :goto_fc
.end method

.method private Zo()V
    .registers 7

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4e

    iget-object v0, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-direct {p0, v4}, Labcd/NC;->j6(Ljava/io/File;)V

    goto :goto_14

    :cond_36
    new-instance v0, Labcd/VC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotDeleteFile:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/VC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v5}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-direct {p0, v4}, Labcd/NC;->j6(Ljava/io/File;)V

    goto :goto_6

    :cond_69
    new-instance v0, Labcd/VC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotDeleteFile:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/VC;-><init>(Ljava/lang/String;)V

    goto :goto_7e

    :goto_7d
    throw v0

    :goto_7e
    goto :goto_7d
.end method

.method private j6(Labcd/QC;)V
    .registers 4

    if-eqz p1, :cond_13

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p1}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {v0, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_13
    return-void
.end method

.method public static j6(Labcd/UE;Ljava/io/File;Labcd/QC;Labcd/IE;)V
    .registers 10

    invoke-virtual {p2}, Labcd/QC;->Hw()Labcd/yE;

    move-result-object v0

    invoke-virtual {p3, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object p3

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

    move-result-object v0

    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    sget-object v2, Labcd/bK;->j6:Labcd/gE$b;

    invoke-virtual {v1, v2}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/bK;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object v3

    sget-object v4, Labcd/jE$a;->DW:Labcd/jE$a;

    if-ne v3, v4, :cond_42

    new-instance v3, Labcd/SK;

    invoke-direct {v3, v2}, Labcd/SK;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    :cond_42
    :try_start_42
    invoke-virtual {p3, v2}, Labcd/FE;->j6(Ljava/io/OutputStream;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_c8

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object p0

    invoke-virtual {v1}, Labcd/bK;->DW()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_79

    invoke-virtual {p0}, Labcd/pK;->v5()Z

    move-result v2

    if-eqz v2, :cond_79

    sget-object v2, Labcd/rE;->Hw:Labcd/rE;

    invoke-virtual {p2}, Labcd/QC;->Zo()I

    move-result v5

    invoke-virtual {v2, v5}, Labcd/rE;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-virtual {p0, v0}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_79

    invoke-virtual {p0, v0, v3}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    goto :goto_79

    :cond_70
    invoke-virtual {p0, v0}, Labcd/pK;->j6(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {p0, v0, v4}, Labcd/pK;->j6(Ljava/io/File;Z)Z

    :cond_79
    :goto_79
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_a8

    invoke-static {p1}, Labcd/zK;->j6(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_a8

    :cond_89
    new-instance p0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->couldNotWriteFile:Ljava/lang/String;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Labcd/QC;->j6(J)V

    invoke-virtual {v1}, Labcd/bK;->j6()Labcd/jE$a;

    move-result-object p0

    sget-object v0, Labcd/jE$a;->j6:Labcd/jE$a;

    if-eq p0, v0, :cond_bf

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Labcd/QC;->DW(J)V

    goto :goto_c7

    :cond_bf
    invoke-virtual {p3}, Labcd/FE;->DW()J

    move-result-wide p0

    long-to-int p1, p0

    invoke-virtual {p2, p1}, Labcd/QC;->j6(I)V

    :goto_c7
    return-void

    :catchall_c8
    move-exception p0

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method private j6(Labcd/YJ;Labcd/yE;)V
    .registers 3

    if-nez p2, :cond_b

    new-instance p2, Labcd/VJ;

    invoke-direct {p2}, Labcd/VJ;-><init>()V

    invoke-virtual {p1, p2}, Labcd/YJ;->j6(Labcd/TJ;)I

    goto :goto_e

    :cond_b
    invoke-virtual {p1, p2}, Labcd/YJ;->j6(Labcd/YD;)I

    :goto_e
    return-void
.end method

.method private j6(Ljava/io/File;)V
    .registers 3

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->J8()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_17
    return-void
.end method

.method private j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V
    .registers 7

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_19

    new-instance p1, Labcd/QC;

    invoke-virtual {p2}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/QC;)V

    iget-object p2, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {p2, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_19
    if-eqz p3, :cond_44

    sget-object p1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    new-instance p1, Labcd/QC;

    invoke-virtual {p3}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object p2, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {p2, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_44
    if-eqz p4, :cond_6f

    sget-object p1, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    new-instance p1, Labcd/QC;

    invoke-virtual {p4}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/rE;)V

    invoke-virtual {p4}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p2

    invoke-virtual {p1, p2}, Labcd/QC;->j6(Labcd/YD;)V

    iget-object p2, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {p2, p1}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_6f
    return-void
.end method

.method private j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V
    .registers 6

    sget-object v0, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Labcd/NC;->DW:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Labcd/QC;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/QC;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2}, Labcd/QC;->j6(Labcd/YD;)V

    invoke-virtual {v0, p3}, Labcd/QC;->j6(Labcd/rE;)V

    iget-object p1, p0, Labcd/NC;->VH:Labcd/MC;

    invoke-virtual {p1, v0}, Labcd/MC;->DW(Labcd/QC;)V

    :cond_1e
    return-void
.end method

.method private j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z
    .registers 5

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x0

    if-nez p2, :cond_8

    return p4

    :cond_8
    if-eqz p1, :cond_f

    invoke-virtual {p1, p3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result p4

    goto :goto_12

    :cond_f
    if-nez p3, :cond_12

    const/4 p4, 0x1

    :cond_12
    :goto_12
    return p4
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Labcd/XJ;

    iget-object v1, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/XJ;-><init>(Labcd/UE;)V

    new-instance v1, Labcd/RC;

    iget-object v2, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-direct {v1, v2}, Labcd/RC;-><init>(Labcd/KC;)V

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    new-instance v1, Labcd/WJ;

    iget-object v2, p0, Labcd/NC;->j6:Labcd/UE;

    invoke-direct {v1, v2}, Labcd/WJ;-><init>(Labcd/UE;)V

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Labcd/TJ;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(Z)V

    invoke-static {p1}, Labcd/fK;->j6(Ljava/lang/String;)Labcd/fK;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/YJ;->j6(Labcd/jK;)V

    :cond_26
    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2e

    return v2

    :cond_2e
    const-class p1, Labcd/RC;

    invoke-virtual {v0, v2, p1}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object p1

    check-cast p1, Labcd/RC;

    const-class v2, Labcd/_J;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    check-cast v2, Labcd/_J;

    if-eqz p1, :cond_4d

    if-nez v2, :cond_43

    goto :goto_4d

    :cond_43
    invoke-virtual {p1}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_4d
    :goto_4d
    return v1
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    :cond_41
    :goto_41
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_4a

    return-void

    :cond_4a
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v1, 0x0

    const-class v2, Labcd/UJ;

    invoke-virtual {v0, v1, v2}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v0

    iget-object v1, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v2, 0x1

    const-class v3, Labcd/UJ;

    invoke-virtual {v1, v2, v3}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v1

    iget-object v2, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v3, 0x2

    const-class v4, Labcd/LC;

    invoke-virtual {v2, v3, v4}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v2

    check-cast v2, Labcd/LC;

    iget-object v3, p0, Labcd/NC;->gn:Labcd/XJ;

    const/4 v4, 0x3

    const-class v5, Labcd/_J;

    invoke-virtual {v3, v4, v5}, Labcd/YJ;->j6(ILjava/lang/Class;)Labcd/TJ;

    move-result-object v3

    check-cast v3, Labcd/_J;

    invoke-virtual {p0, v0, v1, v2, v3}, Labcd/NC;->j6(Labcd/TJ;Labcd/TJ;Labcd/LC;Labcd/_J;)V

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->u7()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_41
.end method

.method j6(Labcd/TJ;Labcd/TJ;Labcd/LC;Labcd/_J;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez p3, :cond_21

    if-nez v2, :cond_21

    if-nez v1, :cond_21

    iget-object v1, v0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v1}, Labcd/XJ;->QX()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {v0, v4, v5, v5, v5}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    :cond_20
    return-void

    :cond_21
    if-nez p3, :cond_25

    move-object v6, v5

    goto :goto_29

    :cond_25
    invoke-virtual/range {p3 .. p3}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v6

    :goto_29
    if-nez v2, :cond_2d

    move-object v7, v5

    goto :goto_31

    :cond_2d
    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v7

    :goto_31
    if-nez v1, :cond_35

    move-object v8, v5

    goto :goto_39

    :cond_35
    invoke-virtual/range {p1 .. p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v8

    :goto_39
    if-nez p3, :cond_3d

    move-object v9, v5

    goto :goto_41

    :cond_3d
    invoke-virtual/range {p3 .. p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v9

    :goto_41
    if-nez v2, :cond_45

    move-object v10, v5

    goto :goto_49

    :cond_45
    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v10

    :goto_49
    if-nez v1, :cond_4d

    move-object v11, v5

    goto :goto_51

    :cond_4d
    invoke-virtual/range {p1 .. p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v11

    :goto_51
    if-eqz v1, :cond_65

    sget-object v13, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual/range {p1 .. p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62

    const/16 v13, 0xd00

    goto :goto_66

    :cond_62
    const/16 v13, 0xf00

    goto :goto_66

    :cond_65
    const/4 v13, 0x0

    :goto_66
    const/16 v14, 0xd0

    if-eqz p3, :cond_7c

    sget-object v15, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual/range {p3 .. p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    const/16 v5, 0xd0

    goto :goto_7b

    :cond_79
    const/16 v5, 0xf0

    :goto_7b
    or-int/2addr v13, v5

    :cond_7c
    const/16 v5, 0xd

    if-eqz v2, :cond_92

    sget-object v15, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8f

    const/16 v12, 0xd

    goto :goto_91

    :cond_8f
    const/16 v12, 0xf

    :goto_91
    or-int/2addr v13, v12

    :cond_92
    and-int/lit16 v12, v13, 0x222

    if-eqz v12, :cond_112

    and-int/lit8 v15, v13, 0xf

    if-eq v15, v5, :cond_a4

    and-int/lit16 v5, v13, 0xf0

    if-eq v5, v14, :cond_a4

    and-int/lit16 v5, v13, 0xf00

    const/16 v14, 0xd00

    if-ne v5, v14, :cond_112

    :cond_a4
    sparse-switch v13, :sswitch_data_1e6

    goto :goto_d0

    :sswitch_a8
    invoke-direct {v0, v8, v11, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v5

    if-eqz v5, :cond_10a

    invoke-virtual/range {p3 .. p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v5

    if-eqz v3, :cond_ff

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v3

    if-eqz v3, :cond_d8

    goto :goto_ff

    :sswitch_bc
    invoke-direct {v0, v8, v11, v7, v10}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v3

    if-eqz v3, :cond_c9

    invoke-direct {v0, v4}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    goto :goto_10a

    :cond_c9
    invoke-direct {v0, v4}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10a

    goto :goto_ef

    :goto_d0
    :sswitch_d0
    invoke-virtual/range {p3 .. p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_111

    :cond_d8
    :sswitch_d8
    invoke-direct {v0, v4}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto :goto_111

    :sswitch_dc
    invoke-direct {v0, v4}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e3

    goto :goto_10a

    :cond_e3
    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v2

    invoke-direct {v0, v4, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_111

    :cond_ef
    :goto_ef
    :sswitch_ef
    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-direct {v0, v4, v7, v1}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_111

    :sswitch_f7
    if-eqz p3, :cond_fe

    invoke-virtual/range {p3 .. p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v5

    goto :goto_ff

    :cond_fe
    const/4 v5, 0x0

    :cond_ff
    :goto_ff
    invoke-direct {v0, v4, v5, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto :goto_111

    :sswitch_103
    invoke-direct {v0, v4}, Labcd/NC;->j6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10a

    goto :goto_ef

    :cond_10a
    :goto_10a
    invoke-virtual/range {p3 .. p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v3

    invoke-direct {v0, v4, v3, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    :goto_111
    :sswitch_111
    return-void

    :cond_112
    if-nez v12, :cond_115

    return-void

    :cond_115
    const/16 v5, 0xf

    if-ne v13, v5, :cond_12b

    if-eqz v3, :cond_12b

    sget-object v5, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual/range {p4 .. p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12b

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    :cond_12b
    if-nez p3, :cond_15e

    if-eqz v3, :cond_150

    sget-object v5, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_150

    if-eqz v7, :cond_14b

    invoke-virtual/range {p4 .. p4}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v3

    invoke-direct {v0, v7, v10, v5, v3}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v3

    if-nez v3, :cond_150

    :cond_14b
    const/4 v3, 0x0

    invoke-direct {v0, v4, v3, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    return-void

    :cond_150
    if-nez v1, :cond_15b

    :cond_152
    :goto_152
    invoke-virtual/range {p2 .. p2}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v1

    invoke-direct {v0, v4, v7, v1}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto/16 :goto_1e5

    :cond_15b
    if-nez v2, :cond_152

    goto :goto_196

    :cond_15e
    invoke-virtual/range {p3 .. p3}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v5

    if-nez v1, :cond_18c

    if-eqz v2, :cond_172

    invoke-direct {v0, v7, v10, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v6

    if-eqz v6, :cond_16d

    goto :goto_172

    :cond_16d
    :goto_16d
    invoke-direct {v0, v4, v5, v1, v2}, Labcd/NC;->j6(Ljava/lang/String;Labcd/QC;Labcd/TJ;Labcd/TJ;)V

    goto/16 :goto_1e5

    :cond_172
    :goto_172
    if-nez v2, :cond_188

    iget-object v6, v0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v6}, Labcd/XJ;->QX()Z

    move-result v6

    if-eqz v6, :cond_188

    if-eqz v5, :cond_196

    if-eqz v3, :cond_16d

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v3

    if-eqz v3, :cond_196

    goto :goto_16d

    :cond_188
    invoke-direct {v0, v5}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_1e5

    :cond_18c
    if-nez v2, :cond_1aa

    invoke-virtual {v5}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v7

    sget-object v10, Labcd/rE;->v5:Labcd/rE;

    if-ne v7, v10, :cond_19a

    :cond_196
    :goto_196
    invoke-direct {v0, v4}, Labcd/NC;->DW(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_19a
    invoke-direct {v0, v8, v11, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v6

    if-eqz v6, :cond_16d

    if-eqz v3, :cond_16d

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v3

    if-eqz v3, :cond_196

    goto :goto_16d

    :cond_1aa
    invoke-direct {v0, v8, v11, v7, v10}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v12

    if-nez v12, :cond_1bd

    invoke-direct {v0, v8, v11, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v12

    if-nez v12, :cond_1bd

    invoke-direct {v0, v7, v10, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v12

    if-nez v12, :cond_1bd

    goto :goto_16d

    :cond_1bd
    invoke-direct {v0, v8, v11, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v8

    if-eqz v8, :cond_188

    invoke-direct {v0, v7, v10, v6, v9}, Labcd/NC;->j6(Labcd/yE;Labcd/rE;Labcd/yE;Labcd/rE;)Z

    move-result v6

    if-nez v6, :cond_188

    if-eqz v5, :cond_1d9

    sget-object v6, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v5}, Labcd/QC;->j6()Labcd/rE;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d9

    goto/16 :goto_152

    :cond_1d9
    if-eqz v5, :cond_152

    if-eqz v3, :cond_16d

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result v3

    if-eqz v3, :cond_152

    goto :goto_16d

    :goto_1e5
    return-void

    :sswitch_data_1e6
    .sparse-switch
        0xdf -> :sswitch_103
        0xfd -> :sswitch_f7
        0xd0f -> :sswitch_ef
        0xddf -> :sswitch_dc
        0xdf0 -> :sswitch_f7
        0xdfd -> :sswitch_d8
        0xdff -> :sswitch_111
        0xf0d -> :sswitch_d8
        0xfd0 -> :sswitch_d0
        0xfdd -> :sswitch_111
        0xfdf -> :sswitch_bc
        0xffd -> :sswitch_a8
    .end sparse-switch
.end method

.method j6(Labcd/UJ;Labcd/LC;Labcd/_J;)V
    .registers 6

    if-eqz p1, :cond_56

    if-nez p2, :cond_19

    if-eqz p3, :cond_46

    sget-object p2, Labcd/rE;->j6:Labcd/rE;

    invoke-virtual {p3}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {p3}, Labcd/_J;->U2()Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_60

    :cond_19
    if-eqz p3, :cond_46

    invoke-virtual {p1, p2}, Labcd/TJ;->j6(Labcd/TJ;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_46

    :cond_22
    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Labcd/_J;->j6(Labcd/QC;Z)Z

    move-result p3

    if-nez p3, :cond_46

    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p3

    invoke-virtual {p3}, Labcd/QC;->VH()I

    move-result p3

    if-eqz p3, :cond_3e

    goto :goto_46

    :cond_3e
    invoke-virtual {p2}, Labcd/RC;->J8()Labcd/QC;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/NC;->j6(Labcd/QC;)V

    goto :goto_7e

    :cond_46
    :goto_46
    invoke-virtual {p1}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object p3

    invoke-virtual {p1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Labcd/NC;->j6(Ljava/lang/String;Labcd/yE;Labcd/rE;)V

    goto :goto_7e

    :cond_56
    if-eqz p3, :cond_7e

    iget-object p1, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {p1}, Labcd/XJ;->QX()Z

    move-result p1

    if-eqz p1, :cond_6c

    :goto_60
    iget-object p1, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object p2, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {p2}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_6c
    if-eqz p2, :cond_7e

    invoke-virtual {p2}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/NC;->DW(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    invoke-virtual {p2}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7e
    :goto_7e
    return-void
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

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_a

    iget-object v1, p0, Labcd/NC;->Zo:Labcd/KC;

    invoke-virtual {v1}, Labcd/KC;->tp()V

    return v0

    :catchall_a
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

    :cond_38
    :goto_38
    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Labcd/NC;->FH:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/NC;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void

    :cond_48
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

    if-eqz v0, :cond_38

    iget-object v0, p0, Labcd/NC;->gn:Labcd/XJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto :goto_38
.end method
