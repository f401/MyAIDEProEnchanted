.class public Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;
.super Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;

# interfaces
.implements Lgroovy/transform/CompilationUnitAware;
.implements Lgroovy/lang/GroovyObject;


# static fields
.field public static DW:J

.field public static FH:J

.field private static Hw:Ljava/lang/ref/SoftReference;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->DW()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->FH:J

    const-wide v0, 0x1468b40f289L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->DW:J

    return-void
.end method

.method public static synthetic DW()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->Hw:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x47

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->Hw:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->Hw:Ljava/lang/ref/SoftReference;

    :cond_17
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "findASTTranformationClass"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    const-string v3, "newInstance"

    aput-object v3, p0, v0

    const/4 v0, 0x3

    const-string v4, "<$constructor$>"

    aput-object v4, p0, v0

    const/4 v0, 0x4

    const-string v5, "make"

    aput-object v5, p0, v0

    const/4 v0, 0x5

    const-string v6, "classLoader"

    aput-object v6, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v3, p0, v0

    const/16 v0, 0x9

    aput-object v4, p0, v0

    const/16 v0, 0xa

    aput-object v5, p0, v0

    const/16 v0, 0xb

    const-string v7, "setAnnotationParameters"

    aput-object v7, p0, v0

    const/16 v0, 0xc

    aput-object v6, p0, v0

    const/16 v0, 0xd

    aput-object v1, p0, v0

    const/16 v0, 0xe

    aput-object v2, p0, v0

    const/16 v0, 0xf

    aput-object v3, p0, v0

    const/16 v0, 0x10

    aput-object v4, p0, v0

    const/16 v0, 0x11

    aput-object v5, p0, v0

    const/16 v0, 0x12

    aput-object v6, p0, v0

    const/16 v0, 0x13

    aput-object v1, p0, v0

    const/16 v0, 0x14

    aput-object v1, p0, v0

    const/16 v0, 0x15

    aput-object v2, p0, v0

    const/16 v0, 0x16

    aput-object v3, p0, v0

    const/16 v0, 0x17

    aput-object v4, p0, v0

    const/16 v0, 0x18

    aput-object v5, p0, v0

    const/16 v0, 0x19

    aput-object v7, p0, v0

    const/16 v0, 0x1a

    aput-object v6, p0, v0

    const/16 v0, 0x1b

    aput-object v7, p0, v0

    const/16 v0, 0x1c

    const-string v5, "getAnnotation"

    aput-object v5, p0, v0

    const/16 v0, 0x1d

    aput-object v4, p0, v0

    const/16 v0, 0x1e

    aput-object v4, p0, v0

    const/16 v0, 0x1f

    const-string v7, "classes"

    aput-object v7, p0, v0

    const/16 v0, 0x20

    const-string v7, "value"

    aput-object v7, p0, v0

    const/16 v0, 0x21

    const-string v7, "plus"

    aput-object v7, p0, v0

    const/16 v0, 0x22

    const-string v8, "length"

    aput-object v8, p0, v0

    const/16 v0, 0x23

    aput-object v8, p0, v0

    const/16 v0, 0x24

    aput-object v4, p0, v0

    const/16 v0, 0x25

    aput-object v7, p0, v0

    const/16 v0, 0x26

    aput-object v8, p0, v0

    const/16 v0, 0x27

    aput-object v8, p0, v0

    const/16 v0, 0x28

    aput-object v4, p0, v0

    const/16 v0, 0x29

    const-string v8, "getAt"

    aput-object v8, p0, v0

    const/16 v0, 0x2a

    const-string v9, "forName"

    aput-object v9, p0, v0

    const/16 v0, 0x2b

    aput-object v8, p0, v0

    const/16 v0, 0x2c

    aput-object v6, p0, v0

    const/16 v0, 0x2d

    aput-object v9, p0, v0

    const/16 v0, 0x2e

    aput-object v6, p0, v0

    const/16 v0, 0x2f

    aput-object v9, p0, v0

    const/16 v0, 0x30

    aput-object v6, p0, v0

    const/16 v0, 0x31

    aput-object v4, p0, v0

    const/16 v0, 0x32

    aput-object v4, p0, v0

    const/16 v0, 0x33

    const-string v6, "class"

    aput-object v6, p0, v0

    const/16 v0, 0x34

    aput-object v5, p0, v0

    const/16 v0, 0x35

    aput-object v4, p0, v0

    const/16 v0, 0x36

    aput-object v7, p0, v0

    const/16 v0, 0x37

    const-string v5, "name"

    aput-object v5, p0, v0

    const/16 v0, 0x38

    aput-object v4, p0, v0

    const/16 v0, 0x39

    aput-object v7, p0, v0

    const/16 v0, 0x3a

    aput-object v5, p0, v0

    const/16 v0, 0x3b

    const-string v4, "phase"

    aput-object v4, p0, v0

    const/16 v0, 0x3c

    aput-object v2, p0, v0

    const/16 v0, 0x3d

    aput-object v1, p0, v0

    const/16 v0, 0x3e

    aput-object v3, p0, v0

    const/16 v0, 0x3f

    aput-object v2, p0, v0

    const/16 v0, 0x40

    aput-object v1, p0, v0

    const/16 v0, 0x41

    aput-object v3, p0, v0

    const/16 v0, 0x42

    const-string v1, "each"

    aput-object v1, p0, v0

    const/16 v0, 0x43

    const-string v1, "visit"

    aput-object v1, p0, v0

    const/16 v0, 0x44

    aput-object v1, p0, v0

    const/16 v0, 0x45

    aput-object v1, p0, v0

    const/16 v0, 0x46

    aput-object v1, p0, v0

    return-void
.end method
