.class public Lorg/codehaus/groovy/syntax/SyntaxException;
.super Lorg/codehaus/groovy/GroovyException;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:I

.field private Zo:Ljava/lang/String;

.field private final v5:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/GroovyException;-><init>(Ljava/lang/String;Z)V

    iput p2, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->DW:I

    iput p3, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->Hw:I

    iput p4, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->FH:I

    iput p5, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->v5:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @ line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->Hw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/syntax/SyntaxException;->Zo:Ljava/lang/String;

    return-void
.end method
