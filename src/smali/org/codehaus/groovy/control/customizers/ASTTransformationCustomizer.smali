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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/control/customizers/ASTTransformationCustomizer;->Hw:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "make"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    const-string v1, "make"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v1, "setAnnotationParameters"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/16 v0, 0xf

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/16 v0, 0x10

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x11

    const-string v1, "make"

    aput-object v1, p0, v0

    const/16 v0, 0x12

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/16 v0, 0x15

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/16 v0, 0x16

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/16 v0, 0x17

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x18

    const-string v1, "make"

    aput-object v1, p0, v0

    const/16 v0, 0x19

    const-string v1, "setAnnotationParameters"

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0x1b

    const-string v1, "setAnnotationParameters"

    aput-object v1, p0, v0

    const/16 v0, 0x1c

    const-string v1, "getAnnotation"

    aput-object v1, p0, v0

    const/16 v0, 0x1d

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x1f

    const-string v1, "classes"

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string v1, "value"

    aput-object v1, p0, v0

    const/16 v0, 0x21

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x22

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x23

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x24

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x25

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x26

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x27

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x28

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x29

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x2a

    const-string v1, "forName"

    aput-object v1, p0, v0

    const/16 v0, 0x2b

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x2c

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0x2d

    const-string v1, "forName"

    aput-object v1, p0, v0

    const/16 v0, 0x2e

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0x2f

    const-string v1, "forName"

    aput-object v1, p0, v0

    const/16 v0, 0x30

    const-string v1, "classLoader"

    aput-object v1, p0, v0

    const/16 v0, 0x31

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x32

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x33

    const-string v1, "class"

    aput-object v1, p0, v0

    const/16 v0, 0x34

    const-string v1, "getAnnotation"

    aput-object v1, p0, v0

    const/16 v0, 0x35

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x36

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x37

    const-string v1, "name"

    aput-object v1, p0, v0

    const/16 v0, 0x38

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x39

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x3a

    const-string v1, "name"

    aput-object v1, p0, v0

    const/16 v0, 0x3b

    const-string v1, "phase"

    aput-object v1, p0, v0

    const/16 v0, 0x3c

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/16 v0, 0x3d

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/16 v0, 0x3e

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/16 v0, 0x3f

    const-string v1, "findASTTranformationClass"

    aput-object v1, p0, v0

    const/16 v0, 0x40

    const-string v1, "findPhase"

    aput-object v1, p0, v0

    const/16 v0, 0x41

    const-string v1, "newInstance"

    aput-object v1, p0, v0

    const/16 v0, 0x42

    const-string v1, "each"

    aput-object v1, p0, v0

    const/16 v0, 0x43

    const-string v1, "visit"

    aput-object v1, p0, v0

    const/16 v0, 0x44

    const-string v1, "visit"

    aput-object v1, p0, v0

    const/16 v0, 0x45

    const-string v1, "visit"

    aput-object v1, p0, v0

    const/16 v0, 0x46

    const-string v1, "visit"

    aput-object v1, p0, v0

    return-void
.end method
