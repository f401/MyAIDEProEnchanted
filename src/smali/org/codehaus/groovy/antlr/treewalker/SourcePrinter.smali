.class public Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;
.super Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;


# instance fields
.field private DW:I

.field private FH:I

.field private final Hw:Z

.field private final VH:Ljava/util/Stack;

.field private Zo:Ljava/lang/String;

.field private gn:I

.field private final j6:[Ljava/lang/String;

.field protected final v5:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;-><init>(Ljava/io/PrintStream;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;[Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/VisitorAdapter;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6:[Ljava/lang/String;

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->v5:Ljava/io/PrintStream;

    iput-boolean p3, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Hw:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    return-void
.end method

.method private FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    return-object v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "\n"

    const-string v1, "\\\\<<REMOVE>>n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<<REMOVE>>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AE(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public AL(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v0, "<command>"

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, " "

    const-string v4, " "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "("

    const-string v4, " "

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Ak(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, ".."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public An(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    const-string v5, "--"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public BR(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " != "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public BT(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "+"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Bx(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " < "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public C(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "void"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public CN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, ":"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Cz(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-nez v0, :cond_0

    const-string v3, "[:]"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "["

    const-string v5, "]"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    if-eqz p5, :cond_2

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    invoke-virtual {p0, p1, p2, p5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public DY(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-lez v0, :cond_0

    const-string v3, "synchronized ("

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "synchronized "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected Dm(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->aM()I

    move-result v1

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    if-nez v0, :cond_0

    iput v1, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    :cond_0
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Hw:Z

    if-eqz v0, :cond_5

    if-ne p2, v3, :cond_1

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5

    :cond_1
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->v5:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->v5:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    iput v1, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    :cond_3
    if-eq p2, v3, :cond_4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    if-le v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->v5:Ljava/io/PrintStream;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH:I

    :cond_6
    return-void
.end method

.method public E4(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "case "

    const/4 v4, 0x0

    const-string v5, ":"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public EQ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "super("

    const-string v4, " "

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Eq(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "this"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Ev(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "byte"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public F3(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "super"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public FH(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " =~ "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public FN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " /= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public GK(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " += "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Gj(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " & "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public HO(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " ==~ "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Hl(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "native "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " <<= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public IS(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public J0(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "?."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public J8(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " = "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Jl(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "("

    const/4 v4, 0x0

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Jm(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "throw "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Lx(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " >> "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Lz(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "class "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Zo:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public ME(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " -= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public MP(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public Mr(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "threadsafe "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Mz(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, ":"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public N0(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, " ; "

    const/4 v4, 0x0

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public NZ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x36

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v1

    invoke-virtual {v1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Nh(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " >= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OM(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "false"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "try "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Od(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "break "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public P8(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "for "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PH(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public PT(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "("

    const-string v4, " in "

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Pa(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "public "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Q6(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 7

    const/16 v3, 0x15

    const/4 v2, 0x4

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    if-eq v1, v3, :cond_1

    const-string v1, "def"

    invoke-virtual {p0, p1, p2, v1}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    if-ne p2, v2, :cond_3

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, " "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-ne p2, v2, :cond_3

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public QO(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public QX(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public Qs(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "@interface "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public RW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "default"

    const/4 v4, 0x0

    const-string v5, ":"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public S4(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "-"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public SI(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "("

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const-string v0, ", "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-le v0, v1, :cond_4

    const-string v0, ") "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, " "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public Sc(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "**"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Sf(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->gn:I

    const-string v0, "\""

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->gn:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string v0, "$"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->gn:I

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const-string v0, "\""

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public TI(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "trait "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x57

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Zo:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public U2(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public UF(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "<"

    const-string v4, ", "

    const-string v5, ">"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public VH(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "<"

    const-string v4, ", "

    const-string v5, ">"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Vq(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " ; "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public WB(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " | "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Ws(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "*:"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public XG(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "throws "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Xa(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " << "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Yi(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "["

    const/4 v4, 0x0

    const-string v5, "]"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Za(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "finally "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Zo(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v3, "assert "

    const-string v5, " : "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "assert "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a5(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    const-string v1, "MULTICATCH_TYPES"

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getFirstChild()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    invoke-interface {v0}, Lgroovyjarjarantlr/collections/AST;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a8(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "private "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "strictfp "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b1(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "["

    const/4 v4, 0x0

    const-string v5, "]"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ba(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    const-string v0, "{"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    const-string v0, "}"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public br(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "interface "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cT(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " extends "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cX(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "*"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ca(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    iget-object v3, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Zo:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cb(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public cc(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " > "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ct(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "++"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "() "

    const-string v4, "default "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e9(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->getNextSibling()Lgroovyjarjarantlr/collections/AST;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const-string v5, ", "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public eN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "true"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eQ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    const-string v5, "++"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eU(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v6, "[]"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, v4

    invoke-virtual/range {v1 .. v6}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v3, "["

    const-string v5, "]"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ee(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public ef(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " &= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ei(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lorg/codehaus/groovy/antlr/GroovySourceAST;->DW(I)Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v3, "new "

    const-string v4, "("

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "new "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ep(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "enum "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public er(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " *= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public et(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    :cond_1
    return-void
.end method

.method public fN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "*."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fP(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " %= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fd(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " + "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fh(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g0(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " % "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gG(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "("

    const-string v4, "; "

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "protected "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public gy(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public h2(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "float"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hG(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "short"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hK(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " && "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hp(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "final "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hx(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "this("

    const-string v4, " "

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hz(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, ".&"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public iW(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ir(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "~"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;)V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method protected j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Dm(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->Dm(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V

    :cond_1
    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->v5:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method protected j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p4}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    if-eqz p5, :cond_2

    invoke-virtual {p0, p1, p2, p5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public jD(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const-string v3, "("

    const-string v4, ", "

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v4, ", "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public jJ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " / "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jO(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "static "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ji(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6:[Ljava/lang/String;

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public jn(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "null"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jw(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "abstract "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kQ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "transient "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kf(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "{"

    const-string v4, "-> "

    const-string v5, "}"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public lg(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "("

    const/4 v4, 0x0

    const-string v5, ")"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public lp(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " instanceof "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public mb(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " |= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n5(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " ^ "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nl(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "boolean"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oC(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "if ("

    const-string v4, " else "

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oT(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "@"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oY(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "import static "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oa(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "("

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oh(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " ^= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public om(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, " super "

    const-string v4, " & "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oy(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "import "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    const-string v0, "{"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    const-string v0, "}"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public pO(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "?"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pl(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " **= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pn(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " <=> "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pop()Lorg/codehaus/groovy/antlr/GroovySourceAST;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->VH:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/antlr/GroovySourceAST;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q7(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public qI(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "static "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public qP(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "package "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public qU(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " as "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public qp(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "continue "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rB(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public rN(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lgroovyjarjarantlr/BaseAST;->Hw()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " implements "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const-string v0, " "

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ro(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "*"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s0(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sE(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " <= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sG(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " - "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sh(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->FH()Lorg/codehaus/groovy/antlr/GroovySourceAST;

    move-result-object v0

    invoke-virtual {v0}, Lgroovyjarjarantlr/CommonAST;->getType()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v3, 0x0

    const-string v4, ","

    const-string v5, " "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "("

    const-string v4, ", "

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sv(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "?"

    const-string v4, ":"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sy(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " == "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tR(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "return "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tj(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "int"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tp(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " >>> "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tv(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, " catch ("

    const/4 v4, 0x0

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u7(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, "while ("

    const/4 v4, 0x0

    const-string v5, ") "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u9(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 3

    return-void
.end method

.method public uD(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "double"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v5(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "char"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public vJ(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "long"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w9(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " || "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wC(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " >>= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wc(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v0, "switch ("

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const-string v0, ") {"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->DW:I

    const-string v0, "}"

    invoke-virtual {p0, p1, p2, v0}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public we(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "..<"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x6(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lgroovyjarjarantlr/CommonAST;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public x9(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " = "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public xg(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "volatile "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public yO(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v3, 0x0

    const-string v4, "... "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ya(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "!"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ys(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " in "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zf(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, "--"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zg(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const/4 v4, 0x0

    const-string v3, " >>>= "

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zh(Lorg/codehaus/groovy/antlr/GroovySourceAST;I)V
    .registers 9

    const-string v3, " extends "

    const-string v4, " & "

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/codehaus/groovy/antlr/treewalker/SourcePrinter;->j6(Lorg/codehaus/groovy/antlr/GroovySourceAST;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
