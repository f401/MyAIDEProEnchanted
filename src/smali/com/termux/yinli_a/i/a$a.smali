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
    .locals 6

    new-instance v0, Lcom/termux/yinli_a/i/a$a;

    invoke-direct {v0}, Lcom/termux/yinli_a/i/a$a;-><init>()V

    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v0, "throwableClass.methods"

    invoke-static {v3, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    const-string v0, "it"

    invoke-static {v1, v0}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "addSuppressed"

    invoke-static {v0, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string v5, "it.parameterTypes"

    invoke-static {v0, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/termux/yinli_a/h/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    invoke-static {v0, v5}, Lcom/termux/yinli_a/k/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/termux/yinli_a/i/a$a;->a:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
