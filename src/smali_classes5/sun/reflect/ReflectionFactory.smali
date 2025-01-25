.class public Lsun/reflect/ReflectionFactory;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/reflect/ReflectionFactory$GetReflectionFactoryAction;
    }
.end annotation


# static fields
.field private static inflationThreshold:I

.field private static initted:Z

.field private static volatile langReflectAccess:Lsun/reflect/LangReflectAccess;

.field private static noInflation:Z

.field private static reflectionFactoryAccessPerm:Ljava/security/Permission;

.field private static soleInstance:Lsun/reflect/ReflectionFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 50
    sput-boolean v2, Lsun/reflect/ReflectionFactory;->initted:Z

    .line 51
    new-instance v0, Ljava/lang/RuntimePermission;

    const-string v1, "reflectionFactoryAccess"

    invoke-direct {v0, v1}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lsun/reflect/ReflectionFactory;->reflectionFactoryAccessPerm:Ljava/security/Permission;

    .line 53
    new-instance v0, Lsun/reflect/ReflectionFactory;

    invoke-direct {v0}, Lsun/reflect/ReflectionFactory;-><init>()V

    sput-object v0, Lsun/reflect/ReflectionFactory;->soleInstance:Lsun/reflect/ReflectionFactory;

    .line 71
    sput-boolean v2, Lsun/reflect/ReflectionFactory;->noInflation:Z

    .line 72
    const/16 v0, 0xf

    sput v0, Lsun/reflect/ReflectionFactory;->inflationThreshold:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 48
    sput-boolean p0, Lsun/reflect/ReflectionFactory;->noInflation:Z

    return p0
.end method

.method static synthetic access$102(I)I
    .registers 1

    .line 48
    sput p0, Lsun/reflect/ReflectionFactory;->inflationThreshold:I

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 48
    sput-boolean p0, Lsun/reflect/ReflectionFactory;->initted:Z

    return p0
.end method

.method private static checkInitted()V
    .registers 1

    .line 368
    sget-boolean v0, Lsun/reflect/ReflectionFactory;->initted:Z

    if-eqz v0, :cond_5

    .line 405
    :goto_4
    return-void

    .line 369
    :cond_5
    new-instance v0, Lsun/reflect/ReflectionFactory$1;

    invoke-direct {v0}, Lsun/reflect/ReflectionFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public static getReflectionFactory()Lsun/reflect/ReflectionFactory;
    .registers 2

    .line 112
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_b

    .line 115
    sget-object v1, Lsun/reflect/ReflectionFactory;->reflectionFactoryAccessPerm:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 117
    :cond_b
    sget-object v0, Lsun/reflect/ReflectionFactory;->soleInstance:Lsun/reflect/ReflectionFactory;

    return-object v0
.end method

.method static inflationThreshold()I
    .registers 1

    .line 359
    sget v0, Lsun/reflect/ReflectionFactory;->inflationThreshold:I

    return v0
.end method

.method private static langReflectAccess()Lsun/reflect/LangReflectAccess;
    .registers 1

    .line 408
    sget-object v0, Lsun/reflect/ReflectionFactory;->langReflectAccess:Lsun/reflect/LangReflectAccess;

    if-nez v0, :cond_8

    .line 413
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 415
    :cond_8
    sget-object v0, Lsun/reflect/ReflectionFactory;->langReflectAccess:Lsun/reflect/LangReflectAccess;

    return-object v0
.end method


# virtual methods
.method public copyConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 3

    .line 314
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/LangReflectAccess;->copyConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public copyField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .registers 3

    .line 307
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/LangReflectAccess;->copyField(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public copyMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 3

    .line 300
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/LangReflectAccess;->copyMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getConstructorAccessor(Ljava/lang/reflect/Constructor;)Lsun/reflect/ConstructorAccessor;
    .registers 3

    .line 285
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/LangReflectAccess;->getConstructorAccessor(Ljava/lang/reflect/Constructor;)Lsun/reflect/ConstructorAccessor;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAccessor(Ljava/lang/reflect/Method;)Lsun/reflect/MethodAccessor;
    .registers 3

    .line 274
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lsun/reflect/LangReflectAccess;->getMethodAccessor(Ljava/lang/reflect/Method;)Lsun/reflect/MethodAccessor;

    move-result-object v0

    return-object v0
.end method

.method public newConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B)Ljava/lang/reflect/Constructor;
    .registers 18

    .line 262
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lsun/reflect/LangReflectAccess;->newConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public newConstructorAccessor(Ljava/lang/reflect/Constructor;)Lsun/reflect/ConstructorAccessor;
    .registers 7

    .line 165
    invoke-static {}, Lsun/reflect/ReflectionFactory;->checkInitted()V

    .line 167
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 169
    new-instance v0, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;-><init>(Ljava/lang/String;)V

    .line 195
    :goto_17
    return-object v0

    .line 171
    :cond_18
    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_24

    .line 172
    new-instance v0, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;

    const-string v1, "Can not instantiate java.lang.Class"

    invoke-direct {v0, v1}, Lsun/reflect/InstantiationExceptionConstructorAccessorImpl;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 178
    :cond_24
    const-class v1, Lsun/reflect/ConstructorAccessorImpl;

    invoke-static {v0, v1}, Lsun/reflect/Reflection;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 180
    new-instance v0, Lsun/reflect/BootstrapConstructorAccessorImpl;

    invoke-direct {v0, p1}, Lsun/reflect/BootstrapConstructorAccessorImpl;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_17

    .line 183
    :cond_32
    sget-boolean v0, Lsun/reflect/ReflectionFactory;->noInflation:Z

    if-eqz v0, :cond_50

    .line 184
    new-instance v0, Lsun/reflect/MethodAccessorGenerator;

    invoke-direct {v0}, Lsun/reflect/MethodAccessorGenerator;-><init>()V

    .line 185
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 186
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 188
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    .line 185
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/reflect/MethodAccessorGenerator;->generateConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/ConstructorAccessor;

    move-result-object v0

    goto :goto_17

    .line 190
    :cond_50
    new-instance v1, Lsun/reflect/NativeConstructorAccessorImpl;

    invoke-direct {v1, p1}, Lsun/reflect/NativeConstructorAccessorImpl;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 192
    new-instance v0, Lsun/reflect/DelegatingConstructorAccessorImpl;

    invoke-direct {v0, v1}, Lsun/reflect/DelegatingConstructorAccessorImpl;-><init>(Lsun/reflect/ConstructorAccessorImpl;)V

    .line 194
    invoke-virtual {v1, v0}, Lsun/reflect/NativeConstructorAccessorImpl;->setParent(Lsun/reflect/DelegatingConstructorAccessorImpl;)V

    goto :goto_17
.end method

.method public newConstructorForSerialization(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .registers 13

    .line 327
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 350
    :goto_6
    return-object p2

    .line 331
    :cond_7
    new-instance v0, Lsun/reflect/MethodAccessorGenerator;

    invoke-direct {v0}, Lsun/reflect/MethodAccessorGenerator;-><init>()V

    .line 333
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 334
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 335
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    .line 336
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p1

    .line 332
    invoke-virtual/range {v0 .. v5}, Lsun/reflect/MethodAccessorGenerator;->generateSerializationConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/Class;)Lsun/reflect/SerializationConstructorAccessorImpl;

    move-result-object v9

    .line 337
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 338
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 339
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 340
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    .line 341
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    .line 342
    invoke-interface {v0, p2}, Lsun/reflect/LangReflectAccess;->getConstructorSlot(Ljava/lang/reflect/Constructor;)I

    move-result v5

    .line 343
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    .line 344
    invoke-interface {v0, p2}, Lsun/reflect/LangReflectAccess;->getConstructorSignature(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    .line 346
    invoke-interface {v0, p2}, Lsun/reflect/LangReflectAccess;->getConstructorAnnotations(Ljava/lang/reflect/Constructor;)[B

    move-result-object v7

    .line 347
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    .line 348
    invoke-interface {v0, p2}, Lsun/reflect/LangReflectAccess;->getConstructorParameterAnnotations(Ljava/lang/reflect/Constructor;)[B

    move-result-object v8

    move-object v0, p0

    .line 337
    invoke-virtual/range {v0 .. v8}, Lsun/reflect/ReflectionFactory;->newConstructor(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 349
    invoke-virtual {p0, p2, v9}, Lsun/reflect/ReflectionFactory;->setConstructorAccessor(Ljava/lang/reflect/Constructor;Lsun/reflect/ConstructorAccessor;)V

    goto :goto_6
.end method

.method public newField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;IILjava/lang/String;[B)Ljava/lang/reflect/Field;
    .registers 16

    .line 215
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lsun/reflect/LangReflectAccess;->newField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;IILjava/lang/String;[B)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public newFieldAccessor(Ljava/lang/reflect/Field;Z)Lsun/reflect/FieldAccessor;
    .registers 4

    .line 139
    invoke-static {}, Lsun/reflect/ReflectionFactory;->checkInitted()V

    .line 140
    invoke-static {p1, p2}, Lsun/reflect/UnsafeFieldAccessorFactory;->newFieldAccessor(Ljava/lang/reflect/Field;Z)Lsun/reflect/FieldAccessor;

    move-result-object v0

    return-object v0
.end method

.method public newMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B[B)Ljava/lang/reflect/Method;
    .registers 24

    .line 238
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-interface/range {v0 .. v11}, Lsun/reflect/LangReflectAccess;->newMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IILjava/lang/String;[B[B[B)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public newMethodAccessor(Ljava/lang/reflect/Method;)Lsun/reflect/MethodAccessor;
    .registers 9

    .line 144
    invoke-static {}, Lsun/reflect/ReflectionFactory;->checkInitted()V

    .line 146
    sget-boolean v0, Lsun/reflect/ReflectionFactory;->noInflation:Z

    if-eqz v0, :cond_29

    .line 147
    new-instance v0, Lsun/reflect/MethodAccessorGenerator;

    invoke-direct {v0}, Lsun/reflect/MethodAccessorGenerator;-><init>()V

    .line 148
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 149
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 152
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 153
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    .line 148
    invoke-virtual/range {v0 .. v6}, Lsun/reflect/MethodAccessorGenerator;->generateMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;I)Lsun/reflect/MethodAccessor;

    move-result-object v0

    .line 160
    :goto_28
    return-object v0

    .line 155
    :cond_29
    new-instance v1, Lsun/reflect/NativeMethodAccessorImpl;

    invoke-direct {v1, p1}, Lsun/reflect/NativeMethodAccessorImpl;-><init>(Ljava/lang/reflect/Method;)V

    .line 157
    new-instance v0, Lsun/reflect/DelegatingMethodAccessorImpl;

    invoke-direct {v0, v1}, Lsun/reflect/DelegatingMethodAccessorImpl;-><init>(Lsun/reflect/MethodAccessorImpl;)V

    .line 159
    invoke-virtual {v1, v0}, Lsun/reflect/NativeMethodAccessorImpl;->setParent(Lsun/reflect/DelegatingMethodAccessorImpl;)V

    goto :goto_28
.end method

.method public setConstructorAccessor(Ljava/lang/reflect/Constructor;Lsun/reflect/ConstructorAccessor;)V
    .registers 4

    .line 293
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lsun/reflect/LangReflectAccess;->setConstructorAccessor(Ljava/lang/reflect/Constructor;Lsun/reflect/ConstructorAccessor;)V

    .line 294
    return-void
.end method

.method public setLangReflectAccess(Lsun/reflect/LangReflectAccess;)V
    .registers 2

    .line 128
    sput-object p1, Lsun/reflect/ReflectionFactory;->langReflectAccess:Lsun/reflect/LangReflectAccess;

    .line 129
    return-void
.end method

.method public setMethodAccessor(Ljava/lang/reflect/Method;Lsun/reflect/MethodAccessor;)V
    .registers 4

    .line 279
    invoke-static {}, Lsun/reflect/ReflectionFactory;->langReflectAccess()Lsun/reflect/LangReflectAccess;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lsun/reflect/LangReflectAccess;->setMethodAccessor(Ljava/lang/reflect/Method;Lsun/reflect/MethodAccessor;)V

    .line 280
    return-void
.end method
