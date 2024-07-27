.class public Lcom/sun/tools/javac/code/Symtab;
.super Ljava/lang/Object;
.source "Symtab.java"


# static fields
.field protected static final symtabKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/code/Symtab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final annotationTargetType:Lcom/sun/tools/javac/code/Type;

.field public final annotationType:Lcom/sun/tools/javac/code/Type;

.field public final arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final arrayCloneMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field public final arraysType:Lcom/sun/tools/javac/code/Type;

.field public final assertionErrorType:Lcom/sun/tools/javac/code/Type;

.field public final autoCloseableClose:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field public final autoCloseableType:Lcom/sun/tools/javac/code/Type;

.field public final booleanType:Lcom/sun/tools/javac/code/Type;

.field public final botType:Lcom/sun/tools/javac/code/Type;

.field public final boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final boxedName:[Lcom/sun/tools/javac/util/Name;

.field public final byteType:Lcom/sun/tools/javac/code/Type;

.field public final charType:Lcom/sun/tools/javac/code/Type;

.field public final classLoaderType:Lcom/sun/tools/javac/code/Type;

.field public final classNotFoundExceptionType:Lcom/sun/tools/javac/code/Type;

.field public final classType:Lcom/sun/tools/javac/code/Type;

.field public final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public final cloneNotSupportedExceptionType:Lcom/sun/tools/javac/code/Type;

.field public final cloneableType:Lcom/sun/tools/javac/code/Type;

.field public final collectionsType:Lcom/sun/tools/javac/code/Type;

.field public final comparableType:Lcom/sun/tools/javac/code/Type;

.field public final deprecatedType:Lcom/sun/tools/javac/code/Type;

.field public final doubleType:Lcom/sun/tools/javac/code/Type;

.field public final enumFinalFinalize:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field public final enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field public final errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final errType:Lcom/sun/tools/javac/code/Type;

.field public final errorType:Lcom/sun/tools/javac/code/Type;

.field public final exceptionType:Lcom/sun/tools/javac/code/Type;

.field public final floatType:Lcom/sun/tools/javac/code/Type;

.field public final illegalArgumentExceptionType:Lcom/sun/tools/javac/code/Type;

.field public final inheritedType:Lcom/sun/tools/javac/code/Type;

.field public final intType:Lcom/sun/tools/javac/code/Type;

.field public final interruptedExceptionType:Lcom/sun/tools/javac/code/Type;

.field public final iterableType:Lcom/sun/tools/javac/code/Type;

.field public final iteratorType:Lcom/sun/tools/javac/code/Type;

.field public final lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

.field public final listType:Lcom/sun/tools/javac/code/Type;

.field public final longType:Lcom/sun/tools/javac/code/Type;

.field public final methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final methodHandleType:Lcom/sun/tools/javac/code/Type;

.field private final names:Lcom/sun/tools/javac/util/Names;

.field public final noClassDefFoundErrorType:Lcom/sun/tools/javac/code/Type;

.field public final noSuchFieldErrorType:Lcom/sun/tools/javac/code/Type;

.field public final noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

.field public final nullcheck:Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

.field public final objectType:Lcom/sun/tools/javac/code/Type;

.field public final overrideType:Lcom/sun/tools/javac/code/Type;

.field public final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field public final polymorphicSignatureType:Lcom/sun/tools/javac/code/Type;

.field public final predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final proprietaryType:Lcom/sun/tools/javac/code/Type;

.field private final reader:Lcom/sun/tools/javac/jvm/ClassReader;

.field public final retentionType:Lcom/sun/tools/javac/code/Type;

.field public final rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field public final runtimeExceptionType:Lcom/sun/tools/javac/code/Type;

.field public final serializableType:Lcom/sun/tools/javac/code/Type;

.field public final shortType:Lcom/sun/tools/javac/code/Type;

.field public final stringBufferType:Lcom/sun/tools/javac/code/Type;

.field public final stringBuilderType:Lcom/sun/tools/javac/code/Type;

.field public final stringType:Lcom/sun/tools/javac/code/Type;

.field public final suppressWarningsType:Lcom/sun/tools/javac/code/Type;

.field public final systemType:Lcom/sun/tools/javac/code/Type;

.field private final target:Lcom/sun/tools/javac/jvm/Target;

.field public final throwableType:Lcom/sun/tools/javac/code/Type;

.field public final trustMeType:Lcom/sun/tools/javac/code/Type;

.field public final typeOfTag:[Lcom/sun/tools/javac/code/Type;

.field public final unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

.field public final unknownType:Lcom/sun/tools/javac/code/Type;

.field public final unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

.field public final voidType:Lcom/sun/tools/javac/code/Type$JCNoType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/Symtab;->symtabKey:Lcom/sun/tools/javac/util/Context$Key;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const/4 v13, 0x0

    const/16 v12, 0x94

    const/4 v11, 0x0

    const/16 v10, 0x115

    const/16 v9, 0x100

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    .line 160
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    .line 161
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    .line 162
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    .line 163
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    .line 164
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    .line 165
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    .line 166
    new-instance v0, Lcom/sun/tools/javac/code/Type;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Type;-><init>(ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    .line 167
    new-instance v0, Lcom/sun/tools/javac/code/Type$BottomType;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/Type$BottomType;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    .line 168
    new-instance v0, Lcom/sun/tools/javac/code/Type$JCNoType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Type$JCNoType;-><init>(I)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 267
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    .line 271
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/sun/tools/javac/util/Name;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->packages:Ljava/util/Map;

    .line 435
    sget-object v0, Lcom/sun/tools/javac/code/Symtab;->symtabKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 437
    invoke-static {p1}, Lcom/sun/tools/javac/util/Names;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    .line 438
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/Target;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->target:Lcom/sun/tools/javac/jvm/Target;

    .line 441
    new-instance v0, Lcom/sun/tools/javac/code/Symtab$3;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1, v11}, Lcom/sun/tools/javac/code/Symtab$3;-><init>(Lcom/sun/tools/javac/code/Symtab;ILcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    .line 449
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    invoke-direct {v0, v1, v11}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 450
    invoke-static {p1}, Lcom/sun/tools/javac/util/JavacMessages;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/JavacMessages;

    move-result-object v0

    .line 451
    new-instance v1, Lcom/sun/tools/javac/code/Symtab$4;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/sun/tools/javac/code/Symtab$4;-><init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JavacMessages;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    .line 456
    new-instance v0, Lcom/sun/tools/javac/code/Symtab$5;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    sget-object v5, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab$5;-><init>(Lcom/sun/tools/javac/code/Symtab;JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 461
    iput v13, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->kind:I

    .line 464
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000009

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->any:Lcom/sun/tools/javac/util/Name;

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 465
    new-instance v0, Lcom/sun/tools/javac/code/Type$ErrorType;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    sget-object v2, Lcom/sun/tools/javac/code/Type;->noType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Lcom/sun/tools/javac/code/Type;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    .line 467
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000009

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    const-string v4, "<any?>"

    invoke-virtual {v0, v4}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 468
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v2}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 469
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 472
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "byte"

    const-string v2, "Byte"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "short"

    const-string v2, "Short"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "char"

    const-string v2, "Character"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "int"

    const-string v2, "Integer"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "long"

    const-string v2, "Long"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "float"

    const-string v2, "Float"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "double"

    const-string v2, "Double"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "boolean"

    const-string v2, "Boolean"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    const-string v1, "void"

    const-string v2, "Void"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<nulltype>"

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 483
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->unknownType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->unknownSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 486
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000001

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Array:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 489
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000001

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Bound:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 490
    new-instance v1, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 493
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000001

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->Method:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->noSymbol:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 494
    new-instance v1, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->boundClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 497
    new-instance v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/32 v2, 0x40000001

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 498
    new-instance v0, Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 499
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 502
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 503
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 504
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 505
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 506
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 507
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 508
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 509
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 510
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 513
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->errSymbol:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 515
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->classes:Ljava/util/Map;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {p1}, Lcom/sun/tools/javac/jvm/ClassReader;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/jvm/ClassReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    .line 518
    invoke-virtual {v0, p0}, Lcom/sun/tools/javac/jvm/ClassReader;->init(Lcom/sun/tools/javac/code/Symtab;)V

    .line 521
    const-string v0, "java.lang.Object"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 522
    const-string v0, "java.lang.Class"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->classType:Lcom/sun/tools/javac/code/Type;

    .line 523
    const-string v0, "java.lang.String"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    .line 524
    const-string v0, "java.lang.StringBuffer"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->stringBufferType:Lcom/sun/tools/javac/code/Type;

    .line 525
    const-string v0, "java.lang.StringBuilder"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->stringBuilderType:Lcom/sun/tools/javac/code/Type;

    .line 526
    const-string v0, "java.lang.Cloneable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->cloneableType:Lcom/sun/tools/javac/code/Type;

    .line 527
    const-string v0, "java.lang.Throwable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->throwableType:Lcom/sun/tools/javac/code/Type;

    .line 528
    const-string v0, "java.io.Serializable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    .line 529
    const-string v0, "java.lang.invoke.MethodHandle"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->methodHandleType:Lcom/sun/tools/javac/code/Type;

    .line 530
    const-string v0, "java.lang.invoke.MethodHandle$PolymorphicSignature"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->polymorphicSignatureType:Lcom/sun/tools/javac/code/Type;

    .line 531
    const-string v0, "java.lang.Error"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->errorType:Lcom/sun/tools/javac/code/Type;

    .line 532
    const-string v0, "java.lang.IllegalArgumentException"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->illegalArgumentExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 533
    const-string v0, "java.lang.InterruptedException"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->interruptedExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 534
    const-string v0, "java.lang.Exception"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->exceptionType:Lcom/sun/tools/javac/code/Type;

    .line 535
    const-string v0, "java.lang.RuntimeException"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->runtimeExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 536
    const-string v0, "java.lang.ClassNotFoundException"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->classNotFoundExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 537
    const-string v0, "java.lang.NoClassDefFoundError"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->noClassDefFoundErrorType:Lcom/sun/tools/javac/code/Type;

    .line 538
    const-string v0, "java.lang.NoSuchFieldError"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->noSuchFieldErrorType:Lcom/sun/tools/javac/code/Type;

    .line 539
    const-string v0, "java.lang.AssertionError"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->assertionErrorType:Lcom/sun/tools/javac/code/Type;

    .line 540
    const-string v0, "java.lang.CloneNotSupportedException"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->cloneNotSupportedExceptionType:Lcom/sun/tools/javac/code/Type;

    .line 541
    const-string v0, "java.lang.annotation.Annotation"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->annotationType:Lcom/sun/tools/javac/code/Type;

    .line 542
    const-string v0, "java.lang.ClassLoader"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->classLoaderType:Lcom/sun/tools/javac/code/Type;

    .line 543
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->java_lang_Enum:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 544
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->finalize:Lcom/sun/tools/javac/util/Name;

    .line 547
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    .line 548
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide v2, 0x2000000014L

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->enumSym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->enumFinalFinalize:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 550
    const-string v0, "java.util.List"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->listType:Lcom/sun/tools/javac/code/Type;

    .line 551
    const-string v0, "java.util.Collections"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->collectionsType:Lcom/sun/tools/javac/code/Type;

    .line 552
    const-string v0, "java.lang.Comparable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->comparableType:Lcom/sun/tools/javac/code/Type;

    .line 553
    const-string v0, "java.util.Arrays"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arraysType:Lcom/sun/tools/javac/code/Type;

    .line 554
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->target:Lcom/sun/tools/javac/jvm/Target;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/Target;->hasIterable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "java.lang.Iterable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 556
    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->iterableType:Lcom/sun/tools/javac/code/Type;

    .line 557
    const-string v0, "java.util.Iterator"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->iteratorType:Lcom/sun/tools/javac/code/Type;

    .line 558
    const-string v0, "java.lang.annotation.Target"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->annotationTargetType:Lcom/sun/tools/javac/code/Type;

    .line 559
    const-string v0, "java.lang.Override"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->overrideType:Lcom/sun/tools/javac/code/Type;

    .line 560
    const-string v0, "java.lang.annotation.Retention"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->retentionType:Lcom/sun/tools/javac/code/Type;

    .line 561
    const-string v0, "java.lang.Deprecated"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->deprecatedType:Lcom/sun/tools/javac/code/Type;

    .line 562
    const-string v0, "java.lang.SuppressWarnings"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->suppressWarningsType:Lcom/sun/tools/javac/code/Type;

    .line 563
    const-string v0, "java.lang.annotation.Inherited"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->inheritedType:Lcom/sun/tools/javac/code/Type;

    .line 564
    const-string v0, "java.lang.System"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->systemType:Lcom/sun/tools/javac/code/Type;

    .line 565
    const-string v0, "java.lang.AutoCloseable"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    .line 566
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->close:Lcom/sun/tools/javac/util/Name;

    .line 568
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    iget-object v7, p0, Lcom/sun/tools/javac/code/Symtab;->exceptionType:Lcom/sun/tools/javac/code/Type;

    .line 569
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {v7}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->autoCloseableClose:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 571
    const-string v0, "java.lang.SafeVarargs"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->trustMeType:Lcom/sun/tools/javac/code/Type;

    .line 573
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->autoCloseableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 574
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->cloneableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 575
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 576
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->polymorphicSignatureType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 577
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 578
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 579
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->voidType:Lcom/sun/tools/javac/code/Type$JCNoType;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->synthesizeBoxTypeIfMissing(Lcom/sun/tools/javac/code/Type;)V

    .line 584
    const-string v0, "sun.Proprietary+Annotation"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 585
    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->proprietaryType:Lcom/sun/tools/javac/code/Type;

    .line 586
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 587
    iput-object v11, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 588
    const-wide/32 v2, 0x40002201

    iput-wide v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flags_field:J

    .line 589
    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->erasure_field:Lcom/sun/tools/javac/code/Type;

    .line 590
    new-instance v2, Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v2, v1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 591
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 592
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->allparams_field:Lcom/sun/tools/javac/util/List;

    .line 593
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->annotationType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 594
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 599
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 600
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 601
    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->cloneableType:Lcom/sun/tools/javac/code/Type;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->serializableType:Lcom/sun/tools/javac/code/Type;

    invoke-static {v1, v2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    .line 602
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    new-instance v1, Lcom/sun/tools/javac/code/Scope;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 603
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x11

    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->length:Lcom/sun/tools/javac/util/Name;

    iget-object v5, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    .line 608
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->lengthVar:Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 609
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v0, Lcom/sun/tools/javac/util/Names;->clone:Lcom/sun/tools/javac/util/Name;

    .line 612
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    .line 613
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    const-wide/16 v2, 0x1

    new-instance v5, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v6, v7, v8}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->arrayCloneMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 615
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->arrayClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->arrayCloneMethod:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 618
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    invoke-direct {p0, v1, v0, v0, v13}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 619
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    invoke-direct {p0, v1, v0, v0, v13}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 620
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    invoke-direct {p0, v1, v0, v0, v13}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 621
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    invoke-direct {p0, v1, v0, v0, v13}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 623
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v2, 0x77

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 624
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v2, 0x76

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 625
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v2, 0x75

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 626
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v2, 0x74

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 628
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "~"

    const/16 v2, 0x83

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 629
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "~"

    const/16 v2, 0x82

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 631
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x63

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 632
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x62

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 633
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x61

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 634
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x60

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 635
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x60

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 636
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x60

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 637
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "++"

    const/16 v2, 0x60

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 639
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x67

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 640
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x66

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 641
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x65

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 642
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 643
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->charType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 644
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->shortType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 645
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->byteType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "--"

    const/16 v2, 0x64

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 647
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!"

    const/16 v2, 0x101

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 648
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<*nullchk*>"

    const/16 v2, 0x114

    invoke-direct {p0, v1, v0, v0, v2}, Lcom/sun/tools/javac/code/Symtab;->enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->nullcheck:Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    .line 651
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 652
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 653
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 654
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 655
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 656
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 657
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 658
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 659
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 660
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 661
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 662
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 663
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 664
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 665
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->stringType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 668
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 669
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 670
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 671
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 672
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 673
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 674
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    move-object v0, p0

    move-object v4, v2

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 675
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 676
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 677
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 678
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 679
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 680
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    move-object v0, p0

    move-object v4, v3

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 682
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    const/16 v5, 0x63

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 683
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    const/16 v5, 0x62

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 684
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    const/16 v5, 0x61

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 685
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "+"

    const/16 v5, 0x60

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 687
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v5, 0x67

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 688
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v5, 0x66

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 689
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v5, 0x65

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 690
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "-"

    const/16 v5, 0x64

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 692
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "*"

    const/16 v5, 0x6b

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 693
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "*"

    const/16 v5, 0x6a

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 694
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "*"

    const/16 v5, 0x69

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 695
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "*"

    const/16 v5, 0x68

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 697
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "/"

    const/16 v5, 0x6f

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 698
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "/"

    const/16 v5, 0x6e

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 699
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "/"

    const/16 v5, 0x6d

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 700
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "/"

    const/16 v5, 0x6c

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 702
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "%"

    const/16 v5, 0x73

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 703
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "%"

    const/16 v5, 0x72

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 704
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "%"

    const/16 v5, 0x71

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 705
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "%"

    const/16 v5, 0x70

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 707
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "&"

    const/16 v5, 0x7e

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 708
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "&"

    const/16 v5, 0x7f

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 709
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "&"

    const/16 v5, 0x7e

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 711
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "|"

    const/16 v5, 0x80

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 712
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "|"

    const/16 v5, 0x81

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 713
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "|"

    const/16 v5, 0x80

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 715
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "^"

    const/16 v5, 0x82

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 716
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "^"

    const/16 v5, 0x83

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 717
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "^"

    const/16 v5, 0x82

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 719
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<<"

    const/16 v5, 0x10f

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 720
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<<"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x10e

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 721
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<<"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x79

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 722
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<<"

    const/16 v5, 0x78

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 724
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>"

    const/16 v5, 0x111

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 725
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x110

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 726
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x7b

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 727
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>"

    const/16 v5, 0x7a

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 729
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>>"

    const/16 v5, 0x113

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 730
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>>"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x112

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 731
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>>"

    iget-object v3, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x7d

    move-object v0, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 732
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">>>"

    const/16 v5, 0x7c

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 734
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x98

    const/16 v6, 0x9b

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 735
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x96

    const/16 v6, 0x9b

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 736
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x9b

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 737
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 739
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x97

    const/16 v6, 0x9d

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 740
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x95

    const/16 v6, 0x9d

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 741
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x9d

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 742
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">"

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa3

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 744
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x98

    const/16 v6, 0x9e

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 745
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x96

    const/16 v6, 0x9e

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 746
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x9e

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 747
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "<="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa4

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 749
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x97

    const/16 v6, 0x9c

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 750
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x95

    const/16 v6, 0x9c

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 751
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x9c

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 752
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, ">="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa2

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 754
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa5

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 755
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    const/16 v5, 0x9f

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 756
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x97

    const/16 v6, 0x99

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 757
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x95

    const/16 v6, 0x99

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 758
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x99

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 759
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "=="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x9f

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 761
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->objectType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa6

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 762
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    const/16 v5, 0xa0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 763
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->doubleType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x97

    const/16 v6, 0x9a

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 764
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->floatType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0x95

    const/16 v6, 0x9a

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 765
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->longType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v6, 0x9a

    move-object v0, p0

    move-object v3, v2

    move v5, v12

    invoke-direct/range {v0 .. v6}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V

    .line 766
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->intType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "!="

    iget-object v4, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const/16 v5, 0xa0

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 768
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "&&"

    const/16 v5, 0x102

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 769
    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->booleanType:Lcom/sun/tools/javac/code/Type;

    const-string v1, "||"

    const/16 v5, 0x103

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 770
    return-void

    .line 556
    :cond_0
    const-string v0, "java.util.Collection"

    invoke-direct {p0, v0}, Lcom/sun/tools/javac/code/Symtab;->enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/jvm/Target;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->target:Lcom/sun/tools/javac/jvm/Target;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/tools/javac/code/Symtab;)Lcom/sun/tools/javac/util/Names;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    return-object v0
.end method

.method private enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V
    .registers 13

    .line 332
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    .line 334
    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 335
    invoke-static {p2, p3}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 336
    new-instance v3, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    new-instance v4, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v4, v2, p4, v5, v6}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v1, v4, p5, v2}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V

    .line 332
    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 339
    return-void
.end method

.method private enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;II)V
    .registers 13

    .line 349
    shl-int/lit8 v0, p5, 0x9

    or-int v5, v0, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Symtab;->enterBinop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)V

    .line 351
    return-void
.end method

.method private enterClass(Ljava/lang/String;)Lcom/sun/tools/javac/code/Type;
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method private enterConstant(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Symbol$VarSymbol;
    .registers 10

    .line 312
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    .line 314
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    const-wide/16 v2, 0x19

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 317
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 319
    return-object v1
.end method

.method private enterUnop(Ljava/lang/String;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;
    .registers 11

    .line 363
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    .line 364
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 365
    invoke-static {p2}, Lcom/sun/tools/javac/util/List;->of(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 367
    new-instance v2, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;

    new-instance v3, Lcom/sun/tools/javac/code/Type$MethodType;

    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/tools/javac/code/Symtab;->methodClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v1, p3, v4, v5}, Lcom/sun/tools/javac/code/Type$MethodType;-><init>(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v0, v3, p4, v1}, Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;ILcom/sun/tools/javac/code/Symbol;)V

    .line 371
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->predefClass:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members()Lcom/sun/tools/javac/code/Scope;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/code/Scope;->enter(Lcom/sun/tools/javac/code/Symbol;)V

    .line 372
    return-object v2
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Symtab;
    .registers 2

    .line 151
    sget-object v0, Lcom/sun/tools/javac/code/Symtab;->symtabKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symtab;

    .line 152
    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/sun/tools/javac/code/Symtab;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Symtab;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 154
    :cond_0
    return-object v0
.end method


# virtual methods
.method public initType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V
    .registers 5

    .line 287
    iput-object p2, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 288
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->typeOfTag:[Lcom/sun/tools/javac/code/Type;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    aput-object p1, v0, v1

    .line 289
    return-void
.end method

.method public initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)V
    .registers 10

    .line 292
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    .line 295
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v4

    iget-object v6, p0, Lcom/sun/tools/javac/code/Symtab;->rootPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 292
    invoke-virtual {p0, p1, v1}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$ClassSymbol;)V

    .line 296
    return-void
.end method

.method public initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Symtab;->initType(Lcom/sun/tools/javac/code/Type;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    iget v1, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    iget-object v2, p0, Lcom/sun/tools/javac/code/Symtab;->names:Lcom/sun/tools/javac/util/Names;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    return-void
.end method

.method public synthesizeBoxTypeIfMissing(Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 399
    iget-object v0, p0, Lcom/sun/tools/javac/code/Symtab;->reader:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Symtab;->boxedName:[Lcom/sun/tools/javac/util/Name;

    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->enterClass(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 400
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 401
    if-eqz v1, :cond_0

    .line 402
    new-instance v2, Lcom/sun/tools/javac/code/Symtab$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/sun/tools/javac/code/Symtab$2;-><init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Symbol$Completer;Lcom/sun/tools/javac/code/Type;)V

    iput-object v2, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 429
    :cond_0
    return-void
.end method

.method public synthesizeEmptyInterfaceIfMissing(Lcom/sun/tools/javac/code/Type;)V
    .registers 5

    .line 383
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 384
    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    new-instance v2, Lcom/sun/tools/javac/code/Symtab$1;

    invoke-direct {v2, p0, v0}, Lcom/sun/tools/javac/code/Symtab$1;-><init>(Lcom/sun/tools/javac/code/Symtab;Lcom/sun/tools/javac/code/Symbol$Completer;)V

    iput-object v2, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->completer:Lcom/sun/tools/javac/code/Symbol$Completer;

    .line 396
    :cond_0
    return-void
.end method
