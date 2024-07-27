.class Lcom/blankj/utilcode/util/ReflectUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->proxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ReflectUtils;

.field final val$isMap:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;Z)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    iput-boolean p2, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const/4 v6, 0x3

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/blankj/utilcode/util/ReflectUtils$ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->val$isMap:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$3;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->access$100(Lcom/blankj/utilcode/util/ReflectUtils;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez p3, :cond_0

    move v2, v3

    :goto_1
    if-nez v2, :cond_1

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    array-length v2, p3

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    throw v1
.end method
