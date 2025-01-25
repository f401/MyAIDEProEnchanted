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
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ka;

    const-wide v1, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x663e1cbaec3148L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW()Lcom/aide/uidesigner/a;
    .registers 1

    sget-object v0, Lcom/aide/uidesigner/ka;->DW:Lcom/aide/uidesigner/a;

    return-object v0
.end method

.method public static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x150f5f3f57432420L  # -1.3346133853413932E207

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAllUserStyles()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_37

    if-eqz v1, :cond_22

    const-string v1, "其他..."

    goto :goto_24

    .line 99
    :cond_22
    const-string v1, "other..."

    .line 0
    :goto_24
    :try_start_24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/uidesigner/W;

    invoke-direct {v1, p1, p0}, Lcom/aide/uidesigner/W;-><init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V

    const-string v2, "Style"

    invoke-static {p0, v2, v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_37

    return-void

    .line 99
    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_48

    const-wide v2, -0x150f5f3f57432420L  # -1.3346133853413932E207

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method static synthetic DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    return-void
.end method

.method private static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1825f9c9e1f5545bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x22cb6c6e506d0a8L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v0, :cond_17

    move-object v5, p3

    goto :goto_18

    :cond_17
    move-object v5, v0

    :goto_18
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/aide/uidesigner/S;

    invoke-direct {v6, p1, p2}, Lcom/aide/uidesigner/S;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    new-instance v7, Lcom/aide/uidesigner/T;

    invoke-direct {v7, p1, p2}, Lcom/aide/uidesigner/T;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    const/4 v3, 0x0

    const-string v4, "None"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_43

    const-wide v2, 0x22cb6c6e506d0a8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method private static DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x2cc1eaa18acf5130L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x13ca17b9408f4f7dL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    if-nez p3, :cond_16

    move-object v0, p4

    goto :goto_17

    :cond_16
    move-object v0, p3

    :goto_17
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
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_44

    const-wide v2, 0x13ca17b9408f4f7dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method private static varargs DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x24f7da4eee3afbbcL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x8203cfe0a18881fL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_26

    aget-object v3, p3, v2

    invoke-static {v3}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/fa;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/aide/uidesigner/fa;-><init>(Ljava/util/ArrayList;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v2}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return-void

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_4d

    const-wide v2, 0x8203cfe0a18881fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method private static EQ(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1cc75061a4a712f4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x6a881a107d7157L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_37

    :cond_18
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "View..."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "none"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/ca;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/uidesigner/ca;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :goto_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_4a

    const-wide v2, -0x6a881a107d7157L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
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
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1bab73df735aed97L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xc6eb3b089f7b7a8L  # -4.837873684589805E248

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const-string v0, "android:visibility"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_33

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "visible"

    aput-object v1, v0, v4

    const-string v1, "invisible"

    aput-object v1, v0, v3

    const-string v1, "gone"

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_33
    const-string v0, "android:orientation"

    iget-object v5, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v5, v5, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "horizontal"

    aput-object v1, v0, v4

    const-string v1, "vertical"

    aput-object v1, v0, v3

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_4e
    const-string v0, "android:typeface"

    iget-object v5, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v5, v5, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_72

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "normal"

    aput-object v5, v0, v4

    const-string v4, "sans"

    aput-object v4, v0, v3

    const-string v3, "serif"

    aput-object v3, v0, v2

    const-string v2, "monospace"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_72
    const-string v0, "android:alignmentMode"

    iget-object v6, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v6, v6, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "alignBounds"

    aput-object v1, v0, v4

    const-string v1, "alignMargins"

    aput-object v1, v0, v3

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_8d
    const-string v0, "android:textAlignment"

    iget-object v6, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v6, v6, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_97
    .catchall {:try_start_0 .. :try_end_97} :catchall_16d

    const/4 v6, 0x6

    const/4 v7, 0x5

    const-string v8, "center"

    const/4 v9, 0x7

    if-eqz v0, :cond_bf

    :try_start_9e
    new-array v0, v9, [Ljava/lang/String;

    const-string v9, "inherit"

    aput-object v9, v0, v4

    const-string v4, "gravity"

    aput-object v4, v0, v3

    const-string v3, "textStart"

    aput-object v3, v0, v2

    const-string v2, "textEnd"

    aput-object v2, v0, v1

    aput-object v8, v0, v5

    const-string v1, "viewStart"

    aput-object v1, v0, v7

    const-string v1, "viewEnd"

    aput-object v1, v0, v6

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_bf
    const-string v0, "android.view.Gravity"

    iget-object v10, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v10, v10, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v10, 0x8

    if-eqz v0, :cond_115

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v11, "top"

    aput-object v11, v0, v4

    const-string v4, "bottom"

    aput-object v4, v0, v3

    const-string v3, "left"

    aput-object v3, v0, v2

    const-string v2, "right"

    aput-object v2, v0, v1

    aput-object v8, v0, v5

    const-string v1, "center_vertical"

    aput-object v1, v0, v7

    const-string v1, "center_horizontal"

    aput-object v1, v0, v6

    const-string v1, "fill"

    aput-object v1, v0, v9

    const-string v1, "fill_vertical"

    aput-object v1, v0, v10

    const-string v1, "fill_horizontal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "clip_vertical"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "clip_horizontal"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "start"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "end"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto :goto_16c

    :cond_115
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;
    :try_end_119
    .catchall {:try_start_9e .. :try_end_119} :catchall_16d

    const-string v1, ""

    if-eqz v0, :cond_169

    :try_start_11d
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v0, v0, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    if-eqz v0, :cond_169

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v2, v2, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2
    :try_end_131
    .catchall {:try_start_11d .. :try_end_131} :catchall_16d

    :goto_131
    if-ge v4, v3, :cond_162

    aget-object v5, v2, v4

    :try_start_135
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/2addr v5, v10

    if-eqz v5, :cond_15f

    iget-object v5, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v5, v5, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15f

    iget-object v5, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v5, v5, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15f
    add-int/lit8 v4, v4, 0x1

    goto :goto_131

    :cond_162
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/util/List;)V

    goto :goto_16c

    :cond_169
    invoke-static {p0, p1, p2, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_16c
    .catchall {:try_start_135 .. :try_end_16c} :catchall_16d

    :goto_16c
    return-void

    :catchall_16d
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_17f

    const-wide v2, -0xc6eb3b089f7b7a8L  # -4.837873684589805E248

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17f
    goto :goto_181

    :goto_180
    throw v0

    :goto_181
    goto :goto_180
.end method

.method private static J8(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x766c5c073ee643cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0xd3032ce88b684dL

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_3e

    if-eqz v1, :cond_1f

    const-string v1, "设置大小..."

    goto :goto_21

    .line 99
    :cond_1f
    const-string v1, "Fixed size..."

    .line 0
    :goto_21
    const/4 v2, 0x3

    :try_start_22
    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Wrap Content"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Match Parent"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/O;

    invoke-direct {v2, p1, p2, p0}, Lcom/aide/uidesigner/O;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_3d
    .catchall {:try_start_22 .. :try_end_3d} :catchall_3e

    return-void

    .line 99
    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_50

    const-wide v2, 0xd3032ce88b684dL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method private static QX(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1382a49a2db647c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2e05f17128c4d987L  # -8.09917841583906E86

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const v0, 0x7f0d06f9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/aide/uidesigner/da;

    invoke-direct {v0, p1, p2, p0}, Lcom/aide/uidesigner/da;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/common/ab;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x2e05f17128c4d987L  # -8.09917841583906E86

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method

.method private static VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1de007bea29c8320L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2ed0a5e60b16a601L  # -1.1895795824142481E83

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    new-instance v3, Lcom/aide/uidesigner/ja;

    invoke-direct {v3, p1, p2}, Lcom/aide/uidesigner/ja;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/a4455jkjh/colorpicker/ColorPickerDialog;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a4455jkjh/colorpicker/ColorPickerDialog$a;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x2ed0a5e60b16a601L  # -1.1895795824142481E83

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method private static Ws(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x6e1f1552678f190L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x6039fc9c21a6214bL  # 3.4842545162917716E155

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const-string v0, "?android:attr/"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "?android:attr/textAppearanceSmall"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "?android:attr/textAppearanceMedium"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "?android:attr/textAppearanceLarge"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x6039fc9c21a6214bL  # 3.4842545162917716E155

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method private static Zo(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x3502e42216fa1e1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x3a38df311ac5e5a8L  # -1.4315635776210449E28

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "true"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "false"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x3a38df311ac5e5a8L  # -1.4315635776210449E28

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private static gn(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x4e82ac3a7e85167L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0xea66a897c3e1c8L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    if-nez v0, :cond_39

    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Color..."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Drawable..."

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "none"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/uidesigner/ga;

    invoke-direct {v2, p0, p1, p2}, Lcom/aide/uidesigner/ga;-><init>(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    invoke-static {p0, v0, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V

    goto :goto_4a

    :cond_39
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_4a

    :cond_47
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4b

    :goto_4a
    return-void

    :catchall_4b
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_5d

    const-wide v2, -0xea66a897c3e1c8L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v0
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

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x9ec93d40edf6764L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/uidesigner/ka;->j6:Lcom/aide/uidesigner/s;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/aide/uidesigner/s;->tp()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_34

    if-eqz v1, :cond_1e

    const-string v1, "选择名字"

    goto :goto_20

    .line 99
    :cond_1e
    const-string v1, "Choose Name"

    .line 0
    :goto_20
    :try_start_20
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_34

    if-eqz v2, :cond_29

    const-string v2, "输入图像的名称"

    goto :goto_2b

    .line 99
    :cond_29
    const-string v2, "Enter a name for the image"

    .line 0
    :goto_2b
    :try_start_2b
    new-instance v3, Lcom/aide/uidesigner/aa;

    invoke-direct {v3, p1}, Lcom/aide/uidesigner/aa;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v1, v2, v0, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_34

    :cond_33
    return-void

    .line 99
    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_45

    const-wide v2, 0x9ec93d40edf6764L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x15e4024f0262cb50L  # 3.190940544778505E-203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getViewID()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->EQ()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    move-object v5, v0

    new-instance v6, Lcom/aide/uidesigner/X;

    invoke-direct {v6, p1}, Lcom/aide/uidesigner/X;-><init>(Lcom/aide/uidesigner/s;)V

    new-instance v7, Lcom/aide/uidesigner/Y;

    invoke-direct {v7, p1}, Lcom/aide/uidesigner/Y;-><init>(Lcom/aide/uidesigner/s;)V

    const-string v2, "ID"

    const/4 v3, 0x0

    const-string v4, "None"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x15e4024f0262cb50L  # 3.190940544778505E-203

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, -0x11c5fdc19bcb9b41L  # -9.401486597941188E222

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_5f

    if-eqz v1, :cond_40

    const-string v1, "其他..."

    goto :goto_42

    .line 99
    :cond_40
    const-string v1, "other..."

    .line 0
    :goto_42
    :try_start_42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/aide/uidesigner/ia;

    move-object v1, v9

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/aide/uidesigner/ia;-><init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p0, v8, v0, v9}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_5f

    return-void

    .line 99
    :catchall_5f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_73

    const-wide v2, -0x11c5fdc19bcb9b41L  # -9.401486597941188E222

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_73
    goto :goto_75

    :goto_74
    throw v0

    :goto_75
    goto :goto_74
.end method

.method private static varargs j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1554877a97c3e160L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, -0xca0d74dc769f043L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/util/List;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0xca0d74dc769f043L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method

.method private static j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/util/List;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x51e6994d7aa4c001L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/aide/uidesigner/s;",
            "Lcom/aide/uidesigner/a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x4fdab55aca8fe8b8L  # 4.832224000050258E76

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x4fdab55aca8fe8b8L  # 4.832224000050258E76

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private static varargs j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x5dbccd80654beb91L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x4acb0c93bc69e700L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_26

    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_26
    iget-object v0, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v0}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    new-instance v6, Lcom/aide/uidesigner/ea;

    invoke-direct {v6, p1, p2}, Lcom/aide/uidesigner/ea;-><init>(Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_4f

    const-wide v2, -0x4acb0c93bc69e700L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method private static tp(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1a8a73cceb6cca25L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x134733c46edcb7d0L  # -5.3428106638745835E215

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    const-string v0, "android.widget.ImageView$ScaleType"

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4c

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "matrix"

    aput-object v6, v0, v5

    const-string v5, "fitXY"

    aput-object v5, v0, v4

    const-string v4, "fitStart"

    aput-object v4, v0, v2

    const-string v2, "fitCenter"

    aput-object v2, v0, v1

    const-string v1, "fitEnd"

    aput-object v1, v0, v3

    const-string v1, "center"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "centerCrop"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "centerInside"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto :goto_73

    :cond_4c
    const-string v0, "android.text.TextUtils$TruncateAt"

    iget-object v6, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v6, v6, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "start"

    aput-object v3, v0, v5

    const-string v3, "middle"

    aput-object v3, v0, v4

    const-string v3, "end"

    aput-object v3, v0, v2

    const-string v2, "marquee"

    aput-object v2, v0, v1

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;[Ljava/lang/String;)V

    goto :goto_73

    :cond_6e
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_0 .. :try_end_73} :catchall_74

    :goto_73
    return-void

    :catchall_74
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_86

    const-wide v2, -0x134733c46edcb7d0L  # -5.3428106638745835E215

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_86
    throw v0
.end method

.method private static u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xea2f45b06e3c7e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x1afaa7620e7ed00L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/aide/uidesigner/s;->getAllUserDrawables()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/aide/uidesigner/a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_6e

    if-eqz v1, :cond_42

    const-string v1, "其他..."

    goto :goto_44

    .line 99
    :cond_42
    const-string v1, "other..."

    .line 0
    :goto_44
    :try_start_44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_6e

    if-eqz v1, :cond_50

    const-string v1, "添加..."

    goto :goto_52

    .line 99
    :cond_50
    const-string v1, "add..."

    .line 0
    :goto_52
    :try_start_52
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    invoke-virtual {v1}, Lcom/aide/uidesigner/N$a;->j6()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/aide/uidesigner/ha;

    move-object v1, v8

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/aide/uidesigner/ha;-><init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-static {p0, v7, v0, v8}, Lcom/aide/common/ma;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_6d
    .catchall {:try_start_52 .. :try_end_6d} :catchall_6e

    return-void

    .line 99
    :catchall_6e
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_80

    const-wide v2, -0x1afaa7620e7ed00L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method public static v5(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x2c4b006a79078edL  # -1.744357945467141E295

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    sget-object v0, Lcom/aide/uidesigner/Z;->j6:[I

    iget-object v1, p2, Lcom/aide/uidesigner/a;->FH:Lcom/aide/uidesigner/N$a;

    iget-object v1, v1, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_60

    const-string v1, ""

    packed-switch v0, :pswitch_data_76

    goto :goto_32

    :pswitch_22  #0x10
    :try_start_22
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->Ws(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_26  #0xf
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->EQ(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_2a  #0xe
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->J0(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_2e  #0xd
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->tp(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :goto_32
    :pswitch_32  #0xb, 0xc
    invoke-static {p0, p1, p2, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_36  #0xa
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->Zo(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_3a  #0x9
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->J8(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_3e  #0x7, 0x8
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "10dp"

    :goto_42
    invoke-static {p0, p1, p2, v0, v1}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_46  #0x6
    iget-object v0, p2, Lcom/aide/uidesigner/a;->Hw:Ljava/lang/String;

    const-string v1, "10sp"

    goto :goto_42

    :pswitch_4b  #0x5
    const-string v0, "1"

    :goto_4d
    invoke-static {p0, p1, p2, v0}, Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    goto :goto_5f

    :pswitch_51  #0x4
    const-string v0, "1.0"

    goto :goto_4d

    :pswitch_54  #0x3
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->VH(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_58  #0x2
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_5f

    :pswitch_5c  #0x1
    invoke-static {p0, p1, p2}, Lcom/aide/uidesigner/ka;->gn(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    :try_end_5f
    .catchall {:try_start_22 .. :try_end_5f} :catchall_60

    :goto_5f
    return-void

    :catchall_60
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_72

    const-wide v2, -0x2c4b006a79078edL  # -1.744357945467141E295

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    goto :goto_74

    :goto_73
    throw v0

    :goto_74
    goto :goto_73

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5c  #00000001
        :pswitch_58  #00000002
        :pswitch_54  #00000003
        :pswitch_51  #00000004
        :pswitch_4b  #00000005
        :pswitch_46  #00000006
        :pswitch_3e  #00000007
        :pswitch_3e  #00000008
        :pswitch_3a  #00000009
        :pswitch_36  #0000000a
        :pswitch_32  #0000000b
        :pswitch_32  #0000000c
        :pswitch_2e  #0000000d
        :pswitch_2a  #0000000e
        :pswitch_26  #0000000f
        :pswitch_22  #00000010
    .end packed-switch
.end method

.method private static we(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x425c66c106eb18L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ka;->FH:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x41dca39f935f3489L  # 1.9219410694875815E9

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
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
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ka;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x41dca39f935f3489L  # 1.9219410694875815E9

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method
