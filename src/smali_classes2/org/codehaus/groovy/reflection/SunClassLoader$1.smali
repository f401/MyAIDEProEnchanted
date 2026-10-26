.class final Lorg/codehaus/groovy/reflection/SunClassLoader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/SunClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Lorg/codehaus/groovy/reflection/SunClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/groovy/reflection/SunClassLoader$1;->run()Lorg/codehaus/groovy/reflection/SunClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/codehaus/groovy/reflection/SunClassLoader;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/codehaus/groovy/reflection/SunClassLoader;

    invoke-direct {v0}, Lorg/codehaus/groovy/reflection/SunClassLoader;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
