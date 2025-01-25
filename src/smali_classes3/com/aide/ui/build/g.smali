.class public Lcom/aide/ui/build/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/g$b;
    }
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
.field private final FH:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Labcd/ru;
        field = 0x3444a0f4274385ccL
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/g$b;
    .annotation runtime Labcd/ru;
        field = -0x22786026df8a601fL
    .end annotation
.end field

.field private v5:Lcom/aide/ui/build/android/G;
    .annotation runtime Labcd/ru;
        field = 0x30f1a9663349247dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/g;

    const-wide v1, -0x700f71abbb767fcL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4603ff7e5d84473cL  # -2.208966576713348E-29

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/build/g;->FH:Ljava/util/concurrent/ExecutorService;
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v4, :cond_1f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v3
.end method

.method private DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2926451e47defeebL
    .end annotation

    const-wide v0, -0x15cf980f19e2a2e5L  # -3.214847019666287E203

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lcom/aide/ui/build/android/G;->j6(Z)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method private j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x10af9cbd480acdd7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1aee98997b30fbc7L  # 5.898730380376162E-179

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v0, Lcom/aide/engine/SyntaxError;

    invoke-direct {v0}, Lcom/aide/engine/SyntaxError;-><init>()V

    iput p2, v0, Lcom/aide/engine/SyntaxError;->v5:I

    iput p3, v0, Lcom/aide/engine/SyntaxError;->Zo:I

    iput p2, v0, Lcom/aide/engine/SyntaxError;->VH:I

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/aide/engine/SyntaxError;->gn:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/aide/engine/SyntaxError;->u7:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-object v0

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x1aee98997b30fbc7L  # 5.898730380376162E-179

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5d9cad1c4d18220L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    const-string v0, "NDK"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v1, :cond_e

    const-wide v1, 0xd0224fa07637a08L

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v3, :cond_d4

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_d5

    if-lez v7, :cond_d0

    const/16 v7, 0x3a

    const/4 v8, 0x1

    :try_start_2d
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_b5

    new-instance v10, Ljava/io/File;

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-gez v11, :cond_54

    const/16 v11, 0x20

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v11
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_54} :catch_b1
    .catchall {:try_start_2d .. :try_end_54} :catchall_d5

    :cond_54
    if-lez v11, :cond_b5

    :try_start_56
    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_56 .. :try_end_5e} :catch_5f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_b1
    .catchall {:try_start_56 .. :try_end_5e} :catchall_d5

    goto :goto_61

    :catch_5f
    move-exception v9

    const/4 v9, 0x1

    :goto_61
    add-int/lit8 v11, v11, 0x1

    :try_start_63
    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_67} :catch_b1
    .catchall {:try_start_63 .. :try_end_67} :catchall_d5

    if-lez v7, :cond_72

    :try_start_69
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_70} :catch_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_b1
    .catchall {:try_start_69 .. :try_end_70} :catchall_d5

    goto :goto_72

    :catch_71
    move-exception v11

    :cond_72
    :goto_72
    add-int/lit8 v7, v7, 0x1

    :try_start_74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v11, "error:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v9, v8, v7}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v7

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a7
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b0} :catch_b1
    .catchall {:try_start_74 .. :try_end_b0} :catchall_d5

    goto :goto_b5

    :catch_b1
    move-exception v7

    :try_start_b2
    invoke-static {v7}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v0, v8, v8, v6}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catchall {:try_start_b2 .. :try_end_d0} :catchall_d5

    :cond_d0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    :cond_d4
    return-object v1

    :catchall_d5
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_e6

    const-wide v2, 0xd0224fa07637a08L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e6
    goto :goto_e8

    :goto_e7
    throw v0

    :goto_e8
    goto :goto_e7
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x56032a2dd1590618L
    .end annotation

    const-wide v0, -0xf63bf1cf3bcede8L  # -2.807296945225494E234

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Lcom/aide/ui/build/android/G;->DW()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/g;->j6()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/g;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/g;->j6(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/g;->DW(Z)V

    return-void
.end method

.method private j6(Ljava/lang/Throwable;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x132f5af329089760L
    .end annotation

    const-wide v0, 0x1e1ae2a6835ac8e4L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/aide/ui/build/android/G;->FH()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x51f38abc92f9ad7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v0, 0x5406b3b89104d427L  # 6.061406559060893E96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v2, :cond_13

    invoke-interface {v2, p1}, Lcom/aide/ui/build/android/G;->j6(Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method


# virtual methods
.method public j6(Lcom/aide/ui/build/android/G;)V
    .registers 6

    const-wide v0, 0xe4c843a88afc3d8L  # 8.553226284666206E-240

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Z)V
    .registers 8

    const-wide v0, -0x19a321f0f4dde089L  # -1.2266065557852178E185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    if-eqz v2, :cond_17

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    :cond_17
    invoke-static {}, Lcom/aide/ui/aa;->nw()Z

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/build/g$b;

    new-instance v5, Lcom/aide/ui/build/g$a;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/aide/ui/build/g$a;-><init>(Lcom/aide/ui/build/g;ZZLjava/util/List;)V

    invoke-direct {v4, p0, v5}, Lcom/aide/ui/build/g$b;-><init>(Lcom/aide/ui/build/g;Lcom/aide/ui/build/g$a;)V

    iput-object v4, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    iget-object v2, p0, Lcom/aide/ui/build/g;->FH:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method
