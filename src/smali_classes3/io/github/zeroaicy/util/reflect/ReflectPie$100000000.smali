.class Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;
.super Ljava/lang/Object;
.source "ReflectPie.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

.field private final val$isMap:Z


# direct methods
.method constructor <init>(Lio/github/zeroaicy/util/reflect/ReflectPie;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    iput-boolean p2, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->val$isMap:Z

    return-void
.end method

.method static access$0(Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    .registers 2

    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 717
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 721
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$L1000005(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$L1000006(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$1000004(Ljava/lang/Class;Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lio/github/zeroaicy/util/reflect/ReflectPieException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    .line 721
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 723
    iget-boolean v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->val$isMap:Z

    if-eqz v0, :cond_3

    .line 724
    iget-object v0, p0, Lio/github/zeroaicy/util/reflect/ReflectPie$100000000;->this$0:Lio/github/zeroaicy/util/reflect/ReflectPie;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$L1000006(Lio/github/zeroaicy/util/reflect/ReflectPie;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 725
    if-nez p3, :cond_0

    move v2, v3

    .line 727
    :goto_1
    if-nez v2, :cond_1

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 728
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$1000014(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_0
    array-length v2, p3

    goto :goto_1

    .line 730
    :cond_1
    if-nez v2, :cond_2

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 731
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$1000014(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 733
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 734
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->access$1000014(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    goto :goto_0

    .line 763
    :cond_3
    throw v1
.end method
