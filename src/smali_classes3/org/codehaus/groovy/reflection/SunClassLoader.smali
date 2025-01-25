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
            "Ljava/util/Map<",
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
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    const/4 v0, 0x0

    :goto_e
    sput-object v0, Lorg/codehaus/groovy/reflection/SunClassLoader;->j6:Lorg/codehaus/groovy/reflection/SunClassLoader;

    return-void
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

    move-result-object v1

    const-string v2, "sun.reflect.MagicAccessorImpl"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/codehaus/groovy/reflection/SunClassLoader;->j6()V

    return-void
.end method

.method private j6()V
    .registers 15

    new-instance v7, Lgroovyjarjarasm/asm/ClassWriter;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Lgroovyjarjarasm/asm/ClassWriter;-><init>(I)V

    const/16 v1, 0x30

    const/4 v2, 0x1

    const-string v3, "sun/reflect/GroovyMagic"

    const/4 v4, 0x0

    const-string v5, "sun/reflect/MagicAccessorImpl"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lgroovyjarjarasm/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "<init>"

    const-string v3, "()V"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lgroovyjarjarasm/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lgroovyjarjarasm/asm/MethodVisitor;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarasm/asm/MethodVisitor;->visitCode()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgroovyjarjarasm/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0xb7

    const-string v10, "sun/reflect/MagicAccessorImpl"

    const-string v11, "<init>"

    const-string v12, "()V"

    const/4 v13, 0x0

    move-object v8, v0

    invoke-virtual/range {v8 .. v13}, Lgroovyjarjarasm/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lgroovyjarjarasm/asm/MethodVisitor;->visitInsn(I)V

    invoke-virtual {v0, v2, v2}, Lgroovyjarjarasm/asm/MethodVisitor;->visitMaxs(II)V

    invoke-virtual {v0}, Lgroovyjarjarasm/asm/MethodVisitor;->visitEnd()V

    invoke-virtual {v7}, Lgroovyjarjarasm/asm/ClassWriter;->visitEnd()V

    invoke-virtual {v7}, Lgroovyjarjarasm/asm/ClassWriter;->toByteArray()[B

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

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method protected j6([BLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p2, p1, v1, v2}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/codehaus/groovy/reflection/SunClassLoader;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    if-eqz v0, :cond_d

    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_11} :catch_13
    .catchall {:try_start_d .. :try_end_11} :catchall_22

    monitor-exit p0

    return-object p1

    :catch_13
    move-exception p2

    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
