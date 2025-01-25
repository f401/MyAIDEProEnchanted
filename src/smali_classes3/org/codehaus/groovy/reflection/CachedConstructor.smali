.class public Lorg/codehaus/groovy/reflection/CachedConstructor;
.super Lorg/codehaus/groovy/reflection/ParameterTypes;


# instance fields
.field public final DW:Ljava/lang/reflect/Constructor;

.field j6:Lorg/codehaus/groovy/reflection/CachedClass;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass;Ljava/lang/reflect/Constructor;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/ParameterTypes;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/reflection/CachedConstructor;->DW:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedConstructor;->j6:Lorg/codehaus/groovy/reflection/CachedClass;

    :try_start_7
    new-instance p1, Lorg/codehaus/groovy/reflection/CachedConstructor$1;

    invoke-direct {p1, p0, p2}, Lorg/codehaus/groovy/reflection/CachedConstructor$1;-><init>(Lorg/codehaus/groovy/reflection/CachedConstructor;Ljava/lang/reflect/Constructor;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception p1

    :goto_11
    return-void
.end method
