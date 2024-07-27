.class public Labcd/Pk;
.super Ljava/lang/Object;


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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x253121a8b84f4c1dL
    .end annotation
.end field

.field private Hw:Ljava/security/PublicKey;
    .annotation runtime Labcd/ru;
        field = 0x16e66b3185b42241L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x29d077bdd6847aa3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x8bcfc7db1f8c320L

    const-class v0, Labcd/Pk;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x69c6680081def5ccL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x69c6680081def5ccL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fa43accd072b820L
    .end annotation

    const-wide v2, 0x365cf1c88e5a987cL    # 7.921843056057308E-47

    :try_start_0
    sget-boolean v0, Labcd/Pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x365cf1c88e5a987cL    # 7.921843056057308E-47

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Labcd/Pk;->Hw:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Unable to read OUYA encryption key"

    invoke-static {v1, v0}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Labcd/Pk;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Labcd/Pk;)Ljava/security/PublicKey;
    .registers 2

    iget-object v0, p0, Labcd/Pk;->Hw:Ljava/security/PublicKey;

    return-object v0
.end method

.method static synthetic j6(Labcd/Pk;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Pk;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0x9ff3b550d860040L

    :try_start_0
    sget-boolean v0, Labcd/Pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9ff3b550d860040L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/i;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Labcd/Pk;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Pk;->FH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x1b5f603b65f7689cL

    :try_start_0
    sget-boolean v0, Labcd/Pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b5f603b65f7689cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/Pk;->FH:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/i;->Zo()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Pk;->FH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x94f2b42c016672fL    # -5.299885257348519E263

    :try_start_0
    sget-boolean v0, Labcd/Pk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x94f2b42c016672fL    # -5.299885257348519E263

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Labcd/Pk;->FH:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Labcd/Pk;->v5:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Pk;->v5:Z

    new-instance v0, Labcd/Ok;

    invoke-direct {v0, p0}, Labcd/Ok;-><init>(Labcd/Pk;)V

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltv/ouya/console/api/i;->j6(Ltv/ouya/console/api/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pk;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
