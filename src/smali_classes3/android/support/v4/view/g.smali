.class public final Landroid/support/v4/view/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/g$a;,
        Landroid/support/v4/view/g$b;
    }
.end annotation


# static fields
.field private static DW:Z

.field static final FH:Landroid/support/v4/view/g$b;

.field private static j6:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    new-instance v0, Landroid/support/v4/view/g$a;

    invoke-direct {v0}, Landroid/support/v4/view/g$a;-><init>()V

    goto :goto_11

    :cond_c
    new-instance v0, Landroid/support/v4/view/g$b;

    invoke-direct {v0}, Landroid/support/v4/view/g$b;-><init>()V

    :goto_11
    sput-object v0, Landroid/support/v4/view/g;->FH:Landroid/support/v4/view/g$b;

    return-void
.end method

.method public static DW(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 3

    sget-object v0, Landroid/support/v4/view/g;->FH:Landroid/support/v4/view/g$b;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/g$b;->j6(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method static j6(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 8

    sget-boolean v0, Landroid/support/v4/view/g;->DW:Z

    const-string v1, "LayoutInflaterCompatHC"

    const-string v2, "; inflation may have unexpected results."

    if-nez v0, :cond_37

    const/4 v0, 0x1

    :try_start_9
    const-class v3, Landroid/view/LayoutInflater;

    const-string v4, "mFactory2"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/view/g;->j6:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_35

    :catch_17
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Landroid/view/LayoutInflater;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    sput-boolean v0, Landroid/support/v4/view/g;->DW:Z

    :cond_37
    sget-object v0, Landroid/support/v4/view/g;->j6:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_57

    :try_start_3b
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_57

    :catch_3f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_57
    :goto_57
    return-void
.end method
