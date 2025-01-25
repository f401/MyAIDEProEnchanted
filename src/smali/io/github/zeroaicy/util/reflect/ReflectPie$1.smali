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
    .registers 3
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
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 686
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 690
    :try_start_4
    iget-object p2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgettype(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smon(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object p2

    invoke-virtual {p2}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catch Lio/github/zeroaicy/util/reflect/ReflectPieException; {:try_start_4 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p2

    .line 692
    iget-boolean v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->val$isMap:Z

    if-eqz v0, :cond_7a

    .line 693
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$1;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$fgetobject(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez p3, :cond_2f

    const/4 v2, 0x0

    goto :goto_30

    .line 694
    :cond_2f
    array-length v2, p3

    :goto_30
    const/4 v3, 0x3

    if-nez v2, :cond_48

    .line 696
    const-string v4, "get"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 697
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_48
    if-nez v2, :cond_60

    .line 699
    const-string v4, "is"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 700
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_60
    const/4 v4, 0x1

    if-ne v2, v4, :cond_7a

    .line 702
    const-string v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 703
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->-$$Nest$smproperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aget-object p2, p3, v1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1

    .line 732
    :cond_7a
    throw p2
.end method
