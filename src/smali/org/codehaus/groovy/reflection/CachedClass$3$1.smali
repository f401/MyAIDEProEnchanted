.class Lorg/codehaus/groovy/reflection/CachedClass$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/reflection/CachedClass$3;->Hw()[Lorg/codehaus/groovy/reflection/CachedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/reflection/CachedClass$3;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass$3;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$3$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass$3$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$3;

    iget-object v0, v0, Lorg/codehaus/groovy/reflection/CachedClass$3;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
