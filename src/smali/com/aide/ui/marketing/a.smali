.class public Lcom/aide/ui/marketing/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/marketing/a$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field static j6:[Lcom/aide/ui/marketing/a$a;
    .annotation runtime Labcd/ru;
        field = -0x855c2e5158d666fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x7c5c6816c7d90f9L
    .end annotation

    const-wide v10, -0x176e716ff85d4a13L    # -5.126543760002689E195

    const/4 v8, 0x0

    :try_start_0
    const-class v0, Lcom/aide/ui/marketing/a;

    const-wide v2, 0x2df3fd8d364cb18bL    # 2.5122539165972913E-87

    const-wide v4, 0x2df3fd8d364cb18bL    # 2.5122539165972913E-87

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x176e716ff85d4a13L    # -5.126543760002689E195

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/marketing/a$a;

    const v1, 0x7f070076

    const-string v2, "com.aide.ui"

    const-string v3, "AIDE - Android IDE for Java/C++"

    const-string v4, "Develop programs and apps directly on your Android devices"

    const-string v5, "whatsnew/aide-whatsnew.txt"

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/aide/ui/marketing/a$a;

    const v2, 0x7f07007d

    const-string v3, "com.aide.web"

    const-string v4, "AIDE Web - Html, Css, JavaScript"

    const-string v5, "Develop websites directly on your Android devices"

    const-string v6, "whatsnew/aide-web-whatsnew.txt"

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/aide/ui/marketing/a$a;

    const v3, 0x7f07007b

    const-string v4, "com.aide.phonegap"

    const-string v5, "AIDE for Phonegap"

    const-string v6, "Develop Phonegap apps with Html & JavaScript directly on your Android devices"

    const-string v7, "whatsnew/aide-phonegap-whatsnew.txt"

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/aide/ui/marketing/a$a;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/aide/ui/marketing/a;->j6:[Lcom/aide/ui/marketing/a$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v10, v11, v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2ebdf1e6a20131c0L    # -2.740236852999532E83

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ebdf1e6a20131c0L    # -2.740236852999532E83

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const-wide v8, -0x1f1717770ca73eb0L    # -6.839628483586149E158

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f1717770ca73eb0L    # -6.839628483586149E158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/ui/marketing/a;->j6:[Lcom/aide/ui/marketing/a$a;

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    :try_start_1
    iget-object v4, v3, Lcom/aide/ui/marketing/a$a;->Hw:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p0}, Lcom/aide/ui/marketing/a$a;->DW(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, v6, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
