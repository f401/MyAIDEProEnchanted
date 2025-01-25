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

    sget-boolean v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->DW:Z

    const-string v1, "DrawableCompatApi17"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_24

    :try_start_8
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Landroid/graphics/drawable/Drawable;

    const-string v5, "setLayoutDirection"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    sput-boolean v3, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->DW:Z

    :cond_24
    sget-object v0, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3d

    :try_start_28
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_34

    return v3

    :catch_34
    move-exception p1

    const-string p2, "Failed to invoke setLayoutDirection(int) via reflection"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    sput-object p1, Labcd/as/graphics/drawable/DrawableCompat$MDrawableImpl;->j6:Ljava/lang/reflect/Method;

    :cond_3d
    return v2
.end method
