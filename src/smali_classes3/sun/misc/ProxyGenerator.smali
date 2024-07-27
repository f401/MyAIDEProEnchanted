.class public Lsun/misc/ProxyGenerator;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/misc/ProxyGenerator$ConstantPool;,
        Lsun/misc/ProxyGenerator$ConstantPool$Entry;,
        Lsun/misc/ProxyGenerator$ConstantPool$IndirectEntry;,
        Lsun/misc/ProxyGenerator$ConstantPool$ValueEntry;,
        Lsun/misc/ProxyGenerator$ExceptionTableEntry;,
        Lsun/misc/ProxyGenerator$FieldInfo;,
        Lsun/misc/ProxyGenerator$MethodInfo;,
        Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;,
        Lsun/misc/ProxyGenerator$ProxyMethod;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final ACC_FINAL:I = 0x10

.field private static final ACC_PRIVATE:I = 0x2

.field private static final ACC_PUBLIC:I = 0x1

.field private static final ACC_STATIC:I = 0x8

.field private static final ACC_SUPER:I = 0x20

.field private static final CLASSFILE_MAJOR_VERSION:I = 0x31

.field private static final CLASSFILE_MINOR_VERSION:I = 0x0

.field private static final CONSTANT_CLASS:I = 0x7

.field private static final CONSTANT_DOUBLE:I = 0x6

.field private static final CONSTANT_FIELD:I = 0x9

.field private static final CONSTANT_FLOAT:I = 0x4

.field private static final CONSTANT_INTEGER:I = 0x3

.field private static final CONSTANT_INTERFACEMETHOD:I = 0xb

.field private static final CONSTANT_LONG:I = 0x5

.field private static final CONSTANT_METHOD:I = 0xa

.field private static final CONSTANT_NAMEANDTYPE:I = 0xc

.field private static final CONSTANT_STRING:I = 0x8

.field private static final CONSTANT_UNICODE:I = 0x2

.field private static final CONSTANT_UTF8:I = 0x1

.field private static equalsMethod:Ljava/lang/reflect/Method; = null

.field private static final handlerFieldName:Ljava/lang/String; = "h"

.field private static hashCodeMethod:Ljava/lang/reflect/Method; = null

.field private static final opc_aastore:I = 0x53

.field private static final opc_aconst_null:I = 0x1

.field private static final opc_aload:I = 0x19

.field private static final opc_aload_0:I = 0x2a

.field private static final opc_anewarray:I = 0xbd

.field private static final opc_areturn:I = 0xb0

.field private static final opc_astore:I = 0x3a

.field private static final opc_astore_0:I = 0x4b

.field private static final opc_athrow:I = 0xbf

.field private static final opc_bipush:I = 0x10

.field private static final opc_checkcast:I = 0xc0

.field private static final opc_dload:I = 0x18

.field private static final opc_dload_0:I = 0x26

.field private static final opc_dreturn:I = 0xaf

.field private static final opc_dup:I = 0x59

.field private static final opc_fload:I = 0x17

.field private static final opc_fload_0:I = 0x22

.field private static final opc_freturn:I = 0xae

.field private static final opc_getfield:I = 0xb4

.field private static final opc_getstatic:I = 0xb2

.field private static final opc_iconst_0:I = 0x3

.field private static final opc_iload:I = 0x15

.field private static final opc_iload_0:I = 0x1a

.field private static final opc_invokeinterface:I = 0xb9

.field private static final opc_invokespecial:I = 0xb7

.field private static final opc_invokestatic:I = 0xb8

.field private static final opc_invokevirtual:I = 0xb6

.field private static final opc_ireturn:I = 0xac

.field private static final opc_ldc:I = 0x12

.field private static final opc_ldc_w:I = 0x13

.field private static final opc_lload:I = 0x16

.field private static final opc_lload_0:I = 0x1e

.field private static final opc_lreturn:I = 0xad

.field private static final opc_new:I = 0xbb

.field private static final opc_pop:I = 0x57

.field private static final opc_putstatic:I = 0xb3

.field private static final opc_return:I = 0xb1

.field private static final opc_sipush:I = 0x11

.field private static final opc_wide:I = 0xc4

.field private static final saveGeneratedFiles:Z = false

.field private static final superclassName:Ljava/lang/String; = "java/lang/reflect/Proxy"

.field private static toStringMethod:Ljava/lang/reflect/Method;


# instance fields
.field private className:Ljava/lang/String;

.field private cp:Lsun/misc/ProxyGenerator$ConstantPool;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private interfaces:[Ljava/lang/Class;

.field private methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$MethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private proxyMethodCount:I

.field private proxyMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$ProxyMethod;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 55
    :try_start_0
    const-class v0, Ljava/lang/Object;

    const-string v1, "hashCode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lsun/misc/ProxyGenerator;->hashCodeMethod:Ljava/lang/reflect/Method;

    .line 354
    const-class v0, Ljava/lang/Object;

    const-string v1, "equals"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lsun/misc/ProxyGenerator;->equalsMethod:Ljava/lang/reflect/Method;

    .line 356
    const-class v0, Ljava/lang/Object;

    const-string v1, "toString"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lsun/misc/ProxyGenerator;->toStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 5

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lsun/misc/ProxyGenerator$ConstantPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;-><init>(Lsun/misc/ProxyGenerator$1;)V

    iput-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/ProxyGenerator;->fields:Ljava/util/List;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/ProxyGenerator;->proxyMethodCount:I

    .line 395
    iput-object p1, p0, Lsun/misc/ProxyGenerator;->className:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    .line 397
    return-void
.end method

.method static synthetic access$1000(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_ipush(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1100([Ljava/lang/Class;)Ljava/util/List;
    .registers 2

    .line 55
    invoke-static {p0}, Lsun/misc/ProxyGenerator;->computeUniqueCatchList([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_astore(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1300(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_iload(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1400(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_lload(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1500(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_fload(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1600(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_dload(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1700(Lsun/misc/ProxyGenerator;Ljava/lang/Class;Ljava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->codeClassForName(Ljava/lang/Class;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$1800(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_ldc(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;
    .registers 2

    .line 55
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    return-object v0
.end method

.method static synthetic access$408(Lsun/misc/ProxyGenerator;)I
    .registers 3

    .line 55
    iget v0, p0, Lsun/misc/ProxyGenerator;->proxyMethodCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lsun/misc/ProxyGenerator;->proxyMethodCount:I

    return v0
.end method

.method static synthetic access$500([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    .line 55
    invoke-static {p0, p1}, Lsun/misc/ProxyGenerator;->getMethodDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Class;)I
    .registers 2

    .line 55
    invoke-static {p0}, Lsun/misc/ProxyGenerator;->getWordsPerType(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lsun/misc/ProxyGenerator;ILjava/io/DataOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lsun/misc/ProxyGenerator;->code_aload(ILjava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$800(Lsun/misc/ProxyGenerator;)Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 55
    invoke-static {p0}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addProxyMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 12

    .line 564
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 565
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 566
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 567
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lsun/misc/ProxyGenerator;->getParameterDescriptors([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 571
    if-eqz v0, :cond_2

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/ProxyGenerator$ProxyMethod;

    .line 573
    iget-object v7, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    if-ne v4, v7, :cond_0

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    iget-object v2, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    invoke-static {v5, v2, v0}, Lsun/misc/ProxyGenerator;->collectCompatibleTypes([Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/List;)V

    .line 583
    iget-object v2, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    invoke-static {v2, v5, v0}, Lsun/misc/ProxyGenerator;->collectCompatibleTypes([Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/List;)V

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Class;

    iput-object v2, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 586
    iget-object v2, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 587
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, v1, Lsun/misc/ProxyGenerator$ProxyMethod;->exceptionTypes:[Ljava/lang/Class;

    .line 597
    :goto_0
    return-void

    :cond_1
    move-object v8, v0

    .line 595
    :goto_1
    new-instance v0, Lsun/misc/ProxyGenerator$ProxyMethod;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lsun/misc/ProxyGenerator$ProxyMethod;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;Ljava/lang/Class;Lsun/misc/ProxyGenerator$1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    iget-object v6, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v0

    goto :goto_1
.end method

.method private static checkReturnTypes(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$ProxyMethod;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 614
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 692
    :cond_0
    return-void

    .line 622
    :cond_1
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 625
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ProxyMethod;

    .line 626
    iget-object v6, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->returnType:Ljava/lang/Class;

    .line 627
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 641
    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move v1, v2

    .line 642
    :goto_1
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 649
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 660
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 662
    if-nez v1, :cond_3

    .line 663
    invoke-interface {v7, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move v0, v3

    :goto_2
    move v1, v0

    .line 669
    goto :goto_1

    .line 666
    :cond_3
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    move v0, v1

    goto :goto_2

    .line 676
    :cond_4
    if-nez v1, :cond_2

    .line 677
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "methods with same signature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodName:Ljava/lang/String;

    iget-object v0, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    .line 630
    invoke-static {v2, v0}, Lsun/misc/ProxyGenerator;->getFriendlyMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but incompatible return types: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and others"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_6
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 686
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ProxyMethod;

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "methods with same signature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodName:Ljava/lang/String;

    iget-object v0, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->parameterTypes:[Ljava/lang/Class;

    .line 689
    invoke-static {v2, v0}, Lsun/misc/ProxyGenerator;->getFriendlyMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but incompatible return types: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private codeClassForName(Ljava/lang/Class;Ljava/io/DataOutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getString(Ljava/lang/String;)S

    move-result v0

    invoke-direct {p0, v0, p2}, Lsun/misc/ProxyGenerator;->code_ldc(ILjava/io/DataOutputStream;)V

    .line 1400
    const/16 v0, 0xb8

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1401
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v1, "java/lang/Class"

    const-string v2, "forName"

    const-string v3, "(Ljava/lang/String;)Ljava/lang/Class;"

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1404
    return-void
.end method

.method private codeLocalLoadStore(IIILjava/io/DataOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 1334
    add-int v0, p3, p1

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1347
    :goto_0
    return-void

    .line 1335
    :cond_0
    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    .line 1336
    invoke-virtual {p4, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1337
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 1343
    :cond_1
    const/16 v0, 0xc4

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1344
    invoke-virtual {p4, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1345
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p4, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method private code_aload(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1286
    const/16 v0, 0x19

    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1287
    return-void
.end method

.method private code_astore(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1316
    const/16 v0, 0x3a

    const/16 v1, 0x4b

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1317
    return-void
.end method

.method private code_dload(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1280
    const/16 v0, 0x18

    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1281
    return-void
.end method

.method private code_fload(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1274
    const/16 v0, 0x17

    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1275
    return-void
.end method

.method private code_iload(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1262
    const/16 v0, 0x15

    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1263
    return-void
.end method

.method private code_ipush(ILjava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1376
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 1377
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1387
    :goto_0
    return-void

    .line 1378
    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    .line 1379
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1380
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0

    .line 1381
    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    .line 1382
    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1383
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 1385
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private code_ldc(ILjava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1359
    const/16 v0, 0x12

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1360
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1365
    :goto_0
    return-void

    .line 1362
    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1363
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method private code_lload(ILjava/io/DataOutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1268
    const/16 v0, 0x16

    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1, p2}, Lsun/misc/ProxyGenerator;->codeLocalLoadStore(IIILjava/io/DataOutputStream;)V

    .line 1269
    return-void
.end method

.method private static collectCompatibleTypes([Ljava/lang/Class;[Ljava/lang/Class;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Class;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 1528
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1529
    aget-object v2, p0, v0

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 1530
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1531
    aget-object v3, p1, v2

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1532
    aget-object v2, p0, v0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1538
    :cond_2
    return-void
.end method

.method private static computeUniqueCatchList([Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 1562
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    const-class v0, Ljava/lang/Error;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    const-class v0, Ljava/lang/RuntimeException;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1569
    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 1570
    aget-object v5, p0, v1

    .line 1571
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1577
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1610
    :cond_0
    return-object v4

    .line 1579
    :cond_1
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1569
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v3, v2

    .line 1589
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 1590
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1591
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1597
    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1602
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    :goto_3
    move v3, v0

    .line 1606
    goto :goto_2

    .line 1604
    :cond_4
    add-int/lit8 v0, v3, 0x1

    goto :goto_3

    .line 1608
    :cond_5
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static dotToSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1419
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateClassFile()[B
    .registers 11

    const v9, 0xffff

    const/4 v1, 0x0

    .line 417
    sget-object v0, Lsun/misc/ProxyGenerator;->hashCodeMethod:Ljava/lang/reflect/Method;

    const-class v2, Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lsun/misc/ProxyGenerator;->addProxyMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 418
    sget-object v0, Lsun/misc/ProxyGenerator;->equalsMethod:Ljava/lang/reflect/Method;

    const-class v2, Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lsun/misc/ProxyGenerator;->addProxyMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 419
    sget-object v0, Lsun/misc/ProxyGenerator;->toStringMethod:Ljava/lang/reflect/Method;

    const-class v2, Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lsun/misc/ProxyGenerator;->addProxyMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    move v0, v1

    .line 426
    :goto_0
    iget-object v2, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 427
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move v2, v1

    .line 428
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 429
    aget-object v4, v3, v2

    iget-object v5, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    aget-object v5, v5, v0

    invoke-direct {p0, v4, v5}, Lsun/misc/ProxyGenerator;->addProxyMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 438
    invoke-static {v0}, Lsun/misc/ProxyGenerator;->checkReturnTypes(Ljava/util/List;)V

    goto :goto_2

    .line 446
    :cond_2
    :try_start_0
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-direct {p0}, Lsun/misc/ProxyGenerator;->generateConstructor()Lsun/misc/ProxyGenerator$MethodInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 449
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ProxyMethod;

    .line 452
    iget-object v4, p0, Lsun/misc/ProxyGenerator;->fields:Ljava/util/List;

    new-instance v5, Lsun/misc/ProxyGenerator$FieldInfo;

    iget-object v6, v0, Lsun/misc/ProxyGenerator$ProxyMethod;->methodFieldName:Ljava/lang/String;

    const-string v7, "Ljava/lang/reflect/Method;"

    const/16 v8, 0xa

    invoke-direct {v5, p0, v6, v7, v8}, Lsun/misc/ProxyGenerator$FieldInfo;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v4, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-static {v0}, Lsun/misc/ProxyGenerator$ProxyMethod;->access$100(Lsun/misc/ProxyGenerator$ProxyMethod;)Lsun/misc/ProxyGenerator$MethodInfo;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 463
    :catch_0
    move-exception v0

    .line 464
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "unexpected I/O Exception"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_4
    :try_start_1
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-direct {p0}, Lsun/misc/ProxyGenerator;->generateStaticInitializer()Lsun/misc/ProxyGenerator$MethodInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_a

    .line 470
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v9, :cond_9

    .line 482
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    iget-object v2, p0, Lsun/misc/ProxyGenerator;->className:Ljava/lang/String;

    invoke-static {v2}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    .line 483
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v2, "java/lang/reflect/Proxy"

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move v0, v1

    .line 484
    :goto_4
    iget-object v2, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 485
    iget-object v3, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 492
    :cond_5
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    invoke-virtual {v0}, Lsun/misc/ProxyGenerator$ConstantPool;->setReadOnly()V

    .line 494
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 495
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 503
    const v0, -0x35014542    # -8346975.0f

    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 505
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 507
    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 509
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->write(Ljava/io/OutputStream;)V

    .line 512
    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 514
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    iget-object v4, p0, Lsun/misc/ProxyGenerator;->className:Ljava/lang/String;

    invoke-static {v4}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 516
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v4, "java/lang/reflect/Proxy"

    invoke-virtual {v0, v4}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 519
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 521
    :goto_5
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 522
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    iget-object v4, p0, Lsun/misc/ProxyGenerator;->interfaces:[Ljava/lang/Class;

    aget-object v4, v4, v1

    .line 523
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual {v0, v4}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 527
    :cond_6
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 529
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$FieldInfo;

    .line 530
    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$FieldInfo;->write(Ljava/io/DataOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 543
    :catch_1
    move-exception v0

    .line 544
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "unexpected I/O Exception"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_7
    :try_start_3
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 536
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$MethodInfo;

    .line 537
    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$MethodInfo;->write(Ljava/io/DataOutputStream;)V

    goto :goto_7

    .line 541
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 545
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 471
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "field limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateConstructor()Lsun/misc/ProxyGenerator$MethodInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1142
    new-instance v0, Lsun/misc/ProxyGenerator$MethodInfo;

    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/reflect/InvocationHandler;)V"

    invoke-direct {v0, p0, v1, v2, v3}, Lsun/misc/ProxyGenerator$MethodInfo;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1146
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, v0, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1148
    invoke-direct {p0, v6, v1}, Lsun/misc/ProxyGenerator;->code_aload(ILjava/io/DataOutputStream;)V

    .line 1150
    invoke-direct {p0, v3, v1}, Lsun/misc/ProxyGenerator;->code_aload(ILjava/io/DataOutputStream;)V

    .line 1152
    const/16 v2, 0xb7

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1153
    iget-object v2, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v3, "java/lang/reflect/Proxy"

    const-string v4, "<init>"

    const-string v5, "(Ljava/lang/reflect/InvocationHandler;)V"

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1157
    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1159
    const/16 v1, 0xa

    iput-short v1, v0, Lsun/misc/ProxyGenerator$MethodInfo;->maxStack:S

    .line 1160
    const/4 v1, 0x2

    iput-short v1, v0, Lsun/misc/ProxyGenerator$MethodInfo;->maxLocals:S

    .line 1161
    new-array v1, v6, [S

    iput-object v1, v0, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    .line 1163
    return-object v0
.end method

.method public static generateProxyClass(Ljava/lang/String;[Ljava/lang/Class;)[B
    .registers 3

    .line 323
    new-instance v0, Lsun/misc/ProxyGenerator;

    invoke-direct {v0, p0, p1}, Lsun/misc/ProxyGenerator;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 324
    invoke-direct {v0}, Lsun/misc/ProxyGenerator;->generateClassFile()[B

    move-result-object v0

    .line 344
    return-object v0
.end method

.method private generateStaticInitializer()Lsun/misc/ProxyGenerator$MethodInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v12, 0xb7

    const/16 v11, 0xb6

    const/16 v10, 0x59

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1170
    new-instance v1, Lsun/misc/ProxyGenerator$MethodInfo;

    const-string v0, "<clinit>"

    const-string v2, "()V"

    const/16 v3, 0x8

    invoke-direct {v1, p0, v0, v2, v3}, Lsun/misc/ProxyGenerator$MethodInfo;-><init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1173
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1178
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->proxyMethods:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ProxyMethod;

    .line 1180
    invoke-static {v0, v2}, Lsun/misc/ProxyGenerator$ProxyMethod;->access$1900(Lsun/misc/ProxyGenerator$ProxyMethod;Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 1184
    :cond_1
    const/16 v0, 0xb1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1186
    iget-object v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-short v0, v0

    .line 1188
    iget-object v3, v1, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    iget-object v4, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    .line 1190
    new-instance v5, Lsun/misc/ProxyGenerator$ExceptionTableEntry;

    const-string v6, "java/lang/NoSuchMethodException"

    invoke-virtual {v4, v6}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v4

    invoke-direct {v5, v9, v0, v0, v4}, Lsun/misc/ProxyGenerator$ExceptionTableEntry;-><init>(SSSS)V

    .line 1188
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1192
    invoke-direct {p0, v8, v2}, Lsun/misc/ProxyGenerator;->code_astore(ILjava/io/DataOutputStream;)V

    .line 1194
    const/16 v3, 0xbb

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1195
    iget-object v3, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v4, "java/lang/NoSuchMethodError"

    invoke-virtual {v3, v4}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1197
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1199
    invoke-direct {p0, v8, v2}, Lsun/misc/ProxyGenerator;->code_aload(ILjava/io/DataOutputStream;)V

    .line 1201
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1202
    iget-object v3, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v4, "java/lang/Throwable"

    const-string v5, "getMessage"

    const-string v6, "()Ljava/lang/String;"

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1205
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1206
    iget-object v3, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v4, "java/lang/NoSuchMethodError"

    const-string v5, "<init>"

    const-string v6, "(Ljava/lang/String;)V"

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1209
    const/16 v3, 0xbf

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1211
    iget-object v3, v1, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-short v3, v3

    .line 1213
    iget-object v4, v1, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    iget-object v5, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    .line 1215
    new-instance v6, Lsun/misc/ProxyGenerator$ExceptionTableEntry;

    const-string v7, "java/lang/ClassNotFoundException"

    invoke-virtual {v5, v7}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v5

    invoke-direct {v6, v9, v0, v3, v5}, Lsun/misc/ProxyGenerator$ExceptionTableEntry;-><init>(SSSS)V

    .line 1213
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    invoke-direct {p0, v8, v2}, Lsun/misc/ProxyGenerator;->code_astore(ILjava/io/DataOutputStream;)V

    .line 1219
    const/16 v0, 0xbb

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1220
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v3, "java/lang/NoClassDefFoundError"

    invoke-virtual {v0, v3}, Lsun/misc/ProxyGenerator$ConstantPool;->getClass(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1222
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1224
    invoke-direct {p0, v8, v2}, Lsun/misc/ProxyGenerator;->code_aload(ILjava/io/DataOutputStream;)V

    .line 1226
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1227
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v3, "java/lang/Throwable"

    const-string v4, "getMessage"

    const-string v5, "()Ljava/lang/String;"

    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1230
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1231
    iget-object v0, p0, Lsun/misc/ProxyGenerator;->cp:Lsun/misc/ProxyGenerator$ConstantPool;

    const-string v3, "java/lang/NoClassDefFoundError"

    const-string v4, "<init>"

    const-string v5, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v3, v4, v5}, Lsun/misc/ProxyGenerator$ConstantPool;->getMethodRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1235
    const/16 v0, 0xbf

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1237
    iget-object v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const v2, 0xffff

    if-gt v0, v2, :cond_2

    .line 1241
    const/16 v0, 0xa

    iput-short v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->maxStack:S

    .line 1242
    const/4 v0, 0x2

    int-to-short v0, v0

    iput-short v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->maxLocals:S

    .line 1243
    new-array v0, v9, [S

    iput-object v0, v1, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    .line 1245
    return-object v1

    .line 1238
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "code size limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFieldType(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    .line 1455
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    invoke-static {p0}, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->get(Ljava/lang/Class;)Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;

    move-result-object v0

    iget-object v0, v0, Lsun/misc/ProxyGenerator$PrimitiveTypeInfo;->baseTypeString:Ljava/lang/String;

    .line 1467
    :goto_0
    return-object v0

    .line 1457
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1467
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsun/misc/ProxyGenerator;->dotToSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getFriendlyMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 1478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1479
    const/16 v0, 0x28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    .line 1480
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_3

    .line 1481
    if-lez v3, :cond_0

    .line 1482
    const/16 v0, 0x2c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1484
    :cond_0
    aget-object v2, p1, v3

    move v0, v1

    .line 1486
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1487
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1490
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :goto_2
    if-lez v0, :cond_2

    .line 1492
    const-string v2, "[]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1480
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1495
    :cond_3
    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMethodDescriptor([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    .line 1429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lsun/misc/ProxyGenerator;->getParameterDescriptors([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const-string v0, "V"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1429
    return-object v0

    .line 1430
    :cond_0
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->getFieldType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getParameterDescriptors([Ljava/lang/Class;)Ljava/lang/String;
    .registers 4

    .line 1441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1442
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1443
    aget-object v2, p0, v0

    invoke-static {v2}, Lsun/misc/ProxyGenerator;->getFieldType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1445
    :cond_0
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWordsPerType(Ljava/lang/Class;)I
    .registers 2

    .line 1509
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 1510
    :cond_0
    const/4 v0, 0x2

    .line 1512
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
