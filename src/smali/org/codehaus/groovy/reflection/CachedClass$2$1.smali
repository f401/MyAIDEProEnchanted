.class Lorg/codehaus/groovy/reflection/CachedClass$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/reflection/CachedClass$2;->Hw()[Lorg/codehaus/groovy/reflection/CachedConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/reflection/CachedClass$2;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/reflection/CachedClass$2;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/reflection/CachedClass$2$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/CachedClass$2$1;->j6:Lorg/codehaus/groovy/reflection/CachedClass$2;

    iget-object v0, v0, Lorg/codehaus/groovy/reflection/CachedClass$2;->Zo:Lorg/codehaus/groovy/reflection/CachedClass;

    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/CachedClass;->VH()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
