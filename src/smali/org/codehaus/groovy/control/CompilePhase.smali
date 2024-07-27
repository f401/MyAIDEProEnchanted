.class public final enum Lorg/codehaus/groovy/control/CompilePhase;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/codehaus/groovy/control/CompilePhase;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lorg/codehaus/groovy/control/CompilePhase;

.field private static final EQ:[Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum FH:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum Hw:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum VH:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum Zo:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum gn:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum j6:Lorg/codehaus/groovy/control/CompilePhase;

.field public static tp:[Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum u7:Lorg/codehaus/groovy/control/CompilePhase;

.field public static final enum v5:Lorg/codehaus/groovy/control/CompilePhase;


# instance fields
.field we:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "INITIALIZATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->j6:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "PARSING"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->DW:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "CONVERSION"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->FH:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "SEMANTIC_ANALYSIS"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->Hw:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "CANONICALIZATION"

    const/4 v2, 0x4

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->v5:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "INSTRUCTION_SELECTION"

    const/4 v2, 0x5

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->Zo:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "CLASS_GENERATION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->VH:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "OUTPUT"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->gn:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "FINALIZATION"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->u7:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v0, Lorg/codehaus/groovy/control/CompilePhase;->j6:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v1, Lorg/codehaus/groovy/control/CompilePhase;->DW:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v2, Lorg/codehaus/groovy/control/CompilePhase;->FH:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v3, Lorg/codehaus/groovy/control/CompilePhase;->Hw:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v4, Lorg/codehaus/groovy/control/CompilePhase;->v5:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v5, Lorg/codehaus/groovy/control/CompilePhase;->Zo:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v6, Lorg/codehaus/groovy/control/CompilePhase;->VH:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v7, Lorg/codehaus/groovy/control/CompilePhase;->gn:Lorg/codehaus/groovy/control/CompilePhase;

    sget-object v8, Lorg/codehaus/groovy/control/CompilePhase;->u7:Lorg/codehaus/groovy/control/CompilePhase;

    const/16 v9, 0x9

    new-array v9, v9, [Lorg/codehaus/groovy/control/CompilePhase;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const/4 v10, 0x4

    aput-object v4, v9, v10

    const/4 v10, 0x5

    aput-object v5, v9, v10

    const/4 v10, 0x6

    aput-object v6, v9, v10

    const/4 v10, 0x7

    aput-object v7, v9, v10

    const/16 v10, 0x8

    aput-object v8, v9, v10

    sput-object v9, Lorg/codehaus/groovy/control/CompilePhase;->EQ:[Lorg/codehaus/groovy/control/CompilePhase;

    const/16 v9, 0xa

    new-array v9, v9, [Lorg/codehaus/groovy/control/CompilePhase;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    const/16 v0, 0x9

    aput-object v8, v9, v0

    sput-object v9, Lorg/codehaus/groovy/control/CompilePhase;->tp:[Lorg/codehaus/groovy/control/CompilePhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/codehaus/groovy/control/CompilePhase;->we:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/codehaus/groovy/control/CompilePhase;
    .registers 2

    const-class v0, Lorg/codehaus/groovy/control/CompilePhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/control/CompilePhase;

    return-object v0
.end method

.method public static values()[Lorg/codehaus/groovy/control/CompilePhase;
    .registers 1

    sget-object v0, Lorg/codehaus/groovy/control/CompilePhase;->EQ:[Lorg/codehaus/groovy/control/CompilePhase;

    invoke-virtual {v0}, [Lorg/codehaus/groovy/control/CompilePhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/groovy/control/CompilePhase;

    return-object v0
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/control/CompilePhase;->we:I

    return v0
.end method
