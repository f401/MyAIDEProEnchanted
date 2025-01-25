.class public Lorg/codehaus/groovy/syntax/Token;
.super Lorg/codehaus/groovy/syntax/CSTNode;


# static fields
.field public static final DW:Lorg/codehaus/groovy/syntax/Token;

.field public static final j6:Lorg/codehaus/groovy/syntax/Token;


# instance fields
.field private FH:I

.field private Hw:I

.field private VH:I

.field private Zo:I

.field private v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/syntax/Token;

    invoke-direct {v0}, Lorg/codehaus/groovy/syntax/Token;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/syntax/Token;->j6:Lorg/codehaus/groovy/syntax/Token;

    new-instance v0, Lorg/codehaus/groovy/syntax/Token;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2, v1, v1}, Lorg/codehaus/groovy/syntax/Token;-><init>(ILjava/lang/String;II)V

    sput-object v0, Lorg/codehaus/groovy/syntax/Token;->DW:Lorg/codehaus/groovy/syntax/Token;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/syntax/CSTNode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->FH:I

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->Hw:I

    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/groovy/syntax/Token;->v5:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->Zo:I

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->VH:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Lorg/codehaus/groovy/syntax/CSTNode;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->FH:I

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->Hw:I

    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/groovy/syntax/Token;->v5:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->Zo:I

    iput v0, p0, Lorg/codehaus/groovy/syntax/Token;->VH:I

    iput p1, p0, Lorg/codehaus/groovy/syntax/Token;->FH:I

    iput p1, p0, Lorg/codehaus/groovy/syntax/Token;->Hw:I

    iput-object p2, p0, Lorg/codehaus/groovy/syntax/Token;->v5:Ljava/lang/String;

    iput p3, p0, Lorg/codehaus/groovy/syntax/Token;->Zo:I

    iput p4, p0, Lorg/codehaus/groovy/syntax/Token;->VH:I

    return-void
.end method

.method public static j6(III)Lorg/codehaus/groovy/syntax/Token;
    .registers 5

    new-instance v0, Lorg/codehaus/groovy/syntax/Token;

    invoke-static {p0}, Lorg/codehaus/groovy/syntax/Types;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/codehaus/groovy/syntax/Token;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method

.method public static j6(Ljava/lang/String;II)Lorg/codehaus/groovy/syntax/Token;
    .registers 5

    new-instance v0, Lorg/codehaus/groovy/syntax/Token;

    invoke-static {p0}, Lorg/codehaus/groovy/syntax/Types;->j6(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/codehaus/groovy/syntax/Token;-><init>(ILjava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public DW()Lorg/codehaus/groovy/syntax/Token;
    .registers 1

    return-object p0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/syntax/Token;->VH:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/syntax/Token;->Zo:I

    return v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/syntax/Token;->Hw:I

    return v0
.end method

.method public Zo()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/syntax/Token;->v5:Ljava/lang/String;

    return-object v0
.end method

.method public j6(I)Lorg/codehaus/groovy/syntax/CSTNode;
    .registers 3

    if-gtz p1, :cond_3

    return-object p0

    :cond_3
    new-instance p1, Lorg/codehaus/groovy/GroovyBugError;

    const-string v0, "attempt to access Token element other than root"

    invoke-direct {p1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u7()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/syntax/Token;->FH:I

    return v0
.end method
