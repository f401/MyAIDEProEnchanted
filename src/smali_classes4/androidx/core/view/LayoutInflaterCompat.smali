.class public final Landroidx/core/view/LayoutInflaterCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    if-nez v0, :cond_15

    :try_start_5
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_13} :catch_1d

    :goto_13
    sput-boolean v3, Landroidx/core/view/LayoutInflaterCompat;->sCheckedField:Z

    :cond_15
    sget-object v0, Landroidx/core/view/LayoutInflaterCompat;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1c

    :try_start_19
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_1c} :catch_40

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LayoutInflaterCompatHC"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :catch_40
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LayoutInflaterCompatHC"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public static getFactory(Landroid/view/LayoutInflater;)Landroidx/core/view/LayoutInflaterFactory;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    if-eqz v1, :cond_d

    check-cast v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    iget-object v0, v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;->mDelegateFactory:Landroidx/core/view/LayoutInflaterFactory;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static setFactory(Landroid/view/LayoutInflater;Landroidx/core/view/LayoutInflaterFactory;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_12

    if-eqz p1, :cond_e

    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    :cond_e
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    :goto_11
    return-void

    :cond_12
    if-eqz p1, :cond_2f

    new-instance v0, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;

    invoke-direct {v0, p1}, Landroidx/core/view/LayoutInflaterCompat$Factory2Wrapper;-><init>(Landroidx/core/view/LayoutInflaterFactory;)V

    move-object v1, v0

    :goto_1a
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_2b

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_11

    :cond_2b
    invoke-static {p0, v1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_11

    :cond_2f
    move-object v1, v0

    goto :goto_1a
.end method

.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_17

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_16
.end method
