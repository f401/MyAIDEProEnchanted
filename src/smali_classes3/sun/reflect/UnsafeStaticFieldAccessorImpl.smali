.class abstract Lsun/reflect/UnsafeStaticFieldAccessorImpl;
.super Lsun/reflect/UnsafeFieldAccessorImpl;
.source "UnsafeStaticFieldAccessorImpl.java"


# instance fields
.field protected base:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 42
    const-class v0, Lsun/reflect/UnsafeStaticFieldAccessorImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "base"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lsun/reflect/Reflection;->registerFieldsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lsun/reflect/UnsafeFieldAccessorImpl;-><init>(Ljava/lang/reflect/Field;)V

    .line 50
    sget-object v0, Lsun/reflect/UnsafeStaticFieldAccessorImpl;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/UnsafeStaticFieldAccessorImpl;->base:Ljava/lang/Object;

    .line 51
    return-void
.end method
