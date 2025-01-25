.class public abstract Labcd/Oi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Oi$a;
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
.field private FH:Lcom/aide/licensing/IAideLicensingService;
    .annotation runtime Labcd/ru;
        field = 0x571458671c8aa4b1L
    .end annotation
.end field

.field private Hw:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/ru;
        field = 0x3dcb013ce7ab9dfL
    .end annotation
.end field

.field private VH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xbf56a439c404a60L
    .end annotation
.end field

.field private Zo:Labcd/Oi$a;
    .annotation runtime Labcd/ru;
        field = -0x49cbc1da5d3a6c1dL
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1097e14bb8f40429L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x59e017ccb3bb690L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0xa4d934145b3d915L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0xb1cddbf73be885cL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Oi;

    const-wide v1, -0x5671d3d47558f1f9L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_15

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2a2a620db310714cL  # -3.098656886628085E105

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Oi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Oi$a;-><init>(Labcd/Oi;Labcd/Ki;)V

    iput-object v0, p0, Labcd/Oi;->Zo:Labcd/Oi$a;

    iput-object p1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Oi;->gn:Ljava/lang/String;

    iput p3, p0, Labcd/Oi;->u7:I

    iput-object p4, p0, Labcd/Oi;->tp:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x2a2a620db310714cL  # -3.098656886628085E105

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method static synthetic DW(Labcd/Oi;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Oi;->FH(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x130639901a091ff1L
    .end annotation

    const-wide v0, -0x4ab34f3ffe73e308L  # -5.9908412681744754E-52

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x57ff4ec0b339c64cL
    .end annotation

    const-wide v0, 0x1e19017ec5839525L

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method private VH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3fdec5c175f53a7dL
    .end annotation

    const-wide v0, 0x66187566418e21c0L  # 6.495443612526194E183

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    :cond_c
    :try_start_c
    const-string v2, "Requesting license check"

    invoke-direct {p0, v2}, Labcd/Oi;->DW(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    iget-object v3, p0, Labcd/Oi;->Zo:Labcd/Oi$a;

    invoke-interface {v2, v3}, Lcom/aide/licensing/IAideLicensingService;->j6(Lcom/aide/licensing/g;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19
    .catchall {:try_start_c .. :try_end_18} :catchall_1e

    goto :goto_1d

    :catch_19
    move-exception v2

    :try_start_1a
    invoke-direct {p0, v2}, Labcd/Oi;->j6(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method private Zo()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x219847ebf5dc0e83L
    .end annotation

    const-wide v0, 0x696b453492f849b8L  # 6.523153393463226E199

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    if-eqz v2, :cond_14

    invoke-direct {p0}, Labcd/Oi;->VH()V

    goto :goto_61

    :cond_14
    iget-boolean v2, p0, Labcd/Oi;->v5:Z

    if-nez v2, :cond_5e

    new-instance v2, Labcd/Ki;

    invoke-direct {v2, p0}, Labcd/Ki;-><init>(Labcd/Oi;)V

    iput-object v2, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/aide/licensing/IAideLicensingService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Oi;->DW(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_62

    :try_start_39
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Labcd/Oi;->tp:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_51
    .catchall {:try_start_39 .. :try_end_50} :catchall_62

    goto :goto_53

    :catch_51
    move-exception v2

    const/4 v2, 0x0

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    iput-boolean v2, p0, Labcd/Oi;->v5:Z

    goto :goto_61

    :cond_58
    const-string v2, "Licensing service could not be bound"

    :goto_5a
    invoke-direct {p0, v2}, Labcd/Oi;->DW(Ljava/lang/String;)V

    goto :goto_61

    :cond_5e
    const-string v2, "Licensing service bind already pending"
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_62

    goto :goto_5a

    :goto_61
    return-void

    :catchall_62
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_6a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw v2

    :goto_6c
    goto :goto_6b
.end method

.method static synthetic j6(Labcd/Oi;Lcom/aide/licensing/IAideLicensingService;)Lcom/aide/licensing/IAideLicensingService;
    .registers 2

    iput-object p1, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    return-object p1
.end method

.method static synthetic j6(Labcd/Oi;)V
    .registers 1

    invoke-direct {p0}, Labcd/Oi;->VH()V

    return-void
.end method

.method static synthetic j6(Labcd/Oi;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Oi;->DW(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Labcd/Oi;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/Oi;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/Exception;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2780266ec2f82420L
    .end annotation

    const-wide v0, -0x5e9ea19963d57789L  # -6.791735776476782E-148

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Labcd/ue;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x5340480c5ea8e62fL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4630a4efca3fc9fcL  # -3.0919123227625244E-30

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget-object v6, p0, Labcd/Oi;->VH:Ljava/lang/String;

    iget-object v9, p0, Labcd/Oi;->gn:Ljava/lang/String;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lcom/aide/licensing/f;->j6(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/f$a;

    move-result-object v0

    sget-object v1, Labcd/Li;->j6:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    const/4 v2, 0x2

    if-eq v1, v2, :cond_58

    const/4 v2, 0x3

    if-eq v1, v2, :cond_55

    const/4 v2, 0x4

    if-eq v1, v2, :cond_52

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3b

    const-string v0, "TEMPORARY_ERROR"

    :goto_37
    invoke-virtual {p0, v0}, Labcd/Oi;->j6(Ljava/lang/String;)V

    goto :goto_63

    :cond_3b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown LicenseVerificationResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    const-string v0, "NOT_LICENSED"

    goto :goto_37

    :cond_55
    const-string v0, "OVER_GRACE_PERIOD"

    goto :goto_37

    :cond_58
    iget-object v0, p0, Labcd/Oi;->gn:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/aide/licensing/e;->EQ:J

    invoke-virtual {p0, v0, v1}, Labcd/Oi;->j6(J)V
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_64

    :goto_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x4630a4efca3fc9fcL  # -3.0919123227625244E-30

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method static synthetic j6(Labcd/Oi;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Oi;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x1aeae90080f582e8L  # 5.188107091510734E-179

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()Z
    .registers 6

    const-wide v0, 0x58439074e38c44ffL  # 1.5417440458870062E117

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    const-string v4, "com.aide.ui"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_22

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method protected abstract Hw()V
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x25cb37261ceebe4L

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.phonegap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Oi;->FH()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_45

    const/4 v4, 0x0

    if-eqz v3, :cond_35

    :try_start_26
    iget-object v5, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v5, p0, Labcd/Oi;->u7:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_30} :catch_34
    .catchall {:try_start_26 .. :try_end_30} :catchall_45

    if-lt v2, v5, :cond_35

    const/4 v4, 0x1

    goto :goto_35

    :catch_34
    move-exception v2

    :cond_35
    :goto_35
    if-eqz v3, :cond_3d

    if-eqz v4, :cond_3d

    :try_start_39
    invoke-direct {p0}, Labcd/Oi;->Zo()V

    goto :goto_44

    :cond_3d
    if-eqz v3, :cond_44

    if-nez v4, :cond_44

    invoke-virtual {p0}, Labcd/Oi;->Hw()V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_45

    :cond_44
    :goto_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method protected abstract j6(J)V
.end method

.method protected abstract j6(Ljava/lang/String;)V
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x252a0c098056493cL  # -3.804272650063371E129

    :try_start_5
    sget-boolean v2, Labcd/Oi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    if-eqz v2, :cond_24

    const-string v2, "Unbinding license service"

    invoke-direct {p0, v2}, Labcd/Oi;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Oi;->v5:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Oi;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method
