.class public Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;
.super Lgroovy/util/AbstractFactory;

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field private static $callSiteArray:Ljava/lang/ref/SoftReference;

.field private static $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

.field public static __timeStamp:J

.field public static __timeStamp__239_neverHappen1402495627795:J


# instance fields
.field private transient metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->DW()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->__timeStamp__239_neverHappen1402495627795:J

    const-wide v0, 0x1468b40f213L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->__timeStamp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lgroovy/util/AbstractFactory;-><init>()V

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {p0}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->j6()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic DW()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_17
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return-void
.end method


# virtual methods
.method protected synthetic j6()Lgroovy/lang/MetaClass;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_c

    const-class v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/control/customizers/builder/ASTTransformationCustomizerFactory;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_c
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->VH()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method
