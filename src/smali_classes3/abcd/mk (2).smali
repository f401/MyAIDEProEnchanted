.class public Labcd/mk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/mk$a;
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
.field private FH:Labcd/mk$a;
    .annotation runtime Labcd/ru;
        field = 0x2fd3b505cfc98508L
    .end annotation
.end field

.field private Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2f94de88359ce208L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/mk;

    const-wide v1, -0x6009dcdb64e247fL  # -4.450599084734973E279

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1a4febfceb1b7c27L  # -6.67166251230473E181

    :try_start_6
    sget-boolean v3, Labcd/mk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/mk;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getAppProjects()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x2b667a61c6483d94L  # 1.2846066391924784E-99

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/mk;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW_()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x4d257bf5ceef8840L  # -1.0071295607469595E-63

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/AppProjects"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v0

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x5b89a2aa2231fba4L  # -4.923148031627034E-133

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/mk;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x11b6007c6b7fd6d9L  # -1.8795264395141624E223

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/mk;->FH:Labcd/mk$a;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Labcd/mk$a;->FH()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x62e0da212da4d2d8L  # -2.06334402235396E-168

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FileBrowserService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "CurrentDir"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {v2}, Labcd/FileSystemUtils;->J0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_26
    invoke-virtual {p0}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->mkdirs(Ljava/lang/String;)Z
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-object v2

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public j6(Labcd/mk$a;)V
    .registers 6

    const-wide v0, -0x23002a594b1eb90L

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/mk;->FH:Labcd/mk$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7

    const-wide v0, 0x1bcd0ee20b50b8a5L  # 9.178681282615403E-175

    :try_start_5
    sget-boolean v2, Labcd/mk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FileBrowserService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CurrentDir"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Labcd/mk;->Hw()V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/mk;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v2
.end method
