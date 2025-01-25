.class public Lcom/termux/yinli_a/k/b/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/termux/yinli_a/k/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/yinli_a/k/b/f;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_c} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_c} :catch_11
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_c} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    goto :goto_14

    :catch_f
    move-exception v0

    goto :goto_14

    :catch_11
    move-exception v0

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_18

    goto :goto_1d

    :cond_18
    new-instance v0, Lcom/termux/yinli_a/k/b/f;

    invoke-direct {v0}, Lcom/termux/yinli_a/k/b/f;-><init>()V

    :goto_1d
    sput-object v0, Lcom/termux/yinli_a/k/b/e;->a:Lcom/termux/yinli_a/k/b/f;

    return-void
.end method

.method public static a(Lcom/termux/yinli_a/k/b/d;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/termux/yinli_a/k/b/e;->a:Lcom/termux/yinli_a/k/b/f;

    invoke-virtual {v0, p0}, Lcom/termux/yinli_a/k/b/f;->a(Lcom/termux/yinli_a/k/b/d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
