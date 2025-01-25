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
    .registers 3

    const-class v0, Labcd/Pk;

    const-wide v1, -0x8bcfc7db1f8c320L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x69c6680081def5ccL

    :try_start_6
    sget-boolean v3, Labcd/Pk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Pk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private Hw()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fa43accd072b820L
    .end annotation

    const-wide v0, 0x365cf1c88e5a987cL  # 7.921843056057308E-47

    :try_start_5
    sget-boolean v2, Labcd/Pk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_42

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Labcd/Pk;->Hw:Ljava/security/PublicKey;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_38} :catch_3a
    .catchall {:try_start_c .. :try_end_38} :catchall_42

    const/4 v0, 0x1

    return v0

    :catch_3a
    move-exception v2

    :try_start_3b
    const-string v3, "Unable to read OUYA encryption key"

    invoke-static {v3, v2}, Lcom/aide/common/AIDELog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_42

    const/4 v0, 0x0

    return v0

    :catchall_42
    move-exception v2

    sget-boolean v3, Labcd/Pk;->DW:Z

    if-eqz v3, :cond_4a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    throw v2
.end method

.method static synthetic j6(Labcd/Pk;)Ljava/security/PublicKey;
    .registers 1

    iget-object p0, p0, Labcd/Pk;->Hw:Ljava/security/PublicKey;

    return-object p0
.end method

.method static synthetic j6(Labcd/Pk;Z)Z
    .registers 2

    iput-boolean p1, p0, Labcd/Pk;->v5:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0x9ff3b550d860040L

    :try_start_5
    sget-boolean v2, Labcd/Pk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    :cond_13
    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v2

    invoke-virtual {v2}, Ltv/ouya/console/api/i;->v5()Z

    move-result v2

    if-nez v2, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Labcd/Pk;->Hw()Z

    move-result v2

    if-nez v2, :cond_25

    return-void

    :cond_25
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Pk;->FH:Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Pk;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x1b5f603b65f7689cL

    :try_start_5
    sget-boolean v2, Labcd/Pk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/Pk;->FH:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v2

    invoke-virtual {v2}, Ltv/ouya/console/api/i;->Zo()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Pk;->FH:Z
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Pk;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x94f2b42c016672fL  # -5.299885257348519E263

    :try_start_5
    sget-boolean v2, Labcd/Pk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Labcd/Pk;->FH:Z

    if-nez v2, :cond_11

    return-void

    :cond_11
    iget-boolean v2, p0, Labcd/Pk;->v5:Z

    if-eqz v2, :cond_16

    return-void

    :cond_16
    const/4 v2, 0x1

    iput-boolean v2, p0, Labcd/Pk;->v5:Z

    new-instance v2, Labcd/Ok;

    invoke-direct {v2, p0}, Labcd/Ok;-><init>(Labcd/Pk;)V

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Ltv/ouya/console/api/i;->j6(Ltv/ouya/console/api/k;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Labcd/Pk;->DW:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method
