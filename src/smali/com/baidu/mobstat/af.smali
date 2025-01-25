.class public Lcom/baidu/mobstat/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/af$a;
    }
.end annotation


# direct methods
.method public static a([B)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/baidu/mobstat/ax;->a()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v0, p0}, Lcom/baidu/mobstat/at;->b([B[B[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0
.end method
