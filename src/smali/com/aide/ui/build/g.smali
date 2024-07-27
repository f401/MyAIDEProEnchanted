.class public Lcom/aide/ui/build/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/g$a;,
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
    .registers 4

    const-wide v2, -0x700f71abbb767fcL

    const-class v0, Lcom/aide/ui/build/g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4603ff7e5d84473cL    # -2.208966576713348E-29

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4603ff7e5d84473cL    # -2.208966576713348E-29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/g;->FH:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2926451e47defeebL
    .end annotation

    const-wide v2, -0x15cf980f19e2a2e5L    # -3.214847019666287E203

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15cf980f19e2a2e5L    # -3.214847019666287E203

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/android/G;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x10af9cbd480acdd7L
    .end annotation

    const-wide v8, 0x1aee98997b30fbc7L    # 5.898730380376162E-179

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1aee98997b30fbc7L    # 5.898730380376162E-179

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/build/g;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x5d9cad1c4d18220L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd0224fa07637a08L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_7

    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-lez v0, :cond_5

    const/16 v0, 0x3a

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_3

    new-instance v1, Ljava/io/File;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v8, v0, 0x1

    const/16 v0, 0x3a

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_8

    const/16 v0, 0x20

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->indexOf(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move v1, v0

    :goto_1
    if-lez v1, :cond_3

    :try_start_2
    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x3a

    :try_start_3
    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->indexOf(II)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    if-lez v8, :cond_1

    :try_start_4
    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    add-int/lit8 v1, v8, 0x1

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v8, "error:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "NDK"

    const/4 v9, 0x1

    const/4 v10, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v8, v0, v9, v1}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "NDK"

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v1, v7, v8, v6}, Lcom/aide/ui/build/g;->j6(Ljava/lang/String;IILjava/lang/String;)Lcom/aide/engine/SyntaxError;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v0, :cond_6

    const-wide v2, 0xd0224fa07637a08L

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    return-object v3

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_1
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x56032a2dd1590618L
    .end annotation

    const-wide v2, -0xf63bf1cf3bcede8L    # -2.807296945225494E234

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf63bf1cf3bcede8L    # -2.807296945225494E234

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    invoke-interface {v0}, Lcom/aide/ui/build/android/G;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, 0x1e1ae2a6835ac8e4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e1ae2a6835ac8e4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    invoke-interface {v0}, Lcom/aide/ui/build/android/G;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/util/Map;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x51f38abc92f9ad7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    const-wide v2, 0x5406b3b89104d427L    # 6.061406559060893E96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5406b3b89104d427L    # 6.061406559060893E96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;

    invoke-interface {v0, p1}, Lcom/aide/ui/build/android/G;->j6(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method


# virtual methods
.method public j6(Lcom/aide/ui/build/android/G;)V
    .registers 6

    const-wide v2, 0xe4c843a88afc3d8L    # 8.553226284666206E-240

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe4c843a88afc3d8L    # 8.553226284666206E-240

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/g;->v5:Lcom/aide/ui/build/android/G;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Z)V
    .registers 8

    const-wide v4, -0x19a321f0f4dde089L    # -1.2266065557852178E185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19a321f0f4dde089L    # -1.2266065557852178E185

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->nw()Z

    move-result v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/build/g$b;

    new-instance v3, Lcom/aide/ui/build/g$a;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/aide/ui/build/g$a;-><init>(Lcom/aide/ui/build/g;ZZLjava/util/List;)V

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/build/g$b;-><init>(Lcom/aide/ui/build/g;Lcom/aide/ui/build/g$a;)V

    iput-object v2, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    iget-object v0, p0, Lcom/aide/ui/build/g;->FH:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/aide/ui/build/g;->Hw:Lcom/aide/ui/build/g$b;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/g;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method
