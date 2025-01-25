.class public Labcd/H;
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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/H;

    const-wide v1, -0x8c455eadbb71f9fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x58f4a426b55ee4fL  # 6.73349728291942E-282

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static varargs DW(Landroid/content/Context;Ljava/lang/String;[D)I
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x737f317d2f8ad01L  # -6.505320527143388E273

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0}, Labcd/H;->DW(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {p2}, Labcd/H;->j6([D)I

    move-result v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1, v1}, Labcd/H;->j6(Ljava/lang/String;I)V

    :cond_2b
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return p0

    :catchall_31
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_43

    const-wide v2, -0x737f317d2f8ad01L  # -6.505320527143388E273

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v0
.end method

.method private static DW(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x137bacfb00146819L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x19b7afe871727960L  # 8.710344018773871E-185

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "SplitTests"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method private static DW(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2defe3447020d090L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2274eb118a3fa5c3L  # -4.1280496235612877E142

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    add-int/lit8 v3, p0, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static DW(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x141f04af01c8e503L  # -4.466303703253202E211

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v0, 0x2

    invoke-static {v0}, Labcd/H;->j6(I)[D

    move-result-object v0

    invoke-static {p0, p1, v0}, Labcd/H;->DW(Landroid/content/Context;Ljava/lang/String;[D)I

    move-result p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1c

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x141f04af01c8e503L  # -4.466303703253202E211

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1bf4d2e6fb820800L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x3ce9d9a405b412c1L  # 2.8699441746833417E-15

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {p0}, Labcd/H;->j6(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2a

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, v1, :cond_3b

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    :cond_3b
    return v3

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x3ce9d9a405b412c1L  # 2.8699441746833417E-15

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method private static FH(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x217ca7da861f2260L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xb4fdff27ba4424fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, 0xb4fdff27ba4424fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private static Hw(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3ea94e880c44d618L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0xa4f2d098175faedL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/H;->DW(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v2, v1}, Labcd/H;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3e

    goto :goto_1d

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0xa4f2d098175faedL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    goto :goto_51

    :goto_50
    throw v0

    :goto_51
    goto :goto_50
.end method

.method private static varargs j6([D)I
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x302a789fa26ba10L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x145725a90819ec5dL  # -4.0852992651033836E210

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :goto_19
    array-length v8, p0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_2e

    if-ge v5, v8, :cond_27

    aget-wide v8, p0, v5

    add-double/2addr v6, v8

    cmpl-double v8, v6, v3

    if-ltz v8, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_27
    :goto_27
    :try_start_27
    array-length v3, p0

    if-ne v5, v3, :cond_2d

    array-length p0, p0
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2e

    add-int/lit8 v5, p0, -0x1

    :cond_2d
    return v5

    :catchall_2e
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_36

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    goto :goto_38

    :goto_37
    throw v3

    :goto_38
    goto :goto_37
.end method

.method private static j6(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x136d01c08935dea1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1a9730eceed10bc4L

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "Conversions"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_1d

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v3
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x460cee7b6e2af777L  # -1.5042338242885956E-29

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0, p1}, Labcd/H;->v5(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0, p1}, Labcd/H;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Labcd/H;->Hw(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x460cee7b6e2af777L  # -1.5042338242885956E-29

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2e65fb6bf559faefL  # -1.2636033440750196E85

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {p0}, Labcd/H;->DW(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1, p2}, Labcd/H;->j6(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, -0x2e65fb6bf559faefL  # -1.2636033440750196E85

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 12

    const-string v0, "_"

    :try_start_2
    sget-boolean v1, Labcd/H;->j6:Z

    if-eqz v1, :cond_16

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x1bd947e622342024L

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p0, p1}, Labcd/H;->v5(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_69

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    const-wide/16 v3, 0x18

    div-long v3, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "days"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Labcd/H;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v3}, Labcd/H;->Hw(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "hours"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Labcd/H;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Labcd/H;->Hw(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_2 .. :try_end_69} :catchall_6a

    :cond_69
    return-void

    :catchall_6a
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x1bd947e622342024L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    throw v0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1fa04786549e75dcL
    .end annotation

    const-string v0, "_"

    :try_start_2
    sget-boolean v1, Labcd/H;->j6:Z

    if-eqz v1, :cond_17

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x48e0acda163d066bL  # 1.1620920233519303E43

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/H;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_53

    const-wide v2, 0x48e0acda163d066bL  # 1.1620920233519303E43

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    throw v0
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x8a5c50532cd56e0L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {p0, p1, p2}, Labcd/H;->DW(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0, p1}, Labcd/H;->FH(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p1}, Labcd/H;->Hw(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x8a5c50532cd56e0L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private static j6(Ljava/lang/String;I)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x45bfbeb27298acdfL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3e0aaa91e2f9191cL  # 7.760911409586391E-10

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/H;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x3e0aaa91e2f9191cL  # 7.760911409586391E-10

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method

.method public static varargs j6(Landroid/content/Context;Ljava/lang/String;[D)Z
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x571894db845ae240L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0, p1, p2}, Labcd/H;->DW(Landroid/content/Context;Ljava/lang/String;[D)I

    move-result p0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_1a

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x571894db845ae240L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method private static j6(I)[D
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x15e046db3235f8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2ffbcc82b6bc4fb9L  # 1.500473268379667E-77

    :try_start_6
    sget-boolean v3, Labcd/H;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    new-array v0, p0, [D
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_22

    const/4 v1, 0x0

    :goto_10
    if-ge v1, p0, :cond_21

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    return-object v0

    :catchall_22
    move-exception v3

    sget-boolean v4, Labcd/H;->DW:Z

    if-eqz v4, :cond_2f

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v3

    :goto_31
    goto :goto_30
.end method

.method private static v5(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x18fdc947f395e49L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/H;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x280a2d56d406a718L  # -5.374161243458792E115

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Labcd/H;->j6(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_25

    return v3

    :cond_24
    return v1

    :catchall_25
    move-exception v0

    sget-boolean v1, Labcd/H;->DW:Z

    if-eqz v1, :cond_36

    const-wide v2, -0x280a2d56d406a718L  # -5.374161243458792E115

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v0
.end method
