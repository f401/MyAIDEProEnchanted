.class Lorg/codehaus/groovy/ast/builder/AstStringCompiler;
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

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->DW()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->FH:J

    const-wide v0, 0x1468b40f0c9L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->DW:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {p0}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->j6()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->v5:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public static synthetic DW()V
    .registers 1

    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    const/4 v0, 0x0

    sput-object v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->Hw:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static synthetic FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .registers 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->j6([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic Hw()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->Hw:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->FH()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->Hw:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method private static synthetic j6([Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "currentTimeMillis"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "DEFAULT"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    const-string v1, "codeSource"

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "addSource"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "getName"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    const-string v1, "compile"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v1, "getPhaseNumber"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    const-string v1, "inject"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "modules"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    const-string v1, "ast"

    aput-object v1, p0, v0

    return-void
.end method


# virtual methods
.method protected synthetic j6()Lgroovy/lang/MetaClass;
    .registers 3

    const-class v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;

    const-class v1, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    const-class v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->j6(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lorg/codehaus/groovy/ast/builder/AstStringCompiler;->j6:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->VH()Lgroovy/lang/MetaClass;

    move-result-object v0

    goto :goto_0
.end method
