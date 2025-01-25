.class public Lcom/aide/ui/build/android/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/ui/build/e;
.implements Labcd/ze;


# annotations
.annotation runtime Labcd/xu;
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
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x526c030bc31c5ed5L
    .end annotation
.end field

.field private FH:Lcom/aide/ui/build/android/AaptService;
    .annotation runtime Labcd/ru;
        field = -0x352f12e684620c81L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/android/a;
    .annotation runtime Labcd/ru;
        field = 0xec496f2c077e657L
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = -0x26e962b1992b4aa9L
    .end annotation
.end field

.field private J8:Z
    .annotation runtime Labcd/ru;
        field = 0x2e04bd15a89317f8L
    .end annotation
.end field

.field private Mr:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2760fcc2231fc6d5L
    .end annotation
.end field

.field private QX:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1c1ca3d1455c293cL
    .end annotation
.end field

.field private U2:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1ec72da5432bfe43L
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x598dc94fa9b58f50L
    .end annotation
.end field

.field private Ws:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2a2244df5b6d884cL
    .end annotation
.end field

.field private XL:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1deafa5ab50f808dL
    .end annotation
.end field

.field private Zo:Lcom/aide/ui/build/android/X;
    .annotation runtime Labcd/ru;
        field = 0x96d7cdc4e505244L
    .end annotation
.end field

.field private a8:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x25b95d0eee577c7bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aM:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2a238296a2a5a24L
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x1558531a12dfe400L
    .end annotation
.end field

.field private j3:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x9913814c02ce943L
    .end annotation
.end field

.field private lg:Z
    .annotation runtime Labcd/ru;
        field = -0x15217e1ba3e9dd8L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x248e665c7f2f7137L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x18e33b2a8b342715L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/build/g;
    .annotation runtime Labcd/ru;
        field = -0x470eaad592dd38fcL
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = 0x100ceb3695eca6f0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/B;

    const-wide v1, -0x4246ebb8609a7393L  # -2.280941578174458E-11

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    const-wide v2, 0x2b7d5c0772d997f4L  # 3.3557525349577865E-99

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->aM:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->j3:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->Mr:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->U2:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v4, :cond_25

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/B;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->U2()V

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a8235a948f4b5dL
    .end annotation

    const-wide v0, 0x20e897db3d7a26d8L  # 3.756531382140047E-150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/build/android/B;->u7:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method private EQ()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2fecdac48bd42b40L
    .end annotation

    const-wide v0, -0x32db63874760c995L  # -4.239481450317543E63

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_25

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_27

    return-object v2

    :cond_25
    const/4 v0, 0x0

    return-object v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method

.method static synthetic EQ(Lcom/aide/ui/build/android/B;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/build/android/B;)Z
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->we()Z

    move-result p0

    return p0
.end method

.method private FH(Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xf7a99b70fe29075L
    .end annotation

    const-wide v0, 0x22154fd01f7f4d50L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_33

    if-eqz v2, :cond_31

    :try_start_12
    invoke-static {p1}, Labcd/FileSystemUtils;->Zo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ".so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2c} :catch_30
    .catchall {:try_start_12 .. :try_end_2c} :catchall_33

    if-eqz v3, :cond_1a

    const/4 p1, 0x1

    return p1

    :catch_30
    move-exception p1

    :cond_31
    const/4 p1, 0x0

    return p1

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method static synthetic Hw(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->J8()V

    return-void
.end method

.method static synthetic J0(Lcom/aide/ui/build/android/B;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    return-object p0
.end method

.method private J0()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x37dbe5c534ebe7b5L
    .end annotation

    const-wide v0, 0x339245c8de9114b0L  # 2.8427661444547117E-60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/android/B;->J0:Z

    if-nez v2, :cond_6f

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Labcd/Cl;->j6(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_34
    invoke-static {v2}, Lcom/aide/ui/aa;->j6(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_66

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->we()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-static {v2}, Lcom/aide/ui/aa;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_70

    if-eqz v4, :cond_50

    const-string v4, "警告"

    goto :goto_52

    :cond_50
    const-string v4, "Warning"

    :goto_52
    :try_start_52
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_70

    if-eqz v5, :cond_5b

    const-string v5, "你的应用程序只支持ARM。 它可以降低基于英特尔架构的设备的性能。"

    goto :goto_5d

    :cond_5b
    const-string v5, "Your app supports only ARM. It may work with reduced performance on Intel Architecture based devices."

    :goto_5d
    :try_start_5d
    new-instance v6, Lcom/aide/ui/build/android/A;

    invoke-direct {v6, p0, v3}, Lcom/aide/ui/build/android/A;-><init>(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V

    invoke-static {v2, v4, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_6f

    :cond_66
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/aide/ui/MainActivity;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_70

    :cond_6f
    :goto_6f
    return-void

    :catchall_70
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_78

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_78
    throw v2
.end method

.method static synthetic J8(Lcom/aide/ui/build/android/B;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->EQ()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private J8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1e355ce1d87a4ab7L
    .end annotation

    const-wide v0, 0x219b8a9099680998L  # 8.615610766143609E-147

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/B;->u7:Ljava/lang/String;

    if-nez v2, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->v5()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    invoke-virtual {v2}, Labcd/we;->Hw()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->J0()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private Mr()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6d554c1ebee38b8L
    .end annotation

    const-wide v0, -0x1f661515f9a578fdL  # -2.2239913670385797E157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Zk;->J8()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Labcd/gj;->Zo(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Labcd/Ji;->j6(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method private QX()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x53ed919c8b3de0fL
    .end annotation

    const-wide v0, -0x36585354f6dc2120L  # -6.757870760710571E46

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_ad

    if-eqz v2, :cond_15

    const-string v2, "运行 aapt..."

    goto :goto_17

    .line 98
    :cond_15
    const-string v2, "Running aapt..."

    .line 0
    :goto_17
    const/16 v3, 0xa

    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-static {v2}, Labcd/gj;->U2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4e

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create target dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_4e
    iget-boolean v2, p0, Lcom/aide/ui/build/android/B;->J0:Z

    if-eqz v2, :cond_95

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    invoke-static {v2, v3}, Labcd/gj;->v5(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_1a .. :try_end_76} :catchall_ad

    :try_start_76
    invoke-static {v3}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a
    .catchall {:try_start_76 .. :try_end_79} :catchall_ad

    goto :goto_6a

    :catch_7a
    move-exception v4

    :try_start_7b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting gen dir \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' failed."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V

    goto :goto_6a

    :cond_95
    iget-object v3, p0, Lcom/aide/ui/build/android/B;->FH:Lcom/aide/ui/build/android/AaptService;

    iget-object v4, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    iget-object v6, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/aide/ui/build/android/B;->J0:Z

    const-string v2, "release"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->Ws()Z

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_ac
    .catchall {:try_start_7b .. :try_end_ac} :catchall_ad

    return-void

    :catchall_ad
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_b5

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b5
    goto :goto_b7

    :goto_b6
    throw v2

    :goto_b7
    goto :goto_b6
.end method

.method static synthetic QX(Lcom/aide/ui/build/android/B;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/build/android/B;->J8:Z

    return p0
.end method

.method private U2()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x392e22195dea1140L
    .end annotation

    const-wide v0, -0x3c72038e010024e1L  # -2.70090907657397216E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->VH()I

    move-result v2

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v3

    invoke-virtual {v3}, Labcd/ck;->Zo()I

    move-result v3

    const/16 v4, 0x64

    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    mul-int/lit8 v3, v3, 0x64

    div-int v4, v3, v2

    :goto_25
    iput v4, p0, Lcom/aide/ui/build/android/B;->EQ:I

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/ui/build/android/B;->u7:Ljava/lang/String;

    iget v5, p0, Lcom/aide/ui/build/android/B;->tp:I

    iget v6, p0, Lcom/aide/ui/build/android/B;->EQ:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_37

    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3f
    throw v2
.end method

.method static synthetic VH(Lcom/aide/ui/build/android/B;)Lcom/aide/ui/build/android/a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->Hw:Lcom/aide/ui/build/android/a;

    return-object p0
.end method

.method static synthetic Ws(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->u7()V

    return-void
.end method

.method private Ws()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3fcbe478471e259cL
    .end annotation

    const-wide v0, 0x324438e2686188b7L  # 1.500166521661547E-66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->tp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method static synthetic XL(Lcom/aide/ui/build/android/B;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    return-object p0
.end method

.method private XL()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x53fd8a21ddd893fL
    .end annotation

    const-wide v0, -0x3652e5694b323c80L  # -8.307684004813789E46

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    if-eqz v2, :cond_15

    const-string v2, "运行 aidl..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Running aidl..."

    .line 0
    :goto_17
    const/16 v3, 0xa

    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/B;->Hw:Lcom/aide/ui/build/android/a;

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/aide/ui/build/android/B;->J0:Z

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->Ws()Z

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/aide/ui/build/android/a;->j6(Ljava/lang/String;ZZ)V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2b

    return-void

    .line 99
    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method static synthetic Zo(Lcom/aide/ui/build/android/B;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->a8:Ljava/util/List;

    return-object p0
.end method

.method static synthetic aM(Lcom/aide/ui/build/android/B;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/B;->aM:Ljava/lang/String;

    return-object p0
.end method

.method private aM()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x59835af5e6cd917bL
    .end annotation

    const-wide v0, -0x448fe5489596cef0L  # -2.131394458080643E-22

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_73

    if-eqz v2, :cond_15

    const-string v2, "正在编译..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Compiling..."

    .line 0
    :goto_17
    const/16 v3, 0x14

    const/4 v4, 0x1

    :try_start_1a
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    const-string v3, "debug-aide"

    iget-object v4, p0, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v2, v3}, Labcd/gj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5f

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_73

    if-eqz v4, :cond_4f

    const-string v4, "无法创建目标目录 "

    goto :goto_51

    .line 99
    :cond_4f
    const-string v4, "Could not create destination dir "

    .line 0
    :goto_51
    :try_start_51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_5f
    iget-boolean v2, p0, Lcom/aide/ui/build/android/B;->J0:Z

    if-eqz v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->Zo()V

    goto :goto_72

    :cond_6b
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->DW()V
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_73

    :goto_72
    return-void

    :catchall_73
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_7b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7b
    throw v2
.end method

.method private gn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x64c21030a8abaee0L
    .end annotation

    const-wide v0, 0x6d331a1bea8a71b1L  # 1.0535992591789779E218

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1b

    if-eqz v2, :cond_15

    const-string v2, "您的项目包含错误。 请在运行应用程序之前修好它们"

    goto :goto_17

    :cond_15
    const-string v2, "Your project contains errors. Please fix them before running the app."

    :goto_17
    :try_start_17
    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method static synthetic gn(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->Mr()V

    return-void
.end method

.method private j3()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x22e3e3b78fbd1820L
    .end annotation

    const-wide v0, 0x176a60ca199ea469L  # 7.057584312392923E-196

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_25

    if-eqz v2, :cond_15

    const-string v2, "构建 native code..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Building native code..."

    .line 0
    :goto_17
    const/16 v3, 0x50

    const/4 v4, 0x0

    :try_start_1a
    invoke-direct {p0, v2, v3, v4}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v2, p0, Lcom/aide/ui/build/android/B;->v5:Lcom/aide/ui/build/g;

    iget-boolean v3, p0, Lcom/aide/ui/build/android/B;->J0:Z

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/g;->j6(Z)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_25

    return-void

    .line 99
    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/aide/ui/build/android/B;->j6(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;IZ)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x2a074e0c0288486bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x31e51e008a51c8d0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iput-object p1, p0, Lcom/aide/ui/build/android/B;->u7:Ljava/lang/String;

    iput p2, p0, Lcom/aide/ui/build/android/B;->tp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/build/android/B;->EQ:I

    iput-boolean p3, p0, Lcom/aide/ui/build/android/B;->gn:Z

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    iget v2, p0, Lcom/aide/ui/build/android/B;->EQ:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/aide/ui/build/d;->j6(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x31e51e008a51c8d0L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 29
    .annotation runtime Labcd/su;
        method = -0x48305e3120346eacL
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    const-string v0, "debug-aide"

    :try_start_8
    sget-boolean v1, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v1, :cond_14

    const-wide v1, -0x3cadadb20dfa0b33L  # -2.0628177228911412E16

    invoke-static {v1, v2, v7, v5, v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-boolean v1, v7, Lcom/aide/ui/build/android/B;->lg:Z

    if-eqz v1, :cond_1e

    iget-object v0, v7, Lcom/aide/ui/build/android/B;->Zo:Lcom/aide/ui/build/android/X;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/X;->j6()V

    goto :goto_90

    :cond_1e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1, v5}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Labcd/gj;->BT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v5, v3}, Labcd/gj;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Labcd/gj;->a8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Labcd/gj;->rN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Labcd/gj;->vy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    iget-object v3, v7, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v0}, Labcd/gj;->j6(Ljava/util/Map;Z)[Ljava/lang/String;

    move-result-object v11

    iget-object v0, v7, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    invoke-static {v1, v0, v6}, Labcd/gj;->j6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static {v1, v6}, Labcd/gj;->DW(Ljava/util/Map;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Labcd/gj;->j6(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p2}, Labcd/gj;->gn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v2, v7, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    :cond_6c
    move-object/from16 v18, v2

    iget-object v9, v7, Lcom/aide/ui/build/android/B;->Zo:Lcom/aide/ui/build/android/X;

    iget-object v0, v7, Lcom/aide/ui/build/android/B;->aM:Ljava/lang/String;

    iget-object v1, v7, Lcom/aide/ui/build/android/B;->j3:Ljava/lang/String;

    iget-object v2, v7, Lcom/aide/ui/build/android/B;->Mr:Ljava/lang/String;

    iget-object v3, v7, Lcom/aide/ui/build/android/B;->U2:Ljava/lang/String;

    iget-boolean v4, v7, Lcom/aide/ui/build/android/B;->J0:Z

    invoke-static {}, Lcom/aide/ui/aa;->we()Z

    move-result v24

    new-instance v8, Lcom/a4455jkjh/d/c;

    invoke-direct {v8, v7}, Lcom/a4455jkjh/d/c;-><init>(Lcom/aide/ui/build/android/B;)V

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move/from16 v23, v4

    invoke-virtual/range {v8 .. v25}, Lcom/a4455jkjh/d/c;->a(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_90
    .catchall {:try_start_8 .. :try_end_90} :catchall_91

    :goto_90
    return-void

    :catchall_91
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_a5

    const-wide v2, -0x3cadadb20dfa0b33L  # -2.0628177228911412E16

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a5
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1ae0cedc3b8c3529L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x45c803d0f6a2da20L  # 1.4864507630066663E28

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->DW()V

    invoke-static {}, Labcd/gj;->J0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/build/android/B;->we:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aide/ui/build/android/B;->a8:Ljava/util/List;

    iput-object p1, p0, Lcom/aide/ui/build/android/B;->aM:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/build/android/B;->j3:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/android/B;->Mr:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/ui/build/android/B;->U2:Ljava/lang/String;

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->tp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_63

    if-eqz v1, :cond_38

    const-string v1, "构建中..."

    goto :goto_3a

    .line 99
    :cond_38
    const-string v1, "Building..."

    .line 0
    :goto_3a
    :try_start_3a
    invoke-direct {p0, v1, v0, v0}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/we;->j6(Labcd/ze;)V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->FH()Z

    move-result v0

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/build/android/z;

    invoke-direct {v1, p0}, Lcom/aide/ui/build/android/z;-><init>(Lcom/aide/ui/build/android/B;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_62
    .catchall {:try_start_3a .. :try_end_62} :catchall_63

    return-void

    .line 99
    :catchall_63
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_76

    const-wide v2, 0x45c803d0f6a2da20L  # 1.4864507630066663E28

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x55bbbb6a1b7780L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const/4 v3, 0x2

    aput-object p3, v0, v3

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    const/4 v3, 0x5

    aput-object p6, v0, v3

    const-wide v3, 0x4e81dcab3bb2cadL

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_21
    iput-boolean v2, p0, Lcom/aide/ui/build/android/B;->J0:Z

    iput-boolean v1, p0, Lcom/aide/ui/build/android/B;->J8:Z

    iput-boolean v2, p0, Lcom/aide/ui/build/android/B;->lg:Z

    const-string v0, "release"

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    iput-object p1, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    iget-object p2, p0, Lcom/aide/ui/build/android/B;->FH:Lcom/aide/ui/build/android/AaptService;

    invoke-virtual {p2, p1}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1db85f696357eab4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x58c10c04b6eb3283L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/ck;->j6(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x58c10c04b6eb3283L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private j6(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xec3f0bcfcfb4378L
    .end annotation

    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const/4 v2, 0x3

    aput-object p4, v0, v2

    const/4 v2, 0x4

    aput-object p5, v0, v2

    const/4 v2, 0x5

    aput-object p6, v0, v2

    const/4 v2, 0x6

    aput-object p7, v0, v2

    const-wide v2, -0x1693ca3615dc3f8fL  # -6.74795156045642E199

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_29
    iput-boolean p1, p0, Lcom/aide/ui/build/android/B;->J0:Z

    iput-boolean v1, p0, Lcom/aide/ui/build/android/B;->J8:Z

    iput-object p2, p0, Lcom/aide/ui/build/android/B;->QX:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    if-eqz p1, :cond_35

    iput-boolean v1, p0, Lcom/aide/ui/build/android/B;->lg:Z

    :cond_35
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/gj;->BT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aide/ui/build/android/B;->XL:Ljava/lang/String;

    invoke-direct {p0, p4, p5, p6, p7}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/build/android/B;->gn:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/B;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/build/android/B;->lg:Z

    return p1
.end method

.method private tp()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ab82e818c8cf443L
    .end annotation

    const-wide v0, 0x26cffbc5b2571840L  # 9.676483345239617E-122

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->we()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method static synthetic tp(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->gn()V

    return-void
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d506d81a2a0616cL
    .end annotation

    const-wide v0, -0x21beeda77acb4b5bL  # -1.0658687977412253E146

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    if-eqz v2, :cond_15

    const-string v2, "构建中..."

    goto :goto_17

    .line 99
    :cond_15
    const-string v2, "Building..."

    .line 0
    :goto_17
    const/4 v3, 0x0

    :try_start_18
    invoke-direct {p0, v2, v3, v3}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->QX()V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    return-void

    .line 99
    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method static synthetic u7(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->XL()V

    return-void
.end method

.method static synthetic v5(Lcom/aide/ui/build/android/B;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/build/android/B;->we:Z

    return p0
.end method

.method static synthetic we(Lcom/aide/ui/build/android/B;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->aM()V

    return-void
.end method

.method private we()Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1f200e09c407d4fL
    .end annotation

    const-wide v0, -0x15e41b318fd25e8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Zk;->u7(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Labcd/gj;->j6(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_81

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v3, :cond_80

    aget-object v6, v2, v5

    :try_start_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/armeabi"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/aide/ui/build/android/B;->FH(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_62

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/armeabi-v7a"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/aide/ui/build/android/B;->FH(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_62

    :cond_60
    const/4 v7, 0x0

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v7, 0x1

    :goto_63
    if-eqz v7, :cond_7d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/x86"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/aide/ui/build/android/B;->FH(Ljava/lang/String;)Z

    move-result v6
    :try_end_7a
    .catchall {:try_start_30 .. :try_end_7a} :catchall_81

    if-nez v6, :cond_7d

    return v8

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_80
    return v4

    :catchall_81
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_89

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_89
    goto :goto_8b

    :goto_8a
    throw v2

    :goto_8b
    goto :goto_8a
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x2445d12f351d1a50L  # -7.433877467101471E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/android/b;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/b;-><init>(Lcom/aide/ui/build/android/B;)V

    invoke-virtual {v2, v3}, Labcd/ck;->j6(Labcd/ck$a;)V

    new-instance v2, Lcom/aide/ui/build/android/X;

    invoke-direct {v2}, Lcom/aide/ui/build/android/X;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/android/B;->Zo:Lcom/aide/ui/build/android/X;

    new-instance v3, Lcom/aide/ui/build/android/h;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/h;-><init>(Lcom/aide/ui/build/android/B;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/X;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V

    new-instance v2, Lcom/aide/ui/build/android/AaptService;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/build/android/AaptService;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/ui/build/android/B;->FH:Lcom/aide/ui/build/android/AaptService;

    new-instance v3, Lcom/aide/ui/build/android/m;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/m;-><init>(Lcom/aide/ui/build/android/B;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/AaptService;->j6(Lcom/aide/ui/build/android/E;)V

    new-instance v2, Lcom/aide/ui/build/android/a;

    invoke-direct {v2}, Lcom/aide/ui/build/android/a;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/android/B;->Hw:Lcom/aide/ui/build/android/a;

    new-instance v3, Lcom/aide/ui/build/android/r;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/r;-><init>(Lcom/aide/ui/build/android/B;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/android/a;->j6(Lcom/aide/ui/build/android/F;)V

    new-instance v2, Lcom/aide/ui/build/g;

    invoke-direct {v2}, Lcom/aide/ui/build/g;-><init>()V

    iput-object v2, p0, Lcom/aide/ui/build/android/B;->v5:Lcom/aide/ui/build/g;

    new-instance v3, Lcom/aide/ui/build/android/w;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/w;-><init>(Lcom/aide/ui/build/android/B;)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/build/g;->j6(Lcom/aide/ui/build/android/G;)V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x5707e9d4823b5875L  # 1.7971723378701856E111

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/build/android/B;->gn:Z

    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->aM()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x1a29a96d40d22b37L  # -3.7077044762909614E182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/build/android/B;->lg:Z
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, 0x237b5fa2372ee80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->J8()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Zo()Labcd/ze$a;
    .registers 5

    const-wide v0, 0x29f6ef1cfb84d060L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v0, Labcd/ze$a;->j6:Labcd/ze$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x445e0decb7122208L  # 2.2176228012671663E21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const/16 v0, 0x11

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0xa4609fa96efed9dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/B;->DW(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x25a7db96b1b2a340L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1, p1}, Labcd/gj;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Be$j;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->aM()Lcom/aide/ui/build/android/O;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/build/android/x;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/ui/build/android/x;-><init>(Lcom/aide/ui/build/android/B;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p3, v0, v2}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Labcd/Be$j;Lcom/aide/ui/build/android/O$a;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x25a7db96b1b2a340L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, -0x7bd9bbf4b12e515L  # -1.9432376442890006E271

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    if-eqz p1, :cond_11

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/build/android/B;->lg:Z

    :cond_11
    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->Mr()V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Labcd/ck;->j6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->gn()V

    goto :goto_27

    :cond_24
    invoke-direct {p0}, Lcom/aide/ui/build/android/B;->j3()V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    :goto_27
    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_35

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public j6(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x41614800bf96e03dL  # 9060357.987167472

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Labcd/Nk;->j6(ZZ)V

    invoke-static {}, Labcd/gj;->QX()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/vj;->Zo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xxxxxx"

    const-string v7, "weardebug"

    const-string v8, "xxxxxx"

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/build/android/B;->j6(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    :cond_38
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_7f

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.aide.trainer."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_7f

    :cond_62
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Labcd/gj;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/Be$j;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->aM()Lcom/aide/ui/build/android/O;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/aa;->cb()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/build/android/y;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/aide/ui/build/android/y;-><init>(Lcom/aide/ui/build/android/B;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Labcd/Be$j;Lcom/aide/ui/build/android/O$a;)V

    goto :goto_8f

    :cond_7f
    :goto_7f
    const-string v3, "debug"

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/aide/ui/build/android/B;->j6(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_0 .. :try_end_8f} :catchall_90

    :goto_8f
    return-void

    :catchall_90
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_a6

    const-wide v2, 0x41614800bf96e03dL  # 9060357.987167472

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a6
    throw v0
.end method

.method public j6(ZLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x4ece79ee8d9a2564L  # -9.918064821448643E-72

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/android/B;->u7:Ljava/lang/String;

    if-nez v0, :cond_7a

    if-nez p1, :cond_1f

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    :cond_1f
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->DW()V

    invoke-static {}, Labcd/gj;->J0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/build/android/B;->VH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/e;Z)V

    iput-object p2, p0, Lcom/aide/ui/build/android/B;->a8:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/build/android/B;->J0:Z

    iput-boolean v1, p0, Lcom/aide/ui/build/android/B;->we:Z

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    const/16 v1, 0xa

    if-eqz p1, :cond_5f

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_7b

    if-eqz v2, :cond_52

    const-string v2, "运行 aapt..."

    goto :goto_54

    .line 99
    :cond_52
    const-string v2, "Running aapt..."

    .line 0
    :goto_54
    :try_start_54
    invoke-direct {p0, v2, v1, v0}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/aide/ui/build/android/B;->FH:Lcom/aide/ui/build/android/AaptService;

    iget-object v1, p0, Lcom/aide/ui/build/android/B;->Ws:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/android/AaptService;->DW(Ljava/lang/String;)V

    goto :goto_7a

    :cond_5f
    if-eqz p2, :cond_7a

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_6b
    .catchall {:try_start_54 .. :try_end_6b} :catchall_7b

    if-eqz v2, :cond_70

    const-string v2, "运行 aidl..."

    goto :goto_72

    .line 99
    :cond_70
    const-string v2, "Running aidl..."

    .line 0
    :goto_72
    :try_start_72
    invoke-direct {p0, v2, v1, v0}, Lcom/aide/ui/build/android/B;->j6(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/aide/ui/build/android/B;->Hw:Lcom/aide/ui/build/android/a;

    invoke-virtual {v0, p2}, Lcom/aide/ui/build/android/a;->j6(Ljava/util/List;)V
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_7b

    :cond_7a
    :goto_7a
    return-void

    .line 99
    :catchall_7b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v1, :cond_90

    const-wide v2, -0x4ece79ee8d9a2564L  # -9.918064821448643E-72

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_90
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x22c253b71590bd9dL  # -1.4134461371339662E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/B;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/build/android/B;->lg:Z

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/android/B;->FH:Lcom/aide/ui/build/android/AaptService;

    invoke-virtual {v3, v2}, Lcom/aide/ui/build/android/AaptService;->j6(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/B;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method
