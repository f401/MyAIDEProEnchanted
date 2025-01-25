.class public Lorg/codehaus/groovy/ast/builder/AstBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovy/lang/GroovyObject;


# static fields
.field public static DW:J

.field public static FH:J

.field private static Hw:Ljava/lang/ref/SoftReference;

.field private static j6:Lorg/codehaus/groovy/reflection/ClassInfo;


# instance fields
.field private transient v5:Lgroovy/lang/MetaClass;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->DW()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->FH:J

    const-wide v0, 0x1468b40f0e7L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->DW:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->j6()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->v5:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic DW()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->Hw:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/ast/builder/AstBuilder;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->Hw:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_17

    :cond_c
    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstBuilder;->FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/ast/builder/AstBuilder;->Hw:Ljava/lang/ref/SoftReference;

    :cond_17
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v2, "trim"

    aput-object v2, p0, v0

    const/4 v0, 0x2

    aput-object v1, p0, v0

    const/4 v0, 0x3

    aput-object v2, p0, v0

    const/4 v0, 0x4

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v3, "compile"

    aput-object v3, p0, v0

    const/4 v0, 0x6

    aput-object v1, p0, v0

    const/4 v0, 0x7

    aput-object v2, p0, v0

    const/16 v0, 0x8

    aput-object v1, p0, v0

    const/16 v0, 0x9

    aput-object v2, p0, v0

    const/16 v0, 0xa

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v2, "plus"

    aput-object v2, p0, v0

    const/16 v0, 0xc

    const-string v2, "currentTimeMillis"

    aput-object v2, p0, v0

    const/16 v0, 0xd

    aput-object v3, p0, v0

    const/16 v0, 0xe

    aput-object v1, p0, v0

    const/16 v0, 0xf

    const-string v2, "collect"

    aput-object v2, p0, v0

    const/16 v0, 0x10

    aput-object v1, p0, v0

    const/16 v0, 0x11

    aput-object v1, p0, v0

    const/16 v0, 0x12

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v1, "expression"

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v1, "CLASS_GENERATION"

    aput-object v1, p0, v0

    const/16 v0, 0x15

    aput-object v1, p0, v0

    const/16 v0, 0x16

    aput-object v1, p0, v0

    const/16 v0, 0x17

    aput-object v1, p0, v0

    const/16 v0, 0x18

    aput-object v1, p0, v0

    return-void
.end method


# virtual methods
.method protected synthetic j6()Lgroovy/lang/MetaClass;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_c

    const-class v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/builder/AstBuilder;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_c
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->VH()Lgroovy/lang/MetaClass;

    move-result-object v0

    return-object v0
.end method
