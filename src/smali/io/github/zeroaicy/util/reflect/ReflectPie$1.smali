.class Lio/github/zeroaicy/util/reflect/ReflectPie$1;
.super Ljava/lang/Object;
.source "ReflectPie.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/zeroaicy/util/reflect/ReflectPie;->as(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

.field final val$isMap:Z


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/reflect/ReflectPie;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 683
    iput-object p1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    iput-boolean p2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 686
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 690
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgettype(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smon(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lio/github/zeroaicy/util/reflect/ReflectPieException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 690
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 692
    iget-boolean v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->val$isMap:Z

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez p3, :cond_0

    move v2, v3

    .line 694
    :goto_1
    if-nez v2, :cond_1

    .line 696
    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 697
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 694
    :cond_0
    array-length v2, p3

    goto :goto_1

    .line 697
    :cond_1
    if-nez v2, :cond_2

    .line 699
    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 700
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 702
    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    .line 732
    :cond_3
    throw v1
.end method
