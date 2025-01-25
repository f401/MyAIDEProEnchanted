.class Lcom/caverock/androidsvg/CanvasLegacy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/SuppressWarnings;
    value = "JavaReflectionMemberAccess"
.end annotation


# static fields
.field static final MATRIX_SAVE_FLAG:I

.field private static final SAVE:Ljava/lang/reflect/Method;


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    :try_start_0
    const-string v0, "android.graphics.Canvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_3d

    move-result-object v0

    :try_start_6
    const-string v1, "MATRIX_SAVE_FLAG"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/caverock/androidsvg/CanvasLegacy;->MATRIX_SAVE_FLAG:I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_3d

    :try_start_1b
    const-string v0, "android.graphics.Canvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_20} :catch_43
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_3d

    move-result-object v0

    :try_start_21
    const-string v1, "save"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/caverock/androidsvg/CanvasLegacy;->SAVE:Ljava/lang/reflect/Method;

    return-void

    :catch_32
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v0

    invoke-static {v0}, Lcom/caverock/androidsvg/CanvasLegacy;->sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_4e} :catch_3d
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static save(Landroid/graphics/Canvas;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "I)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/caverock/androidsvg/CanvasLegacy;->SAVE:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    invoke-static {v0}, Lcom/caverock/androidsvg/CanvasLegacy;->sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 3

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "t"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p0}, Lcom/caverock/androidsvg/CanvasLegacy;->sneakyThrow0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    return-object v0
.end method

.method private static sneakyThrow0(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/SuppressWarnings;
        value = "unchecked"
    .end annotation

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
