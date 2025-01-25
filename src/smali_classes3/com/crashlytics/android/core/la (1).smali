.class Lcom/crashlytics/android/core/la;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/ma;->j6(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lcom/crashlytics/android/core/ma;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ma;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/la;->j6:Lcom/crashlytics/android/core/ma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p3, :cond_9

    new-array p3, v0, [Ljava/lang/Object;

    :cond_9
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    const-string v1, "equals"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    aget-object p2, p3, v0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/core/la;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_20
    array-length p1, p3

    if-nez p1, :cond_34

    const-string p1, "hashCode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_34
    array-length p1, p3

    if-nez p1, :cond_44

    const-string p1, "toString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_44
    array-length p1, p3

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne p1, v1, :cond_78

    const-string p1, "onEvent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    invoke-static {p3}, Lcom/crashlytics/android/core/ma;->j6([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    aget-object v1, p3, v2

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz p1, :cond_78

    const-string v4, "crash"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    iget-object p1, p0, Lcom/crashlytics/android/core/la;->j6:Lcom/crashlytics/android/core/ma;

    invoke-static {p1}, Lcom/crashlytics/android/core/ma;->j6(Lcom/crashlytics/android/core/ma;)Lcom/crashlytics/android/core/ca;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/crashlytics/android/core/ma;->j6(Lcom/crashlytics/android/core/ca;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3

    :cond_78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected method invoked on AppMeasurement.EventListener: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_93
    array-length p1, p3

    if-ge v0, p1, :cond_ad

    if-lez v0, :cond_9d

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9d
    aget-object p1, p3, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    :cond_ad
    const-string p1, "); returning null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p3, "CrashlyticsCore"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {p2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method
