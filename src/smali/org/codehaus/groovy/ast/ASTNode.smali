.class public Lorg/codehaus/groovy/ast/ASTNode;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private Hw:I

.field private j6:I

.field private v5:Lorg/codehaus/groovy/util/ListHashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->j6:I

    iput v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->DW:I

    iput v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->FH:I

    iput v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->Hw:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->v5:Lorg/codehaus/groovy/util/ListHashMap;

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->DW:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->Hw:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->FH:I

    return v0
.end method

.method public v5()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/ast/ASTNode;->j6:I

    return v0
.end method
