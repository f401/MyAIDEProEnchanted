.class public Lorg/codehaus/groovy/reflection/SunClassLoader;
.super Ljava/lang/ClassLoader;

# interfaces
.implements Lgroovyjarjarasm/asm/Opcodes;


# static fields
.field protected static final j6:Lorg/codehaus/groovy/reflection/SunClassLoader;


# instance fields
.field protected final DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    new-instance v0, Lorg/codehaus/groovy/reflection/SunClassLoader$1;

    invoke-direct {v0}, Lorg/codehaus/groovy/reflection/SunClassLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/reflection/SunClassLoader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lorg/codehaus/groovy/reflection/SunClassLoader;->j6:Lorg/codehaus/groovy/reflection/SunClassLoader;

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .registers 4

    const-class v0, Lorg/codehaus/groovy/reflection/SunClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "sun.reflect.MagicAccessorImpl"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    const-string v2, "sun.reflect.MagicAccessorImpl"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/SunClassLoader;->j6()V

    return-void
.end method

.method private j6()V
    .registers 13

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x0

    new-instance v0, Lgroovyjarjarasm/asm/ClassWriter;

    invoke-direct {v0, v2}, Lgroovyjarjarasm/asm/ClassWriter;-><init>(I)V

    const/16 v1, 0x30

    const-string v3, "sun/reflect/GroovyMagic"

    const-string v5, "sun/reflect/MagicAccessorImpl"

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lgroovyjarjarasm/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "<init>"

    const-string v8, "()V"

    move-object v5, v0

    move v6, v2

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lgroovyjarjarasm/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lgroovyjarjarasm/asm/MethodVisitor;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarasm/asm/MethodVisitor;->visitCode()V

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v11}, Lgroovyjarjarasm/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb7

    const-string v3, "sun/reflect/MagicAccessorImpl"

    const-string v4, "<init>"

    const-string v5, "()V"

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lgroovyjarjarasm/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Lgroovyjarjarasm/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v1, v11, v11}, Lgroovyjarjarasm/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v1}, Lgroovyjarjarasm/asm/MethodVisitor;->visitEnd()V

    invoke-virtual {v0}, Lgroovyjarjarasm/asm/ClassWriter;->visitEnd()V

    invoke-virtual {v0}, Lgroovyjarjarasm/asm/ClassWriter;->toByteArray()[B

    move-result-object v0

    const-string v1, "sun.reflect.GroovyMagic"

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/groovy/reflection/SunClassLoader;->j6([BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method protected j6([BLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p2, p1, v1, v2}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
