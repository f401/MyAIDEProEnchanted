.class public final Labcd/kw;
.super Ldalvik/system/DexClassLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/kw$a;
    }
.end annotation


# instance fields
.field private final j6:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-boolean p5, p0, Labcd/kw;->j6:Z

    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .registers 3

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    iget-boolean v0, p0, Labcd/kw;->j6:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ldalvik/system/DexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, 0x0

    :goto_25
    return-object p1
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p0}, Ldalvik/system/DexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Labcd/kw;->j6:Z

    if-nez v2, :cond_19

    goto :goto_22

    :cond_19
    invoke-virtual {p0}, Ldalvik/system/DexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, 0x0

    :goto_23
    new-instance v2, Labcd/kw$a;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/Enumeration;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Labcd/kw$a;-><init>([Ljava/util/Enumeration;)V

    return-object v2
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    :cond_7
    :try_start_7
    const-class p2, Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    move-exception p2

    :try_start_13
    invoke-virtual {p0, p1}, Ldalvik/system/DexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    return-object p1

    :catch_18
    move-exception p2

    :try_start_19
    invoke-virtual {p0}, Ldalvik/system/DexClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_21} :catch_22

    return-object p1

    :catch_22
    move-exception p1

    throw p2
.end method
