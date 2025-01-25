.class Lcom/aide/ui/build/android/a$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2dbc5dca35aa80fbL
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x15ce9c29bf6a28e8L
    .end annotation
.end field

.field private final VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x8312dcef2dcf9adL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x5f86307424f9b6d3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gn:Z
    .annotation runtime Labcd/ru;
        field = 0x2eba1bd46b50785cL
    .end annotation
.end field

.field final u7:Lcom/aide/ui/build/android/a;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x610cff7007095610L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/a$b;

    const-wide v1, -0xe072a5183ad828fL  # -1.0349880997349775E241

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/build/android/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x63899b7466b7459fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide v1, 0x2c9cb9af0f1419ebL  # 8.606891919476812E-94

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2a
    iput-object p1, p0, Lcom/aide/ui/build/android/a$b;->u7:Lcom/aide/ui/build/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/aide/ui/build/android/a$b;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/build/android/a$b;->v5:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/ui/build/android/a$b;->Zo:Ljava/util/Map;

    iput-object p6, p0, Lcom/aide/ui/build/android/a$b;->VH:Ljava/util/List;

    iput-boolean p7, p0, Lcom/aide/ui/build/android/a$b;->gn:Z

    return-void
.end method

.method private DW()V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x91170c81ac9e768L
    .end annotation

    move-object/from16 v1, p0

    const-string v2, " executable - exit code "

    const-string v3, "Could not make "

    const-string v4, "777"

    const-wide v5, -0x3c43d6869569e453L  # -2.02928660579900954E18

    :try_start_d
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_14

    invoke-static {v5, v6, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-static {}, Lcom/aide/ui/build/android/a;->j6()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_b4

    if-eqz v0, :cond_21

    return-void

    :cond_21
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x1

    :try_start_25
    new-array v0, v9, [Ljava/lang/String;

    const-string v11, "/system/bin/chmod"

    aput-object v11, v0, v8

    aput-object v4, v0, v10

    iget-object v11, v1, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    aput-object v11, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v11

    if-nez v11, :cond_47

    goto :goto_89

    :cond_47
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_68} :catch_68
    .catchall {:try_start_25 .. :try_end_68} :catchall_b4

    :catch_68
    move-exception v0

    :try_start_69
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "/system/xbin/chmod"

    aput-object v9, v0, v8

    aput-object v4, v0, v10

    iget-object v4, v1, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    aput-object v4, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v4

    if-nez v4, :cond_8d

    :goto_89
    invoke-static {v10}, Lcom/aide/ui/build/android/a;->j6(Z)Z

    return-void

    :cond_8d
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_ae
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_b4
    .catchall {:try_start_69 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    sget-boolean v2, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v2, :cond_bc

    invoke-static {v0, v5, v6, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_bc
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/a$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/a$b;->FH:Ljava/lang/String;

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x41ee077d72ad7700L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2413bc0595499f67L  # 6.787771321383583E-135

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_29
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_5e
    .catchall {:try_start_0 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    move-object v6, p2

    sget-boolean p2, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz p2, :cond_70

    const-wide v2, 0x2413bc0595499f67L  # 6.787771321383583E-135

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_70
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x57b076d60b4964bcL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x2b895b48609fbb31L  # 5.796448677497693E-99

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_50

    array-length v1, v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_52

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_50

    aget-object v3, v0, v2

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4d

    return-object v3

    :cond_2a
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".aidl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-direct {p0, p1, p3, v3}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-direct {p0, v4, p2, p1, p3}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_52

    if-eqz v3, :cond_4d

    return-object v3

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_50
    const/4 p1, 0x0

    return-object p1

    :catchall_52
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v1, :cond_65

    const-wide v2, 0x2b895b48609fbb31L  # 5.796448677497693E-99

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    goto :goto_67

    :goto_66
    throw v0

    :goto_67
    goto :goto_66
.end method

.method private j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xed5ad679634b4d7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0xbd57957cb7fccccL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/build/android/a$b;->Hw:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-p"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aide/ui/build/android/a$b;->v5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_10d

    const-string v3, "-I"

    if-eqz v2, :cond_56

    :try_start_3d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p3, p4}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9a

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v1

    invoke-interface {v1}, Labcd/Pl;->DW()I

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v1}, Labcd/Pl;->DW()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_bd

    const-string v1, "aidl exited with code 11"

    invoke-static {v1}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    goto :goto_ca

    :cond_bd
    invoke-interface {v1}, Labcd/Pl;->j6()[B

    move-result-object v0

    invoke-interface {v1}, Labcd/Pl;->DW()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/build/android/a$b;->j6([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_ca
    :goto_ca
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_d3
    .catchall {:try_start_3d .. :try_end_d3} :catchall_10d

    if-nez v1, :cond_fd

    :try_start_d5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_dd} :catch_de
    .catchall {:try_start_d5 .. :try_end_dd} :catchall_10d

    goto :goto_10b

    :catch_de
    move-exception v1

    :try_start_df
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_fd
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, v1}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-static {v0}, Labcd/FileSystemUtils;->rN(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_df .. :try_end_10b} :catchall_10d

    :cond_10b
    :goto_10b
    const/4 p1, 0x0

    return-object p1

    :catchall_10d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v1, :cond_120

    const-wide v2, 0xbd57957cb7fccccL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_120
    goto :goto_122

    :goto_121
    throw v0

    :goto_122
    goto :goto_121
.end method

.method private j6([BI)Ljava/lang/String;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x29bcadc2d6b2a70fL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x36013f1bd8efcbcL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_40

    :cond_11
    :try_start_11
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1f} :catch_20
    .catchall {:try_start_11 .. :try_end_1f} :catchall_40

    goto :goto_23

    :catch_20
    move-exception v0

    const-string v0, ""

    :goto_23
    :try_start_23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aidl exited with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_23 .. :try_end_3e} :catchall_40

    return-object p1

    :cond_3f
    return-object v0

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x36013f1bd8efcbcL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method private j6(Ljava/util/List;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x24e9030bc1edc884L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x9435e12d2098df1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_4f

    if-eqz v3, :cond_1a

    const-string v3, "运行 aidl "

    goto :goto_1c

    .line 99
    :cond_1a
    const-string v3, "Running aidl "

    .line 0
    :goto_1c
    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_47

    const/16 v5, 0x22

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-eq v4, v5, :cond_44

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_4f

    return-void

    .line 99
    :catchall_4f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v2

    :goto_59
    goto :goto_58
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x329b24069ce6c91L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2fff3e488c57eff8L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-boolean v0, p0, Lcom/aide/ui/build/android/a$b;->gn:Z

    if-nez v0, :cond_35

    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide p1
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_37

    cmp-long p3, v0, p1

    if-ltz p3, :cond_35

    const/4 p1, 0x0

    return p1

    :cond_35
    const/4 p1, 0x1

    return p1

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v1, :cond_49

    const-wide v2, -0x2fff3e488c57eff8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1b55ed142d263e01L
    .end annotation

    const-wide v0, 0x1836924c80ec7568L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/a$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/a$b;->Zo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_16

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_16

    :cond_36
    invoke-direct {p0}, Lcom/aide/ui/build/android/a$b;->DW()V

    iget-object v2, p0, Lcom/aide/ui/build/android/a$b;->Zo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_43

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_43

    :cond_63
    iget-object v2, p0, Lcom/aide/ui/build/android/a$b;->VH:Ljava/util/List;

    if-eqz v2, :cond_d3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/build/android/a$b;->Zo:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_81
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9d

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8, v6, v9}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_9d

    invoke-direct {p0, v3, v5, v8, v6}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6b

    return-object v3

    :cond_c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No source dir found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d3
    iget-object v2, p0, Lcom/aide/ui/build/android/a$b;->Zo:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_dd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6, v3, v4, v7}, Lcom/aide/ui/build/android/a$b;->j6(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6
    :try_end_10e
    .catchall {:try_start_5 .. :try_end_10e} :catchall_113

    if-eqz v6, :cond_f9

    return-object v6

    :cond_111
    const/4 v0, 0x0

    return-object v0

    :catchall_113
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/a$b;->DW:Z

    if-eqz v3, :cond_11b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_11b
    goto :goto_11d

    :goto_11c
    throw v2

    :goto_11d
    goto :goto_11c
.end method
