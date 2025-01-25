.class final Lcom/termux/yinli_a/i/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/yinli_a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field public static final a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/termux/yinli_a/i/a$a;

    invoke-direct {v0}, Lcom/termux/yinli_a/i/a$a;-><init>()V

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "throwableClass.methods"

    invoke-static {v0, v1}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_42

    aget-object v3, v0, v2

    const-string v4, "it"

    invoke-static {v3, v4}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "addSuppressed"

    invoke-static {v4, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const-string v5, "it.parameterTypes"

    invoke-static {v4, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/termux/yinli_a/h/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v4, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_43

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_42
    const/4 v3, 0x0

    :goto_43
    sput-object v3, Lcom/termux/yinli_a/i/a$a;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
