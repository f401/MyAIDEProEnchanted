.class public Lcom/sun/tools/javac/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Z)V
    .registers 1

    .line 44
    if-nez p0, :cond_0

    .line 45
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 46
    :cond_0
    return-void
.end method

.method public static check(ZI)V
    .registers 3

    .line 69
    if-nez p0, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public static check(ZJ)V
    .registers 4

    .line 77
    if-nez p0, :cond_0

    .line 78
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public static check(ZLjava/lang/Object;)V
    .registers 3

    .line 85
    if-nez p0, :cond_0

    .line 86
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static check(ZLjava/lang/String;)V
    .registers 2

    .line 93
    if-nez p0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method public static checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 60
    if-nez p0, :cond_0

    .line 61
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 62
    :cond_0
    return-object p0
.end method

.method public static checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 117
    if-nez p0, :cond_0

    .line 118
    invoke-static {p1}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-object p0
.end method

.method public static checkNull(Ljava/lang/Object;)V
    .registers 1

    .line 52
    if-eqz p0, :cond_0

    .line 53
    invoke-static {}, Lcom/sun/tools/javac/util/Assert;->error()V

    .line 54
    :cond_0
    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 109
    if-eqz p0, :cond_0

    .line 110
    invoke-static {p1}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public static error()V
    .registers 1

    .line 126
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static error(Ljava/lang/String;)V
    .registers 2

    .line 133
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
