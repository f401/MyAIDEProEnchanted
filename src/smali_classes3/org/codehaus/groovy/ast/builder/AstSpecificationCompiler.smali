.class public Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovy/lang/GroovyInterceptable;


# static fields
.field public static DW:J

.field private static FH:Ljava/lang/ref/SoftReference;

.field public static j6:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->j6()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->DW:J

    const-wide v0, 0x1468b40f013L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->j6:J

    return-void
.end method

.method private static synthetic DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xa7

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->FH:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->DW()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->FH:Ljava/lang/ref/SoftReference;

    :cond_17
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public static synthetic j6()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->FH()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/ast/builder/AstSpecificationCompiler;->FH:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 11

    const/4 v0, 0x0

    const-string v1, "call"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "size"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    aput-object v2, p0, v0

    const/4 v0, 0x3

    const-string v3, "<$constructor$>"

    aput-object v3, p0, v0

    const/4 v0, 0x4

    const-string v4, "collect"

    aput-object v4, p0, v0

    const/4 v0, 0x5

    aput-object v2, p0, v0

    const/4 v0, 0x6

    aput-object v2, p0, v0

    const/4 v0, 0x7

    aput-object v3, p0, v0

    const/16 v0, 0x8

    aput-object v4, p0, v0

    const/16 v0, 0x9

    aput-object v4, p0, v0

    const/16 v0, 0xa

    const-string v4, "minus"

    aput-object v4, p0, v0

    const/16 v0, 0xb

    aput-object v2, p0, v0

    const/16 v0, 0xc

    aput-object v3, p0, v0

    const/16 v0, 0xd

    aput-object v3, p0, v0

    const/16 v0, 0xe

    const-string v4, "clear"

    aput-object v4, p0, v0

    const/16 v0, 0xf

    aput-object v3, p0, v0

    const/16 v0, 0x10

    aput-object v1, p0, v0

    const/16 v0, 0x11

    aput-object v4, p0, v0

    const/16 v0, 0x12

    const-string v1, "addAll"

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v1, "captureAndCreateNode"

    aput-object v1, p0, v0

    const/16 v0, 0x15

    const-string v4, "simpleName"

    aput-object v4, p0, v0

    const/16 v0, 0x16

    const-string v5, "class"

    aput-object v5, p0, v0

    const/16 v0, 0x17

    aput-object v1, p0, v0

    const/16 v0, 0x18

    aput-object v4, p0, v0

    const/16 v0, 0x19

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    aput-object v1, p0, v0

    const/16 v0, 0x1b

    aput-object v4, p0, v0

    const/16 v0, 0x1c

    aput-object v5, p0, v0

    const/16 v0, 0x1d

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    aput-object v4, p0, v0

    const/16 v0, 0x1f

    aput-object v5, p0, v0

    const/16 v0, 0x20

    aput-object v1, p0, v0

    const/16 v0, 0x21

    aput-object v4, p0, v0

    const/16 v0, 0x22

    aput-object v5, p0, v0

    const/16 v0, 0x23

    const-string v4, "makeNodeWithClassParameter"

    aput-object v4, p0, v0

    const/16 v0, 0x24

    aput-object v4, p0, v0

    const/16 v0, 0x25

    const-string v4, "makeNode"

    aput-object v4, p0, v0

    const/16 v0, 0x26

    aput-object v4, p0, v0

    const/16 v0, 0x27

    aput-object v4, p0, v0

    const/16 v0, 0x28

    aput-object v4, p0, v0

    const/16 v0, 0x29

    const-string v5, "makeNodeFromList"

    aput-object v5, p0, v0

    const/16 v0, 0x2a

    aput-object v5, p0, v0

    const/16 v0, 0x2b

    aput-object v4, p0, v0

    const/16 v0, 0x2c

    const-string v6, "makeNodeWithStringParameter"

    aput-object v6, p0, v0

    const/16 v0, 0x2d

    aput-object v4, p0, v0

    const/16 v0, 0x2e

    aput-object v4, p0, v0

    const/16 v0, 0x2f

    aput-object v4, p0, v0

    const/16 v0, 0x30

    const-string v6, "leftShift"

    aput-object v6, p0, v0

    const/16 v0, 0x31

    const-string v7, "INSTANCE"

    aput-object v7, p0, v0

    const/16 v0, 0x32

    aput-object v6, p0, v0

    const/16 v0, 0x33

    aput-object v6, p0, v0

    const/16 v0, 0x34

    aput-object v3, p0, v0

    const/16 v0, 0x35

    const-string v7, "make"

    aput-object v7, p0, v0

    const/16 v0, 0x36

    aput-object v4, p0, v0

    const/16 v0, 0x37

    aput-object v4, p0, v0

    const/16 v0, 0x38

    aput-object v4, p0, v0

    const/16 v0, 0x39

    aput-object v4, p0, v0

    const/16 v0, 0x3a

    aput-object v4, p0, v0

    const/16 v0, 0x3b

    aput-object v4, p0, v0

    const/16 v0, 0x3c

    aput-object v6, p0, v0

    const/16 v0, 0x3d

    aput-object v3, p0, v0

    const/16 v0, 0x3e

    aput-object v6, p0, v0

    const/16 v0, 0x3f

    aput-object v3, p0, v0

    const/16 v0, 0x40

    aput-object v6, p0, v0

    const/16 v0, 0x41

    aput-object v3, p0, v0

    const/16 v0, 0x42

    aput-object v4, p0, v0

    const/16 v0, 0x43

    aput-object v4, p0, v0

    const/16 v0, 0x44

    const-string v8, "block"

    aput-object v8, p0, v0

    const/16 v0, 0x45

    aput-object v4, p0, v0

    const/16 v0, 0x46

    aput-object v4, p0, v0

    const/16 v0, 0x47

    aput-object v6, p0, v0

    const/16 v0, 0x48

    aput-object v3, p0, v0

    const/16 v0, 0x49

    const-string v8, "makeArrayOfNodes"

    aput-object v8, p0, v0

    const/16 v0, 0x4a

    const-string v9, "makeListOfNodes"

    aput-object v9, p0, v0

    const/16 v0, 0x4b

    aput-object v9, p0, v0

    const/16 v0, 0x4c

    aput-object v9, p0, v0

    const/16 v0, 0x4d

    aput-object v6, p0, v0

    const/16 v0, 0x4e

    aput-object v6, p0, v0

    const/16 v0, 0x4f

    aput-object v3, p0, v0

    const/16 v0, 0x50

    aput-object v4, p0, v0

    const/16 v0, 0x51

    aput-object v4, p0, v0

    const/16 v0, 0x52

    aput-object v4, p0, v0

    const/16 v0, 0x53

    aput-object v4, p0, v0

    const/16 v0, 0x54

    aput-object v4, p0, v0

    const/16 v0, 0x55

    aput-object v5, p0, v0

    const/16 v0, 0x56

    aput-object v4, p0, v0

    const/16 v0, 0x57

    aput-object v5, p0, v0

    const/16 v0, 0x58

    aput-object v4, p0, v0

    const/16 v0, 0x59

    aput-object v4, p0, v0

    const/16 v0, 0x5a

    aput-object v4, p0, v0

    const/16 v0, 0x5b

    aput-object v4, p0, v0

    const/16 v0, 0x5c

    aput-object v4, p0, v0

    const/16 v0, 0x5d

    aput-object v6, p0, v0

    const/16 v0, 0x5e

    aput-object v3, p0, v0

    const/16 v0, 0x5f

    aput-object v7, p0, v0

    const/16 v0, 0x60

    aput-object v4, p0, v0

    const/16 v0, 0x61

    aput-object v4, p0, v0

    const/16 v0, 0x62

    aput-object v4, p0, v0

    const/16 v0, 0x63

    aput-object v5, p0, v0

    const/16 v0, 0x64

    aput-object v9, p0, v0

    const/16 v0, 0x65

    aput-object v9, p0, v0

    const/16 v0, 0x66

    aput-object v9, p0, v0

    const/16 v0, 0x67

    aput-object v6, p0, v0

    const/16 v0, 0x68

    aput-object v7, p0, v0

    const/16 v0, 0x69

    aput-object v8, p0, v0

    const/16 v0, 0x6a

    aput-object v1, p0, v0

    const/16 v0, 0x6b

    aput-object v3, p0, v0

    const/16 v0, 0x6c

    aput-object v2, p0, v0

    const/16 v0, 0x6d

    aput-object v3, p0, v0

    const/16 v0, 0x6e

    aput-object v2, p0, v0

    const/16 v0, 0x6f

    aput-object v3, p0, v0

    const/16 v0, 0x70

    const-string v2, "each"

    aput-object v2, p0, v0

    const/16 v0, 0x71

    aput-object v2, p0, v0

    const/16 v0, 0x72

    aput-object v1, p0, v0

    const/16 v0, 0x73

    aput-object v1, p0, v0

    const/16 v0, 0x74

    aput-object v6, p0, v0

    const/16 v0, 0x75

    aput-object v3, p0, v0

    const/16 v0, 0x76

    aput-object v7, p0, v0

    const/16 v0, 0x77

    aput-object v9, p0, v0

    const/16 v0, 0x78

    aput-object v6, p0, v0

    const/16 v0, 0x79

    aput-object v7, p0, v0

    const/16 v0, 0x7a

    aput-object v1, p0, v0

    const/16 v0, 0x7b

    aput-object v6, p0, v0

    const/16 v0, 0x7c

    aput-object v3, p0, v0

    const/16 v0, 0x7d

    aput-object v5, p0, v0

    const/16 v0, 0x7e

    aput-object v1, p0, v0

    const/16 v0, 0x7f

    aput-object v6, p0, v0

    const/16 v0, 0x80

    aput-object v3, p0, v0

    const/16 v0, 0x81

    aput-object v7, p0, v0

    const/16 v0, 0x82

    aput-object v1, p0, v0

    const/16 v0, 0x83

    aput-object v1, p0, v0

    const/16 v0, 0x84

    aput-object v1, p0, v0

    const/16 v0, 0x85

    aput-object v1, p0, v0

    const/16 v0, 0x86

    aput-object v6, p0, v0

    const/16 v0, 0x87

    aput-object v3, p0, v0

    const/16 v0, 0x88

    aput-object v1, p0, v0

    const/16 v0, 0x89

    aput-object v3, p0, v0

    const/16 v0, 0x8a

    aput-object v3, p0, v0

    const/16 v0, 0x8b

    const-string v4, "lookupKeyword"

    aput-object v4, p0, v0

    const/16 v0, 0x8c

    const-string v4, "UNKNOWN"

    aput-object v4, p0, v0

    const/16 v0, 0x8d

    const-string v5, "lookupSymbol"

    aput-object v5, p0, v0

    const/16 v0, 0x8e

    aput-object v4, p0, v0

    const/16 v0, 0x8f

    aput-object v5, p0, v0

    const/16 v0, 0x90

    aput-object v4, p0, v0

    const/16 v0, 0x91

    aput-object v3, p0, v0

    const/16 v0, 0x92

    aput-object v4, p0, v0

    const/16 v0, 0x93

    aput-object v3, p0, v0

    const/16 v0, 0x94

    aput-object v6, p0, v0

    const/16 v0, 0x95

    aput-object v3, p0, v0

    const/16 v0, 0x96

    aput-object v3, p0, v0

    const/16 v0, 0x97

    aput-object v3, p0, v0

    const/16 v0, 0x98

    aput-object v6, p0, v0

    const/16 v0, 0x99

    aput-object v3, p0, v0

    const/16 v0, 0x9a

    aput-object v3, p0, v0

    const/16 v0, 0x9b

    const-string v4, "getFrom"

    aput-object v4, p0, v0

    const/16 v0, 0x9c

    aput-object v3, p0, v0

    const/16 v0, 0x9d

    const-string v3, "getTo"

    aput-object v3, p0, v0

    const/16 v0, 0x9e

    aput-object v1, p0, v0

    const/16 v0, 0x9f

    aput-object v2, p0, v0

    const/16 v0, 0xa0

    const-string v2, "entrySet"

    aput-object v2, p0, v0

    const/16 v0, 0xa1

    aput-object v1, p0, v0

    const/16 v0, 0xa2

    aput-object v1, p0, v0

    const/16 v0, 0xa3

    aput-object v1, p0, v0

    const/16 v0, 0xa4

    aput-object v1, p0, v0

    const/16 v0, 0xa5

    aput-object v1, p0, v0

    const/16 v0, 0xa6

    aput-object v1, p0, v0

    return-void
.end method
