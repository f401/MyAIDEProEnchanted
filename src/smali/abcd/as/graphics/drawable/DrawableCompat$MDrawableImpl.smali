.class Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;
.super Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/as/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDrawableImpl"
.end annotation


# static fields
.field private static DW:Z

.field private static j6:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/as/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-boolean v2, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->DW:Z

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Landroid/graphics/drawable/Drawable;

    const-string v4, "setLayoutDirection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    sget-object v2, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->DW:Z

    :cond_0
    sget-object v2, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    :catch_0
    move-exception v2

    const-string v3, "DrawableCompatApi17"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DrawableCompatApi17"

    const-string v3, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    :cond_1
    move v0, v1

    goto :goto_1
.end method
