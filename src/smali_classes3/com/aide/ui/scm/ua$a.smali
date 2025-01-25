.class Lcom/aide/ui/scm/ua$a;
.super Lcom/aide/ui/scm/xa$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = -0x3d1bd7a0bf66fe73L
    .end annotation
.end field

.field private J0:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x22c62972d6f40a91L
    .end annotation
.end field

.field final J8:Lcom/aide/ui/scm/ua;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x192a69896e52b6ebL
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x48da0282532a307bL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x2d2a70c55355e853L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x152a34194acbcda7L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0x3c1525a7af1f23fbL
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x5f0fce04f01c0338L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/ui/scm/ua$e;",
            ">;"
        }
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = 0xc26a0965e97e481L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/scm/ua$a;

    const-wide v1, 0xc1e937b1ab52cbdL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/scm/ua;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x48b5a1af2702de00L
    .end annotation

    const-string v0, ""

    const-wide v1, 0x140f7af4800fbc67L  # 4.675540629259671E-212

    const/4 v3, 0x0

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v4, :cond_f

    invoke-static {v1, v2, v3, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    iput-object p1, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-direct {p0}, Lcom/aide/ui/scm/xa$a;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->Zo:Ljava/lang/String;

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->VH:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    const v4, 0xf4240

    iput v4, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    iput v4, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->EQ:I

    iput-boolean v0, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    iput-object v3, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v0, v1, v2, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x6c771403f4c66a0L  # -8.502413141401287E275

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x6c771403f4c66a0L  # -8.502413141401287E275

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua$a;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    return p1
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua$a;->VH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ua$a;->VH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua$a;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/scm/ua$a;->EQ:I

    return p1
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic FH(Lcom/aide/ui/scm/ua$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    return-object p0
.end method

.method private FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5cc0a31627f1100L
    .end annotation

    const-wide v0, -0x69182e4d6f1e5ab0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v2}, Lcom/aide/ui/scm/ua;->FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;

    move-result-object v2

    if-ne v2, p0, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/ua$a;)Lcom/aide/ui/scm/ua$a;

    :cond_1a
    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->v5()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a5ae187028953e1L
    .end annotation

    const-wide v0, -0x27884780e5e1d4adL  # -1.4954284026016996E118

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/ua$e;

    invoke-interface {v3}, Lcom/aide/ui/scm/ua$e;->FH()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method static synthetic Hw(Lcom/aide/ui/scm/ua$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->v5()V

    return-void
.end method

.method static synthetic VH(Lcom/aide/ui/scm/ua$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->Hw()V

    return-void
.end method

.method static synthetic Zo(Lcom/aide/ui/scm/ua$a;)I
    .registers 3

    iget v0, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    return v0
.end method

.method static synthetic gn(Lcom/aide/ui/scm/ua$a;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->FH()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    return p1
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/scm/ua$a;->Zo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/scm/ua$a;->Zo:Ljava/lang/String;

    return-object p1
.end method

.method private j6(Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1c269097f9a25981L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "Lcom/aide/ui/scm/ua$d<",
            "TT;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x100ce5fdf7873d43L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/aide/ui/scm/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/scm/aa;-><init>(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_29

    const-wide v2, 0x100ce5fdf7873d43L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua$a;->j6(Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$c;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    return p1
.end method

.method private j6(Lcom/aide/ui/scm/ua$c;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x166d77a9697892b0L
    .end annotation

    const-wide v0, 0xf2f8f69c6263280L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z

    move-result p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private j6(Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x181987202df58ba8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aide/ui/scm/ua$d<",
            "TTResult;>;TTResult;)Z"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x14445edd116ecabcL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->FH()V

    iget-boolean v0, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d06f8

    invoke-static {v0, v2, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_49

    invoke-interface {p1}, Lcom/aide/ui/scm/ua$d;->DW()V

    goto :goto_49

    :cond_28
    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "Git"

    iget-object v3, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_49

    invoke-interface {p1}, Lcom/aide/ui/scm/ua$d;->j6()V

    goto :goto_49

    :cond_3d
    if-eqz p1, :cond_42

    invoke-interface {p1, p2}, Lcom/aide/ui/scm/ua$d;->j6(Ljava/lang/Object;)V

    :cond_42
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Sf()V

    :cond_49
    :goto_49
    iget-boolean v0, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    if-nez v0, :cond_52

    iget-object p1, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_0 .. :try_end_4f} :catchall_53

    if-nez p1, :cond_52

    const/4 v1, 0x1

    :cond_52
    return v1

    :catchall_53
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_64

    const-wide v2, 0x14445edd116ecabcL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method static synthetic v5(Lcom/aide/ui/scm/ua$a;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    return p0
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x471629be49215be5L
    .end annotation

    const-wide v0, -0x22a4d67b25884e3fL  # -5.17538493357881E141

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/ua$e;

    invoke-interface {v3}, Lcom/aide/ui/scm/ua$e;->j6()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method


# virtual methods
.method public AL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x15afd0dd3b0e4630L
    .end annotation

    const-wide v0, 0xb7065884e860f94L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/fa;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/fa;-><init>(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xde65ced993ba880L
    .end annotation

    const-wide v0, 0x69290a6ce38f158cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget v3, p0, Lcom/aide/ui/scm/ua$a;->EQ:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v3

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public Hw(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e7409e792f86100L
    .end annotation

    const-wide v0, -0x5a2de2e8570832a8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ca;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/scm/ca;-><init>(Lcom/aide/ui/scm/ua$a;I)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public J0(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x21e295bef4949d30L
    .end annotation

    const-wide v0, 0x2749605fafa4a3c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v4, Lcom/aide/ui/scm/ja;

    invoke-direct {v4, p0, p1, v2}, Lcom/aide/ui/scm/ja;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2d

    :try_start_1a
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_20} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_20} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_20} :catch_21
    .catchall {:try_start_1a .. :try_end_20} :catchall_2d

    return-object v2

    :catch_21
    move-exception v2

    :try_start_22
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return-object v3

    :catch_26
    move-exception v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2d

    goto :goto_2c

    :catch_2b
    move-exception p1

    :goto_2c
    return-object v3

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public Ws(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1df15c299c13a6fcL
    .end annotation

    const-wide v0, 0x8219b8ce9e7c538L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v4, Lcom/aide/ui/scm/ma;

    invoke-direct {v4, p0, p1, v2}, Lcom/aide/ui/scm/ma;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2d

    :try_start_1a
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_20} :catch_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_20} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_20} :catch_21
    .catchall {:try_start_1a .. :try_end_20} :catchall_2d

    return-object v2

    :catch_21
    move-exception v2

    :try_start_22
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return-object v3

    :catch_26
    move-exception v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2d

    goto :goto_2c

    :catch_2b
    move-exception p1

    :goto_2c
    return-object v3

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public XL(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x13e378d9281d2588L
    .end annotation

    const-wide v0, 0x5a9fbaa86d2d8d00L  # 3.436500158567866E128

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ga;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/scm/ga;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public gn(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x23892b4c883005b7L
    .end annotation

    const-wide v0, 0x150b9e8d45aa162bL  # 2.688353296029142E-207

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v4, Lcom/aide/ui/scm/qa;

    invoke-direct {v4, p0, p1, v2}, Lcom/aide/ui/scm/qa;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v4}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_31

    :try_start_1a
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_24
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_24} :catch_2f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_24} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_24} :catch_25
    .catchall {:try_start_1a .. :try_end_24} :catchall_31

    return-object p1

    :catch_25
    move-exception v2

    :try_start_26
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    return-object v3

    :catch_2a
    move-exception v2

    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_31

    goto :goto_30

    :catch_2f
    move-exception p1

    :goto_30
    return-object v3

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public hz()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x10967b6de7d7748L
    .end annotation

    const-wide v0, 0x37109a8c0eeb1690L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ba;

    invoke-direct {v2, p0}, Lcom/aide/ui/scm/ba;-><init>(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x10b04dd2cc072c90L
    .end annotation

    const-wide v0, -0x4446bddfc9e547f8L  # -5.34865392123761E-21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    iget v3, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v3

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public v5(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17a961e1a8a0d99fL
    .end annotation

    const-wide v0, -0x271819059dab0fa1L  # -1.9288000924074932E120

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ea;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/scm/ea;-><init>(Lcom/aide/ui/scm/ua$a;I)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public v5(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4c459741e50329f1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1e6fbc62ef8a1e7bL

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/ui/scm/da;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/scm/da;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x1e6fbc62ef8a1e7bL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method

.method public w9()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3b7a7f214d2091ddL
    .end annotation

    const-wide v0, -0x137d9abd3a4fcfcfL  # -4.954270391257874E214

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public we(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2aae4279406f6c58L
    .end annotation

    const-wide v0, 0x1f7e15c11821e0b4L  # 5.478125343995193E-157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/scm/ua$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v3, Lcom/aide/ui/scm/ta;

    invoke-direct {v3, p0, p1, v2}, Lcom/aide/ui/scm/ta;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v3}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_27

    :try_start_1a
    invoke-virtual {v2}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_1d} :catch_25
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1a .. :try_end_1d} :catch_23
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e
    .catchall {:try_start_1a .. :try_end_1d} :catchall_27

    goto :goto_26

    :catch_1e
    move-exception v2

    :goto_1f
    :try_start_1f
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    goto :goto_26

    :catch_23
    move-exception v2

    goto :goto_1f

    :catch_25
    move-exception p1

    :goto_26
    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method
