.class public Lcom/aide/ui/build/android/P;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2ca1bbdde08a6358L
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

.field private static j6:Ljava/lang/reflect/Method;
    .annotation runtime Labcd/ru;
        field = 0xdff898ce8094a0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/P;

    const-wide v1, 0x15969c6186e4d0e7L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xf8c89dce7cb1a39L  # -4.8342862297619795E233

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/P;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/P;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/P;->FH:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x38c5e3350d937c70L  # 3.2932692276158806E-35

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    sget-object v0, Lcom/aide/ui/build/android/P;->j6:Ljava/lang/reflect/Method;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_8e

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v0, :cond_62

    :try_start_1c
    const-string v0, "merger"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->DW()Labcd/vj;

    move-result-object v7

    invoke-virtual {v7}, Labcd/vj;->v5()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ldalvik/system/DexClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v8, v7, v0, v5, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v0, "com.aide.merger.AndroidManifestMerger"

    invoke-virtual {v8, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v7, "merge"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v2

    const-class v9, [Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/aide/ui/build/android/P;->j6:Ljava/lang/reflect/Method;
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_58

    goto :goto_62

    :catchall_58
    move-exception v0

    :try_start_59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aide/ui/build/android/P;->DW:Ljava/lang/String;

    :cond_62
    :goto_62
    sget-object v0, Lcom/aide/ui/build/android/P;->j6:Ljava/lang/reflect/Method;

    if-nez v0, :cond_69

    sget-object p0, Lcom/aide/ui/build/android/P;->DW:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_59 .. :try_end_68} :catchall_8e

    return-object p0

    :cond_69
    :try_start_69
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v3

    aput-object p3, v4, v2

    aput-object p4, v4, v1

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_7a

    return-object v0

    :catchall_7a
    move-exception v0

    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_89
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8d
    .catchall {:try_start_7b .. :try_end_8d} :catchall_8e

    :goto_8d
    return-object p0

    :catchall_8e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/P;->Hw:Z

    if-eqz v1, :cond_a2

    const-wide v2, 0x38c5e3350d937c70L  # 3.2932692276158806E-35

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a2
    throw v0
.end method
