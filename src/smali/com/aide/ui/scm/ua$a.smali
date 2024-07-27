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
            "Ljava/util/List",
            "<",
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
    .registers 4

    const-wide v2, 0xc1e937b1ab52cbdL

    const-class v0, Lcom/aide/ui/scm/ua$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/scm/ua;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x48b5a1af2702de00L
    .end annotation

    const-wide v4, 0x140f7af4800fbc67L    # 4.675540629259671E-212

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x140f7af4800fbc67L    # 4.675540629259671E-212

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-direct {p0}, Lcom/aide/ui/scm/xa$a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->Zo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->VH:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    const v0, 0xf4240

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    const v0, 0xf4240

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/scm/ua$a;->EQ:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/I;)V
    .registers 10

    const-wide v2, -0x6c771403f4c66a0L    # -8.502413141401287E275

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6c771403f4c66a0L    # -8.502413141401287E275

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua$a;-><init>(Lcom/aide/ui/scm/ua;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua$a;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    return p1
.end method

.method static synthetic DW(Lcom/aide/ui/scm/ua$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->VH:Ljava/lang/String;

    return-object v0
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
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    return-object v0
.end method

.method private FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5cc0a31627f1100L
    .end annotation

    const-wide v2, -0x69182e4d6f1e5ab0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x69182e4d6f1e5ab0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    invoke-static {v0}, Lcom/aide/ui/scm/ua;->FH(Lcom/aide/ui/scm/ua;)Lcom/aide/ui/scm/ua$a;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->J8:Lcom/aide/ui/scm/ua;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aide/ui/scm/ua;->j6(Lcom/aide/ui/scm/ua;Lcom/aide/ui/scm/ua$a;)Lcom/aide/ui/scm/ua$a;

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a5ae187028953e1L
    .end annotation

    const-wide v2, -0x27884780e5e1d4adL    # -1.4954284026016996E118

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27884780e5e1d4adL    # -1.4954284026016996E118

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ua$e;

    invoke-interface {v0}, Lcom/aide/ui/scm/ua$e;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
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
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->Zo:Ljava/lang/String;

    return-object v0
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
            "Lcom/aide/ui/scm/ua$d",
            "<TT;>;)V"
        }
    .end annotation

    const-wide v2, 0x100ce5fdf7873d43L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x100ce5fdf7873d43L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    new-instance v0, Lcom/aide/ui/scm/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/scm/aa;-><init>(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua$a;->j6(Landroid/os/RemoteException;Lcom/aide/ui/scm/ua$d;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$c;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$c;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/scm/ua$a;Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    const-wide v2, 0xf2f8f69c6263280L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf2f8f69c6263280L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/scm/ua$a;->j6(Lcom/aide/ui/scm/ua$d;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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
            "Lcom/aide/ui/scm/ua$d",
            "<TTResult;>;TTResult;)Z"
        }
    .end annotation

    const-wide v2, 0x14445edd116ecabcL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x14445edd116ecabcL

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/scm/ua$a;->FH()V

    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0d06f8

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/aide/ui/scm/ua$d;->DW()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/aide/ui/scm/ua$a;->we:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "Git"

    iget-object v5, p0, Lcom/aide/ui/scm/ua$a;->J0:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/aide/ui/scm/ua$d;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v0, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-eqz p1, :cond_6

    :try_start_1
    invoke-interface {p1, p2}, Lcom/aide/ui/scm/ua$d;->j6(Ljava/lang/Object;)V

    :cond_6
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/MainActivity;->Sf()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic v5(Lcom/aide/ui/scm/ua$a;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    return v0
.end method

.method private v5()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x471629be49215be5L
    .end annotation

    const-wide v2, -0x22a4d67b25884e3fL    # -5.17538493357881E141

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22a4d67b25884e3fL    # -5.17538493357881E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/ua$a;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/scm/ua$e;

    invoke-interface {v0}, Lcom/aide/ui/scm/ua$e;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public AL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x15afd0dd3b0e4630L
    .end annotation

    const-wide v2, 0xb7065884e860f94L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7065884e860f94L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/fa;

    invoke-direct {v0, p0}, Lcom/aide/ui/scm/fa;-><init>(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xde65ced993ba880L
    .end annotation

    const-wide v2, 0x69290a6ce38f158cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x69290a6ce38f158cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/scm/ua$a;->EQ:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/aide/ui/scm/ua$a;->tp:I

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3e7409e792f86100L
    .end annotation

    const-wide v2, -0x5a2de2e8570832a8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5a2de2e8570832a8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ca;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/scm/ca;-><init>(Lcom/aide/ui/scm/ua$a;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J0(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x21e295bef4949d30L
    .end annotation

    const-wide v4, 0x2749605fafa4a3c8L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x2749605fafa4a3c8L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ua$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v2, Lcom/aide/ui/scm/ja;

    invoke-direct {v2, p0, p1, v0}, Lcom/aide/ui/scm/ja;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public Ws(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1df15c299c13a6fcL
    .end annotation

    const-wide v4, 0x8219b8ce9e7c538L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x8219b8ce9e7c538L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ua$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v2, Lcom/aide/ui/scm/ma;

    invoke-direct {v2, p0, p1, v0}, Lcom/aide/ui/scm/ma;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public XL(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x13e378d9281d2588L
    .end annotation

    const-wide v2, 0x5a9fbaa86d2d8d00L    # 3.436500158567866E128

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5a9fbaa86d2d8d00L    # 3.436500158567866E128

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ga;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/scm/ga;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x23892b4c883005b7L
    .end annotation

    const-wide v4, 0x150b9e8d45aa162bL    # 2.688353296029142E-207

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x150b9e8d45aa162bL    # 2.688353296029142E-207

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ua$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v2, Lcom/aide/ui/scm/qa;

    invoke-direct {v2, p0, p1, v0}, Lcom/aide/ui/scm/qa;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public hz()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x10967b6de7d7748L
    .end annotation

    const-wide v2, 0x37109a8c0eeb1690L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37109a8c0eeb1690L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ba;

    invoke-direct {v0, p0}, Lcom/aide/ui/scm/ba;-><init>(Lcom/aide/ui/scm/ua$a;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x10b04dd2cc072c90L
    .end annotation

    const-wide v2, -0x4446bddfc9e547f8L    # -5.34865392123761E-21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4446bddfc9e547f8L    # -5.34865392123761E-21

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/aide/ui/scm/ua$a;->gn:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/aide/ui/scm/ua$a;->u7:I

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17a961e1a8a0d99fL
    .end annotation

    const-wide v2, -0x271819059dab0fa1L    # -1.9288000924074932E120

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x271819059dab0fa1L    # -1.9288000924074932E120

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ea;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/scm/ea;-><init>(Lcom/aide/ui/scm/ua$a;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4c459741e50329f1L
    .end annotation

    const-wide v2, 0x1e6fbc62ef8a1e7bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1e6fbc62ef8a1e7bL

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/da;

    invoke-direct {v0, p0, p1, p2}, Lcom/aide/ui/scm/da;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public w9()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3b7a7f214d2091ddL
    .end annotation

    const-wide v2, -0x137d9abd3a4fcfcfL    # -4.954270391257874E214

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x137d9abd3a4fcfcfL    # -4.954270391257874E214

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2aae4279406f6c58L
    .end annotation

    const-wide v2, 0x1f7e15c11821e0b4L    # 5.478125343995193E-157

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/ua$a;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f7e15c11821e0b4L    # 5.478125343995193E-157

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/scm/ua$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/scm/ua$b;-><init>(Lcom/aide/ui/scm/I;)V

    new-instance v1, Lcom/aide/ui/scm/ta;

    invoke-direct {v1, p0, p1, v0}, Lcom/aide/ui/scm/ta;-><init>(Lcom/aide/ui/scm/ua$a;Ljava/lang/String;Lcom/aide/ui/scm/ua$b;)V

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/aide/ui/scm/ua$b;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/ua$a;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
