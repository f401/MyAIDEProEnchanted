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
    .registers 4

    const-wide v2, -0x5671d3d47558f1f9L

    const-class v0, Labcd/Oi;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2a2a620db310714cL    # -3.098656886628085E105

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Oi$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Oi$a;-><init>(Labcd/Oi;Labcd/Ki;)V

    iput-object v0, p0, Labcd/Oi;->Zo:Labcd/Oi$a;

    iput-object p1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Oi;->gn:Ljava/lang/String;

    iput p3, p0, Labcd/Oi;->u7:I

    iput-object p4, p0, Labcd/Oi;->tp:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Oi;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x2a2a620db310714cL    # -3.098656886628085E105

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
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

    const-wide v2, -0x4ab34f3ffe73e308L    # -5.9908412681744754E-52

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ab34f3ffe73e308L    # -5.9908412681744754E-52

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/ue;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x57ff4ec0b339c64cL
    .end annotation

    const-wide v2, 0x1e19017ec5839525L

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e19017ec5839525L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/ue;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private VH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3fdec5c175f53a7dL
    .end annotation

    const-wide v2, 0x66187566418e21c0L    # 6.495443612526194E183

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x66187566418e21c0L    # 6.495443612526194E183

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v0, "Requesting license check"

    invoke-direct {p0, v0}, Labcd/Oi;->DW(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    iget-object v1, p0, Labcd/Oi;->Zo:Labcd/Oi$a;

    invoke-interface {v0, v1}, Lcom/aide/licensing/IAideLicensingService;->j6(Lcom/aide/licensing/g;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0, v0}, Labcd/Oi;->j6(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x219847ebf5dc0e83L
    .end annotation

    const-wide v6, 0x696b453492f849b8L    # 6.523153393463226E199

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x696b453492f849b8L    # 6.523153393463226E199

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Labcd/Oi;->VH()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Labcd/Oi;->v5:Z

    if-nez v0, :cond_4

    new-instance v0, Labcd/Ki;

    invoke-direct {v0, p0}, Labcd/Ki;-><init>(Labcd/Oi;)V

    iput-object v0, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/aide/licensing/IAideLicensingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/Oi;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Labcd/Oi;->tp:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_2
    iput-boolean v0, p0, Labcd/Oi;->v5:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_3
    const-string v0, "Licensing service could not be bound"

    invoke-direct {p0, v0}, Labcd/Oi;->DW(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Licensing service bind already pending"

    invoke-direct {p0, v0}, Labcd/Oi;->DW(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
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

    const-wide v2, -0x5e9ea19963d57789L    # -6.791735776476782E-148

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5e9ea19963d57789L    # -6.791735776476782E-148

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/ue;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x5340480c5ea8e62fL
    .end annotation

    const-wide v10, -0x4630a4efca3fc9fcL    # -3.0919123227625244E-30

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4630a4efca3fc9fcL    # -3.0919123227625244E-30

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v0, "TEMPORARY_ERROR"

    invoke-virtual {p0, v0}, Labcd/Oi;->j6(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Oi;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    const-string v0, "NOT_LICENSED"

    invoke-virtual {p0, v0}, Labcd/Oi;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "OVER_GRACE_PERIOD"

    invoke-virtual {p0, v0}, Labcd/Oi;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Labcd/Oi;->gn:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/aide/licensing/f;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aide/licensing/e;

    move-result-object v0

    iget-wide v0, v0, Lcom/aide/licensing/e;->EQ:J

    invoke-virtual {p0, v0, v1}, Labcd/Oi;->j6(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/Oi;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Oi;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x1aeae90080f582e8L    # 5.188107091510734E-179

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1aeae90080f582e8L    # 5.188107091510734E-179

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Z
    .registers 7

    const-wide v4, 0x58439074e38c44ffL    # 1.5417440458870062E117

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x58439074e38c44ffL    # 1.5417440458870062E117

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Labcd/Oi;->VH:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected abstract Hw()V
.end method

.method public j6()V
    .registers 9

    const-wide v6, -0x25cb37261ceebe4L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Oi;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x25cb37261ceebe4L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.phonegap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Oi;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    iget-object v3, p0, Labcd/Oi;->VH:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, p0, Labcd/Oi;->u7:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    :try_start_2
    invoke-direct {p0}, Labcd/Oi;->Zo()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Labcd/Oi;->Hw()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected abstract j6(J)V
.end method

.method protected abstract j6(Ljava/lang/String;)V
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0x252a0c098056493cL    # -3.804272650063371E129

    :try_start_0
    sget-boolean v0, Labcd/Oi;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x252a0c098056493cL    # -3.804272650063371E129

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Oi;->FH:Lcom/aide/licensing/IAideLicensingService;

    if-eqz v0, :cond_1

    const-string v0, "Unbinding license service"

    invoke-direct {p0, v0}, Labcd/Oi;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Oi;->Hw:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Oi;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Oi;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
