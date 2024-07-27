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
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sput-object v0, Lcom/termux/yinli_a/k/b/e;->a:Lcom/termux/yinli_a/k/b/f;

    return-void

    :catch_0
    move-exception v0

    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/termux/yinli_a/k/b/f;

    invoke-direct {v0}, Lcom/termux/yinli_a/k/b/f;-><init>()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lcom/termux/yinli_a/k/b/d;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/termux/yinli_a/k/b/e;->a:Lcom/termux/yinli_a/k/b/f;

    invoke-virtual {v0, p0}, Lcom/termux/yinli_a/k/b/f;->a(Lcom/termux/yinli_a/k/b/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
