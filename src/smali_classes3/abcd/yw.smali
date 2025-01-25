.class public Labcd/yw;
.super Ljava/lang/Object;


# static fields
.field private static DW:Ljava/lang/reflect/Method;

.field private static j6:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-nez v0, :cond_77

    :try_start_6
    const-string v0, "com.crashlytics.android.Crashlytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Labcd/yw;->j6:Ljava/lang/reflect/Method;

    const-string v1, "logException"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Labcd/yw;->DW:Ljava/lang/reflect/Method;

    const-string v1, "io.fabric.sdk.android.Fabric"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "with"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v3, v4

    const-string v7, "[Labcd/io.fabric.sdk.android.Kit;"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    if-eqz v2, :cond_70

    const-string v3, "io.fabric.sdk.android.Kit"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v3, v0, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    :cond_70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_76
    .catchall {:try_start_6 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v0

    :cond_77
    :goto_77
    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Labcd/yw;->DW:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_16

    const/4 v0, 0x7

    invoke-static {v0, p0}, Labcd/yw;->j6(ILjava/lang/String;)V

    :try_start_8
    sget-object p0, Labcd/yw;->DW:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_16

    :catchall_15
    move-exception p0

    :cond_16
    :goto_16
    return-void
.end method

.method private static j6(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Labcd/yw;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "BACKBONE"

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_1c

    :catchall_1b
    move-exception p0

    :cond_1c
    :goto_1c
    return-void
.end method

.method private static j6(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p0, p1}, Labcd/yw;->j6(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/yw;->j6(ILjava/lang/String;)V

    return-void
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BACKBONE"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Labcd/yw;->j6(ILjava/lang/String;)V

    :goto_36
    return-void
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "BACKBONE"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Labcd/yw;->j6(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_36
    return-void
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "BACKBONE"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Labcd/sw;->j6()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0, p1}, Labcd/yw;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method
