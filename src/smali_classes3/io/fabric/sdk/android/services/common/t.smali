.class final Lio/fabric/sdk/android/services/common/t;
.super Ljava/lang/Object;

# interfaces
.implements Lio/fabric/sdk/android/services/common/s;


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final j6:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/t;->DW:Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Class;

    const-string v0, "isDataCollectionDefaultEnabled"

    invoke-virtual {p1, v0, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/t;->j6:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/s;
    .registers 6

    const-string v0, "Fabric"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.google.firebase.FirebaseApp"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-instance v1, Lio/fabric/sdk/android/services/common/t;

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/fabric/sdk/android/services/common/t;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_20} :catch_4a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_20} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Unexpected error loading FirebaseApp instance."

    invoke-interface {v1, v0, v2, p0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_54

    :catch_2c
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :catch_4a
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string v1, "Could not find class: com.google.firebase.FirebaseApp"

    invoke-interface {p0, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j6()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/t;->j6:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/t;->DW:Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Cannot check isDataCollectionDefaultEnabled on FirebaseApp."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
