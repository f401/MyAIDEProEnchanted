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
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x7c5c6816c7d90f9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x176e716ff85d4a13L  # -5.126543760002689E195

    :try_start_6
    const-class v3, Lcom/aide/ui/marketing/a;

    const-wide v4, 0x2df3fd8d364cb18bL  # 2.5122539165972913E-87

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/marketing/a$a;

    const v5, 0x7f070076

    const-string v6, "com.aide.ui"

    const-string v7, "AIDE - Android IDE for Java/C++"

    const-string v8, "Develop programs and apps directly on your Android devices"

    const-string v9, "whatsnew/aide-whatsnew.txt"

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/aide/ui/marketing/a$a;

    const v11, 0x7f07007d

    const-string v12, "com.aide.web"

    const-string v13, "AIDE Web - Html, Css, JavaScript"

    const-string v14, "Develop websites directly on your Android devices"

    const-string v15, "whatsnew/aide-web-whatsnew.txt"

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/aide/ui/marketing/a$a;

    const v6, 0x7f07007b

    const-string v7, "com.aide.phonegap"

    const-string v8, "AIDE for Phonegap"

    const-string v9, "Develop Phonegap apps with Html & JavaScript directly on your Android devices"

    const-string v10, "whatsnew/aide-phonegap-whatsnew.txt"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/aide/ui/marketing/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/aide/ui/marketing/a$a;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v3, 0x2

    aput-object v11, v5, v3

    sput-object v5, Lcom/aide/ui/marketing/a;->j6:[Lcom/aide/ui/marketing/a$a;
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_59

    return-void

    :catchall_59
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v4, :cond_61

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2ebdf1e6a20131c0L  # -2.740236852999532E83

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    const-wide v1, -0x1f1717770ca73eb0L  # -6.839628483586149E158

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/marketing/a;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/marketing/a;->j6:[Lcom/aide/ui/marketing/a$a;

    array-length v4, v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_2c

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_29

    aget-object v6, v3, v5

    :try_start_15
    iget-object v7, v6, Lcom/aide/ui/marketing/a$a;->Hw:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v6, p0}, Lcom/aide/ui/marketing/a$a;->DW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2c

    return-object p0

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_29
    const-string p0, ""

    return-object p0

    :catchall_2c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/marketing/a;->FH:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v3

    :goto_36
    goto :goto_35
.end method
