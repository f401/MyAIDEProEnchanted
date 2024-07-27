.class public Lcom/aide/ui/build/android/O;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/build/android/O$a;
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xea1aba3161df184L    # 3.392042040222766E-238

    const-class v0, Lcom/aide/ui/build/android/O;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x2db24fdcc3f3fb80L    # 1.4383221563917395E-88

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2db24fdcc3f3fb80L    # 1.4383221563917395E-88

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x390f55293122c297L
    .end annotation

    const-wide v6, 0x3319d3209718d021L    # 1.5694101801437642E-62

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3319d3209718d021L    # 1.5694101801437642E-62

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/aide/ui/build/android/I;

    invoke-direct {v0}, Lcom/aide/ui/build/android/I;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/build/android/L;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/aide/ui/build/android/L;-><init>(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    const-string v3, "Select keystore alias"

    invoke-static {v1, v3, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "\u6784\u5efa\u9519\u8bef"

    const-string v2, "Invalid keystore credentials!"

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x3fa696c8263da7f3L
    .end annotation

    const-wide v8, 0x4df33d0b64b053bbL    # 3.241673271286276E67

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4df33d0b64b053bbL    # 3.241673271286276E67

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v6

    new-instance v0, Lcom/aide/ui/build/android/M;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/build/android/M;-><init>(Lcom/aide/ui/build/android/O;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    if-eqz v6, :cond_1

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "user_keystore_password"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/aide/ui/build/android/M;->j6(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter password for keystore alias \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xa9f5509cba9ccb5L
    .end annotation

    const-wide v8, -0x37fa492f20b92d23L    # -9.236167158634637E38

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x37fa492f20b92d23L    # -9.236167158634637E38

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v0, Lcom/aide/ui/build/android/I;

    invoke-direct {v0}, Lcom/aide/ui/build/android/I;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/aide/ui/build/android/O$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no alias"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "\u6784\u5efa\u9519\u8bef"

    const-string v2, "Invalid keystore credentials!"

    invoke-static {v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method


# virtual methods
.method public j6(Landroid/app/Activity;)V
    .registers 10

    const-wide v6, 0x18fccf3eaeeb8de7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18fccf3eaeeb8de7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/AppProjects/debug.keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Labcd/rh;

    new-instance v2, Lcom/aide/ui/build/android/N;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/android/N;-><init>(Lcom/aide/ui/build/android/O;Landroid/app/Activity;)V

    const-string v3, "androiddebugkey"

    const-string v4, "android"

    invoke-direct {v1, v0, v3, v4, v2}, Labcd/rh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Labcd/rh$a;)V

    invoke-static {p1, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Labcd/Be$j;Lcom/aide/ui/build/android/O$a;)V
    .registers 12

    const-wide v6, 0xa88bfcf9ef6f7e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa88bfcf9ef6f7e0L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Labcd/Be$j;->j6()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/android/I;

    invoke-direct {v1}, Lcom/aide/ui/build/android/I;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Labcd/Be$j;->Zo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    iget-object v2, p2, Labcd/Be$j;->Hw:Ljava/lang/String;

    iget-object v3, p2, Labcd/Be$j;->v5:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Labcd/Be$j;->Zo:Ljava/lang/String;

    iget-object v2, p2, Labcd/Be$j;->Hw:Ljava/lang/String;

    iget-object v3, p2, Labcd/Be$j;->v5:Ljava/lang/String;

    invoke-interface {p3, v0, v1, v2, v3}, Lcom/aide/ui/build/android/O$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "can not read keystore"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/build/android/K;

    invoke-direct {v1, p0, p1, p3}, Lcom/aide/ui/build/android/K;-><init>(Lcom/aide/ui/build/android/O;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V

    const-string v2, "\u6784\u5efa\u9519\u8bef"

    const-string v3, "Failed to open signingConfig from build.gradle. Use alternative signing?"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    .registers 10

    const-wide v2, 0x6c5b82b0e7cca7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/O;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6c5b82b0e7cca7L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {p1}, Labcd/FileSystemUtils;->isFileButNotJarOrZip(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    new-instance v0, Lcom/aide/ui/build/android/I;

    invoke-direct {v0}, Lcom/aide/ui/build/android/I;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "android"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v1, "androiddebugkey"

    const-string v4, "android"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "android"

    const-string v1, "androiddebugkey"

    const-string v4, "android"

    invoke-interface {p2, p1, v0, v1, v4}, Lcom/aide/ui/build/android/O$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no androiddebugkey"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "custom_keystore"

    invoke-virtual {v0, v1, v4}, Labcd/Ek;->j6(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/aide/ui/build/android/O;->j6(Ljava/lang/String;Ljava/lang/String;Lcom/aide/ui/build/android/O$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/android/O;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore file "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u6784\u5efa\u9519\u8bef"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, ""

    const-string v1, ""

    const-string v4, ""

    const-string v5, ""

    invoke-interface {p2, v0, v1, v4, v5}, Lcom/aide/ui/build/android/O$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    :try_start_0
    new-instance v1, Lsun1/security/provider/JavaProvider;

    invoke-direct {v1}, Lsun1/security/provider/JavaProvider;-><init>()V

    invoke-static {v1}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v1, L淆淆淆淆混淆淆淆淆混淆混淆混混淆淆淆混混混混混淆淆淆混混淆混混淆混淆淆混混混混淆混淆淆混淆淆淆淆淆混混混淆淆混淆混淆混淆混淆混混淆混混淆混混混淆混混混混混淆混混淆淆混混淆混混淆混淆混淆淆混混淆混淆混淆/淆淆淆淆淆淆混淆淆混淆混混淆淆淆淆混混混混混淆淆淆淆淆混淆淆淆淆混混混混混混混淆淆淆淆混淆混混淆淆淆淆混混混淆混混淆淆淆淆混淆混混淆混淆淆淆淆混淆混淆淆混淆混淆淆淆混淆淆混淆混混淆淆混淆淆淆混混混混淆;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", O="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", OU="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", L="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", C="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, L淆淆淆淆混淆淆淆淆混淆混淆混混淆淆淆混混混混混淆淆淆混混淆混混淆混淆淆混混混混淆混淆淆混淆淆淆淆淆混混混淆淆混淆混淆混淆混淆混混淆混混淆混混混淆混混混混混淆混混淆淆混混淆混混淆混淆混淆淆混混淆混淆混淆/淆淆淆淆淆淆混淆淆混淆混混淆淆淆淆混混混混混淆淆淆淆淆混淆淆淆淆混混混混混混混淆淆淆淆混淆混混淆淆淆淆混混混淆混混淆淆淆淆混淆混混淆混淆淆淆淆混淆混淆淆混淆混淆淆淆混淆淆混淆混混淆淆混淆淆淆混混混混淆;-><init>(Ljava/lang/String;)V

    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    invoke-static {v1, v2, p5, p6, p7}, L淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混/淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆;->淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆(L淆淆淆淆混淆淆淆淆混淆混淆混混淆淆淆混混混混混淆淆淆混混淆混混淆混淆淆混混混混淆混淆淆混淆淆淆淆淆混混混淆淆混淆混淆混淆混淆混混淆混混淆混混混淆混混混混混淆混混淆淆混混淆混混淆混淆混淆淆混混淆混淆混淆/淆淆淆淆淆淆混淆淆混淆混混淆淆淆淆混混混混混淆淆淆淆淆混淆淆淆淆混混混混混混混淆淆淆淆混淆混混淆淆淆淆混混混淆混混淆淆淆淆混淆混混淆混淆淆淆淆混淆混淆淆混淆混淆淆淆混淆淆混淆混混淆淆混淆淆淆混混混混淆;Ljava/security/KeyPair;Ljava/util/Date;Ljava/util/Date;Ljava/math/BigInteger;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const-string v3, "JKS"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/security/cert/Certificate;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, p3, v2, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    goto :goto_0
.end method
