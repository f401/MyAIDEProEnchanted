.class public final Lcom/google/android/gms/internal/ads/it;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/it$a;
    }
.end annotation


# static fields
.field private static final DW:I

.field private static final j6:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/it;->j6()Ljava/lang/Integer;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    if-eqz v1, :cond_15

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_15

    new-instance v2, Lcom/google/android/gms/internal/ads/nt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/nt;-><init>()V

    goto :goto_63

    :cond_15
    const-string v2, "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_24

    new-instance v2, Lcom/google/android/gms/internal/ads/mt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/mt;-><init>()V

    goto :goto_63

    :cond_24
    new-instance v2, Lcom/google/android/gms/internal/ads/it$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/it$a;-><init>()V
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2a

    goto :goto_63

    :catchall_2a
    move-exception v2

    goto :goto_2e

    :catchall_2c
    move-exception v2

    const/4 v1, 0x0

    :goto_2e
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-class v4, Lcom/google/android/gms/internal/ads/it$a;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, 0x84

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "will be used. The error is: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/it$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/it$a;-><init>()V

    :goto_63
    sput-object v2, Lcom/google/android/gms/internal/ads/it;->j6:Lcom/google/android/gms/internal/ads/jt;

    if-nez v1, :cond_68

    goto :goto_6c

    :cond_68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6c
    sput v0, Lcom/google/android/gms/internal/ads/it;->DW:I

    return-void
.end method

.method private static j6()Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.Build$VERSION"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v1

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    return-object v0
.end method

.method public static j6(Ljava/lang/Throwable;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/it;->j6:Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/jt;->j6(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j6(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/it;->j6:Lcom/google/android/gms/internal/ads/jt;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jt;->j6(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    return-void
.end method
