.class public Lorg/codehaus/groovy/reflection/CachedConstructor;
.super Lorg/codehaus/groovy/reflection/ParameterTypes;


# instance fields
.field public final DW:Ljava/lang/reflect/Constructor;

.field j6:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Ljava/lang/reflect/Constructor;)V
    .registers 4

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ParameterTypes;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/CachedConstructor;->DW:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedConstructor;->j6:Lorg/codehaus/groovy/reflection/CachedClass;

    :try_start_0
    new-instance v0, Lorg/codehaus/groovy/reflection/CachedConstructor$1;

    invoke-direct {v0, p0, p2}, Lorg/codehaus/groovy/reflection/CachedConstructor$1;-><init>(Lorg/codehaus/groovy/reflection/CachedConstructor;Ljava/lang/reflect/Constructor;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
