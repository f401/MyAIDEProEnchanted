.class public final enum Lorg/codehaus/groovy/control/CompilePhase;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 21

    new-instance v0, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v1, "INITIALIZATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/control/CompilePhase;->j6:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v1, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v4, "PARSING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/codehaus/groovy/control/CompilePhase;->DW:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v4, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v6, "CONVERSION"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/codehaus/groovy/control/CompilePhase;->FH:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v6, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v8, "SEMANTIC_ANALYSIS"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/codehaus/groovy/control/CompilePhase;->Hw:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v8, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v10, "CANONICALIZATION"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/codehaus/groovy/control/CompilePhase;->v5:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v10, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v12, "INSTRUCTION_SELECTION"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/codehaus/groovy/control/CompilePhase;->Zo:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v12, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v14, "CLASS_GENERATION"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/codehaus/groovy/control/CompilePhase;->VH:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v14, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v13, "OUTPUT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/codehaus/groovy/control/CompilePhase;->gn:Lorg/codehaus/groovy/control/CompilePhase;

    new-instance v13, Lorg/codehaus/groovy/control/CompilePhase;

    const-string v15, "FINALIZATION"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lorg/codehaus/groovy/control/CompilePhase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/codehaus/groovy/control/CompilePhase;->u7:Lorg/codehaus/groovy/control/CompilePhase;

    new-array v15, v9, [Lorg/codehaus/groovy/control/CompilePhase;

    aput-object v0, v15, v2

    aput-object v1, v15, v3

    aput-object v4, v15, v5

    aput-object v6, v15, v7

    const/16 v19, 0x4

    aput-object v8, v15, v19

    const/16 v17, 0x5

    aput-object v10, v15, v17

    const/16 v16, 0x6

    aput-object v12, v15, v16

    const/16 v18, 0x7

    aput-object v14, v15, v18

    aput-object v13, v15, v11

    sput-object v15, Lorg/codehaus/groovy/control/CompilePhase;->EQ:[Lorg/codehaus/groovy/control/CompilePhase;

    const/16 v15, 0xa

    new-array v15, v15, [Lorg/codehaus/groovy/control/CompilePhase;

    const/16 v20, 0x0

    aput-object v20, v15, v2

    aput-object v0, v15, v3

    aput-object v1, v15, v5

    aput-object v4, v15, v7

    const/4 v0, 0x4

    aput-object v6, v15, v0

    const/4 v0, 0x5

    aput-object v8, v15, v0

    const/4 v0, 0x6

    aput-object v10, v15, v0

    const/4 v0, 0x7

    aput-object v12, v15, v0

    aput-object v14, v15, v11

    aput-object v13, v15, v9

    sput-object v15, Lorg/codehaus/groovy/control/CompilePhase;->tp:[Lorg/codehaus/groovy/control/CompilePhase;

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

    move-result-object p0

    check-cast p0, Lorg/codehaus/groovy/control/CompilePhase;

    return-object p0
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
