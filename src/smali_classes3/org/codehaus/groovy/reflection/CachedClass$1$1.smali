.class Lorg/codehaus/groovy/reflection/CachedClass$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/reflection/CachedClass$1;->Hw()[Lorg/codehaus/groovy/reflection/CachedField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/reflection/CachedClass$1;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass$1;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$1$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass$1$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$1;

    iget-object v0, v0, Lorg/codehaus/groovy/reflection/CachedClass$1;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    return-object v0
.end method
