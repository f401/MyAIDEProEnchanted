.class Landroidj/support/v4/view/LayoutInflaterCompatHC;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 7

    const/4 v4, 0x1

    sget-boolean v0, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    if-nez v0, :cond_17

    :try_start_5
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    sget-object v0, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_21

    :goto_15
    sput-boolean v4, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    :cond_17
    sget-object v0, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_20

    :try_start_1b
    sget-object v0, Landroidj/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_20} :catch_47

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string v1, "LayoutInflaterCompatHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/view/LayoutInflater;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_47
    move-exception v0

    const-string v1, "LayoutInflaterCompatHC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; inflation may have unexpected results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroidj/support/v4/view/LayoutInflaterFactory;)V
    .registers 5

    if-eqz p1, :cond_19

    new-instance v0, Landroidj/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;

    invoke-direct {v0, p1}, Landroidj/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroidj/support/v4/view/LayoutInflaterFactory;)V

    move-object v1, v0

    :goto_8
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_1c

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-static {p0, v0}, Landroidj/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    :goto_18
    return-void

    :cond_19
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_8

    :cond_1c
    invoke-static {p0, v1}, Landroidj/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_18
.end method
