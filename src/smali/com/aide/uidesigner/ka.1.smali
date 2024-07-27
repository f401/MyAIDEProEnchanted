.class public Lcom/aide/uidesigner/ka;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Lcom/aide/uidesigner/a;
    .annotation runtime Labcd/ru;
        field = -0x5300c5ab218a22cbL
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Lcom/aide/uidesigner/s;
    .annotation runtime Labcd/ru;
        field = -0x44d380216ed638f0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1c796187b3007d70L    # 1.6419155400031285E-171

    const-class v0, Lcom/aide/uidesigner/ka;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x663e1cbaec3148L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x663e1cbaec3148L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW()Lcom/aide/uidesigner/a;
    .registers 1

    sget-object v0, Lcom/aide/uidesigner/ka;->DW:Lcom/aide/uidesigner/a;

    return-object v0
.end method

.method public static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 9

    const-wide v2, -0x150f5f3f57432420L    # -1.3346133853413932E207

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x150f5f3f57432420L    # -1.3346133853413932E207

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAllUserStyles()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5176\u4ed6..."

    :goto_0
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "none"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/uidesigner/W;

    invoke-direct {v0, p1, p0}, Lcom/aide/uidesigner/W;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    const-string v5, "Style"

    invoke-static {p0, v5, v1, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "other..."

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    return-void
.end method

.method private static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1825f9c9e1f5545bL
    .end annotation

    const-wide v8, 0x22cb6c6e506d0a8L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22cb6c6e506d0a8L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, p3

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/aide/uidesigner/S;

    invoke-direct {v5, p1, p2}, Lcom/aide/uidesigner/S;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    new-instance v6, Lcom/aide/uidesigner/T;

    invoke-direct {v6, p1, p2}, Lcom/aide/uidesigner/T;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    const/4 v2, 0x0

    const-string v3, "None"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x2cc1eaa18acf5130L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13ca17b9408f4f7dL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_1

    move-object v0, p4

    :goto_0
    new-instance v1, Lcom/aide/common/Fa;

    iget-object v2, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v2}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/uidesigner/P;

    invoke-direct {v3, p1, p2}, Lcom/aide/uidesigner/P;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    new-instance v4, Lcom/aide/uidesigner/Q;

    invoke-direct {v4, p1, p2}, Lcom/aide/uidesigner/Q;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/aide/common/Fa;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x13ca17b9408f4f7dL

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static varargs DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x24f7da4eee3afbbcL
    .end annotation

    const-wide v8, 0x8203cfe0a18881fL

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8203cfe0a18881fL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p3, v0

    invoke-static {v3}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/aide/uidesigner/fa;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/aide/uidesigner/fa;-><init>(Ljava/util/ArrayList;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static EQ(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1cc75061a4a712f4L
    .end annotation

    const-wide v8, -0x6a881a107d7157L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6a881a107d7157L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "View..."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "none"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/ca;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/uidesigner/ca;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic FH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    return-void
.end method

.method static synthetic Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->we(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    return-void
.end method

.method private static J0(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1bab73df735aed97L
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc6eb3b089f7b7a8L    # -4.837873684589805E248

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "android:visibility"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "invisible"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gone"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "android:orientation"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "horizontal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vertical"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    const-wide v2, -0xc6eb3b089f7b7a8L    # -4.837873684589805E248

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    const-string v0, "android:typeface"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sans"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "serif"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "monospace"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "android:alignmentMode"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "alignBounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alignMargins"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "android:textAlignment"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "inherit"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gravity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "textStart"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "textEnd"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "viewStart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "viewEnd"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.view.Gravity"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "left"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "right"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "center_vertical"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "center_horizontal"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fill"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fill_vertical"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fill_horizontal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "clip_vertical"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "clip_horizontal"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "start"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "end"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v6

    :goto_1
    if-ge v0, v3, :cond_9

    aget-object v4, v2, v0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_8

    iget-object v4, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v4, v4, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v4, v4, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p0, p1, p2, v1}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private static J8(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x766c5c073ee643cL
    .end annotation

    const-wide v8, 0xd3032ce88b684dL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd3032ce88b684dL

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bbe\u7f6e\u5927\u5c0f..."

    :goto_0
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Wrap Content"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Match Parent"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/aide/uidesigner/O;

    invoke-direct {v2, p1, p2, p0}, Lcom/aide/uidesigner/O;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 99
    :cond_1
    const-string v0, "Fixed size..."

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1382a49a2db647c0L
    .end annotation

    const-wide v8, -0x2e05f17128c4d987L    # -8.09917841583906E86

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2e05f17128c4d987L    # -8.09917841583906E86

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0d06f9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/aide/uidesigner/da;

    invoke-direct {v0, p1, p2, p0}, Lcom/aide/uidesigner/da;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1de007bea29c8320L
    .end annotation

    const-wide v8, -0x2ed0a5e60b16a601L    # -1.1895795824142481E83

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ed0a5e60b16a601L    # -1.1895795824142481E83

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    new-instance v3, Lcom/aide/uidesigner/ja;

    invoke-direct {v3, p1, p2}, Lcom/aide/uidesigner/ja;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static Ws(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x6e1f1552678f190L
    .end annotation

    const-wide v8, 0x6039fc9c21a6214bL    # 3.4842545162917716E155

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6039fc9c21a6214bL    # 3.4842545162917716E155

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "?android:attr/"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "?android:attr/textAppearanceSmall"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "?android:attr/textAppearanceMedium"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "?android:attr/textAppearanceLarge"

    aput-object v3, v1, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static Zo(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x3502e42216fa1e1L
    .end annotation

    const-wide v8, -0x3a38df311ac5e5a8L    # -1.4315635776210449E28

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a38df311ac5e5a8L    # -1.4315635776210449E28

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "true"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "false"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static gn(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x4e82ac3a7e85167L
    .end annotation

    const-wide v8, -0xea66a897c3e1c8L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xea66a897c3e1c8L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Color..."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Drawable..."

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "none"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/ga;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/uidesigner/ga;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic j6(Lcom/aide/uidesigner/a;)Lcom/aide/uidesigner/a;
    .registers 1

    sput-object p0, Lcom/aide/uidesigner/ka;->DW:Lcom/aide/uidesigner/a;

    return-object p0
.end method

.method static synthetic j6()Lcom/aide/uidesigner/s;
    .registers 1

    sget-object v0, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/uidesigner/s;)Lcom/aide/uidesigner/s;
    .registers 1

    sput-object p0, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 9

    const-wide v2, 0x9ec93d40edf6764L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9ec93d40edf6764L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->tp()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u9009\u62e9\u540d\u5b57"

    move-object v1, v0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8f93\u5165\u56fe\u50cf\u7684\u540d\u79f0"

    :goto_1
    :try_start_2
    new-instance v6, Lcom/aide/uidesigner/aa;

    invoke-direct {v6, p1}, Lcom/aide/uidesigner/aa;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v1, v0, v5, v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    .line 99
    :cond_2
    const-string v0, "Choose Name"

    move-object v1, v0

    goto :goto_0

    :cond_3
    const-string v0, "Enter a name for the image"

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_4

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 12

    const-wide v8, 0x15e4024f0262cb50L    # 3.190940544778505E-203

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15e4024f0262cb50L    # 3.190940544778505E-203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/aide/uidesigner/X;

    invoke-direct {v5, p1}, Lcom/aide/uidesigner/X;-><init>(Lcom/aide/uidesigner/s;)V

    new-instance v6, Lcom/aide/uidesigner/Y;

    invoke-direct {v6, p1}, Lcom/aide/uidesigner/Y;-><init>(Lcom/aide/uidesigner/s;)V

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "None"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->EQ()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    return-void
.end method

.method static synthetic j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1be7e4aa6d82a850L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            "Lcom/aide/uidesigner/a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11c5fdc19bcb9b41L    # -9.401486597941188E222

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x11c5fdc19bcb9b41L    # -9.401486597941188E222

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    .line 4294967295
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5176\u4ed6..."

    :goto_1
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "none"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Lcom/aide/uidesigner/ia;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/aide/uidesigner/ia;-><init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p0, v7, v1, v0}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 99
    :cond_3
    const-string v0, "other..."

    goto :goto_1
.end method

.method private static varargs j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1554877a97c3e160L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xca0d74dc769f043L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0xca0d74dc769f043L

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x51e6994d7aa4c001L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            "Lcom/aide/uidesigner/a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v8, 0x4fdab55aca8fe8b8L    # 4.832224000050258E76

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4fdab55aca8fe8b8L    # 4.832224000050258E76

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private static varargs j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x5dbccd80654beb91L
    .end annotation

    const-wide v8, -0x4acb0c93bc69e700L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4acb0c93bc69e700L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p3, v0

    invoke-static {v2}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    new-instance v5, Lcom/aide/uidesigner/ea;

    invoke-direct {v5, p1, p2}, Lcom/aide/uidesigner/ea;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static tp(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1a8a73cceb6cca25L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x134733c46edcb7d0L    # -5.3428106638745835E215

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "android.widget.ImageView$ScaleType"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "matrix"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fitXY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fitStart"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fitCenter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fitEnd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "centerCrop"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "centerInside"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "android.text.TextUtils$TruncateAt"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "middle"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "marquee"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x134733c46edcb7d0L    # -5.3428106638745835E215

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xea2f45b06e3c7e7L
    .end annotation

    const-wide v8, -0x1afaa7620e7ed00L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1afaa7620e7ed00L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAllUserDrawables()Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    .line 4294967295
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u5176\u4ed6..."

    :goto_1
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u6dfb\u52a0..."

    :goto_2
    :try_start_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "none"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/aide/uidesigner/ha;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/uidesigner/ha;-><init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {p0, v6, v1, v0}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 99
    :cond_3
    const-string v0, "other..."

    goto :goto_1

    :cond_4
    const-string v0, "add..."

    goto :goto_2
.end method

.method public static v5(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13

    const-wide v8, -0x2c4b006a79078edL    # -1.744357945467141E295

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c4b006a79078edL    # -1.744357945467141E295

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/uidesigner/Z;->j6:[I

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->Ws(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :pswitch_1
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->EQ(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->J0(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->tp(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->Zo(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->J8(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "10dp"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "10sp"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    const-string v0, "1"

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    const-string v0, "1.0"

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_d
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :pswitch_e
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->gn(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static we(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x425c66c106eb18L
    .end annotation

    const-wide v8, 0x41dca39f935f3489L    # 1.9219410694875815E9

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x41dca39f935f3489L    # 1.9219410694875815E9

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x344059

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    sput-object p1, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    sput-object p2, Lcom/aide/uidesigner/ka;->DW:Lcom/aide/uidesigner/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
